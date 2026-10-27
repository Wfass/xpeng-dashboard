"""Build an offline v3 song+lyrics candidate using the Navigation card scene.

This reuses the large MapBG node and rebinds NaviTexture to MusicTexture. It
never connects to or writes to a vehicle.
"""
from __future__ import annotations

import hashlib
import json
import pathlib
import struct


ROOT = pathlib.Path(__file__).resolve().parents[1]
SOURCE = ROOT / "research/icm-root/app/hmi/bin/card.kzb"
DIRECTORY = SOURCE.parent / "card-inspection/directory.json"
OUTPUT = ROOT / "patches/card.song-lyrics.v3.kzb"
REPORT = ROOT / "patches/song-lyrics-card-candidate-v3.json"

NAVIGATION = "/Prefabs/Card_Navigation"
TRIP = "/Prefabs/Card_Trip"
SELECTOR_NAMES = (
    "/Prefabs/List_Icon_5_Left",
    "/Prefabs/List_Icon_6_Left",
    "/Prefabs/List_Icon_Right",
)
OLD_LABEL = "里程".encode("utf-8")
NEW_LABEL = "歌词".encode("utf-8")  # same byte length; no surrounding shifts
OLD_ICON = b"kzb://card/Textures/Icon/ic_applist_trip"
NEW_ICON = b"kzb://card/Textures/Icon/ic_applist_media"
NAV_TEXTURE_PROPERTY = 118
MUSIC_TEXTURE_PROPERTY = 117


def parse_kzb(data: bytes):
    if data[:4] != b"KZBF":
        raise ValueError("Not a KZBF file")
    name_len = struct.unpack_from("<I", data, 8)[0]
    project = data[12 : 12 + name_len].decode("utf-8")
    pos = 12 + name_len
    name_count = struct.unpack_from("<I", data, pos)[0]
    pos += 4
    names = []
    for _ in range(name_count):
        end = data.index(0, pos)
        names.append(data[pos:end].decode("utf-8"))
        pos = end + 1
    entry_count = struct.unpack_from("<I", data, pos)[0]
    pos += 4
    entries = []
    for _ in range(entry_count):
        record_pos = pos
        name_id, meta, offset, length, flags, raw_size = struct.unpack_from(
            "<6I", data, pos
        )
        pos += 24
        if name_id >= len(names) or offset + length > len(data):
            raise ValueError("Invalid resource directory entry")
        entries.append(
            {
                "name": names[name_id],
                "name_id": name_id,
                "metaclass": meta,
                "offset": offset,
                "length": length,
                "flags": flags,
                "raw_size": raw_size,
                "record_pos": record_pos,
            }
        )
    if pos != min(entry["offset"] for entry in entries):
        raise ValueError("Unexpected bytes between directory and resource data")
    return project, names, entries, pos


def patch_navigation_prefab(blob: bytes):
    out = bytearray(blob)
    for offset, property_id, expected in (
        (0x0FA, 21, 660.0),
        (0x102, 80, 660.0),
    ):
        if struct.unpack_from("<I", blob, offset - 4)[0] != property_id:
            raise ValueError(f"Unexpected MapBG property ID at {offset:#x}")
        value = struct.unpack_from("<f", blob, offset)[0]
        if value != expected:
            raise ValueError(f"Expected MapBG dimension {expected}, found {value}")
    if struct.unpack_from("<I", blob, 0x138)[0] != 20:
        raise ValueError("Unexpected MapBG transformation property")
    transform = struct.unpack_from("<5f", blob, 0x13C)
    if transform != (1.0, 1.0, 0.0, 33.0, 64.0):
        raise ValueError(f"Unexpected MapBG geometry {transform}")

    old = struct.pack("<I", NAV_TEXTURE_PROPERTY)
    new = struct.pack("<I", MUSIC_TEXTURE_PROPERTY)
    if blob.count(old) != 4:
        raise ValueError("Expected four NaviTexture references in Navigation prefab")
    positions = []
    pos = 0
    while True:
        pos = blob.find(old, pos)
        if pos < 0:
            break
        positions.append(pos)
        out[pos : pos + 4] = new
        pos += 4
    if bytes(out).count(old) != 0 or bytes(out).count(new) != blob.count(new) + 4:
        raise ValueError("MusicTexture rebinding did not replace exactly four references")
    return bytes(out), positions


def patch_selector(blob: bytes):
    if blob.count(OLD_LABEL) != 1:
        raise ValueError("Expected exactly one Trip label in selector prefab")
    label_pos = blob.index(OLD_LABEL)
    if struct.unpack_from("<I", blob, label_pos - 4)[0] != len(OLD_LABEL):
        raise ValueError("Unexpected Trip label length prefix")
    # PropertyType Card.CardList.ListItem.Text has index 73 (0x49).
    if struct.unpack_from("<I", blob, label_pos - 8)[0] != 73:
        raise ValueError("Trip label is not in the expected list-item text field")

    out = bytearray(blob)
    out[label_pos : label_pos + len(OLD_LABEL)] = NEW_LABEL

    # The icon URL follows the label as Card.CardList.ListItem.Texture (index 68).
    texture_field = label_pos + len(OLD_LABEL)
    if struct.unpack_from("<I", blob, texture_field)[0] != 68:
        raise ValueError("Expected Trip icon immediately after its label")
    old_url_len = struct.unpack_from("<I", blob, texture_field + 4)[0]
    url_pos = texture_field + 8
    if blob[url_pos : url_pos + old_url_len] != OLD_ICON:
        raise ValueError("Unexpected Trip icon URL")
    out[texture_field + 4 : texture_field + 8] = struct.pack("<I", len(NEW_ICON))
    # Preserve the terminating NUL and following padding while allowing this
    # serialized string to grow by one byte.
    out[url_pos : url_pos + old_url_len] = NEW_ICON
    return bytes(out)


def sha256(data: bytes):
    return hashlib.sha256(data).hexdigest()


source = SOURCE.read_bytes()
directory = json.loads(DIRECTORY.read_text(encoding="utf-8"))["entries"]
project, names, entries, data_start = parse_kzb(source)
if len(entries) != len(directory):
    raise ValueError("Directory count differs from the previously inspected source")

by_name = {entry["name"]: entry for entry in entries}
if NAVIGATION not in by_name or TRIP not in by_name:
    raise ValueError("Expected Navigation and Trip prefabs were not found")
if by_name[NAVIGATION]["flags"] != 0 or by_name[TRIP]["flags"] != 0:
    raise ValueError("Expected uncompressed Navigation and Trip prefabs")

payloads = {
    entry["name"]: source[entry["offset"] : entry["offset"] + entry["length"]]
    for entry in entries
}
navigation_blob, texture_references = patch_navigation_prefab(payloads[NAVIGATION])
payloads[TRIP] = navigation_blob
for selector_name in SELECTOR_NAMES:
    if selector_name not in payloads:
        raise ValueError(f"Missing selector prefab {selector_name}")
    payloads[selector_name] = patch_selector(payloads[selector_name])

# Preserve the project and resource dictionaries. Repack only resource payloads,
# aligning each directory entry to four bytes and updating its offset and size.
packed = bytearray(source[:data_start])
modified_names = {TRIP, *SELECTOR_NAMES}
for entry in entries:
    while len(packed) % 4:
        packed.append(0)
    blob = payloads[entry["name"]]
    new_offset = len(packed)
    packed.extend(blob)
    struct.pack_into("<I", packed, entry["record_pos"] + 8, new_offset)
    if entry["name"] in modified_names:
        struct.pack_into("<I", packed, entry["record_pos"] + 12, len(blob))
        struct.pack_into("<I", packed, entry["record_pos"] + 20, len(blob))

candidate = bytes(packed)
_, _, check_entries, _ = parse_kzb(candidate)
check_by_name = {entry["name"]: entry for entry in check_entries}
if len(check_entries) != len(entries):
    raise ValueError("Candidate changed the resource count")
for entry in entries:
    name = entry["name"]
    rebuilt = candidate[
        check_by_name[name]["offset"] : check_by_name[name]["offset"]
        + check_by_name[name]["length"]
    ]
    if name not in modified_names and rebuilt != payloads[name]:
        raise ValueError(f"Unmodified resource changed: {name}")
if candidate[check_by_name[TRIP]["offset"] : check_by_name[TRIP]["offset"] + check_by_name[TRIP]["length"]] != navigation_blob:
    raise ValueError("Trip slot does not contain the patched Navigation prefab")
for selector_name in SELECTOR_NAMES:
    blob = candidate[
        check_by_name[selector_name]["offset"] : check_by_name[selector_name]["offset"]
        + check_by_name[selector_name]["length"]
    ]
    if NEW_LABEL not in blob or NEW_ICON not in blob:
        raise ValueError(f"Selector label/icon patch missing: {selector_name}")

OUTPUT.write_bytes(candidate)
report = {
    "status": "V3 CANDIDATE; STATICALLY VALIDATED, PENDING LIVE VISUAL CHECK",
    "source": str(SOURCE),
    "source_sha256": sha256(source),
    "output": str(OUTPUT),
    "output_sha256": sha256(candidate),
    "strategy": "Reuse the existing Trip card index (4) and replace its prefab with the Navigation card scene; keep the original Navigation card unchanged. Reuse MapBG at 660x660 and rebind NaviTexture references to MusicTexture.",
    "changes": {
        "trip_slot_prefab": "Card_Navigation with MusicTexture binding",
        "map_bg": {"width": 660, "height": 660, "translation": [33, 64]},
        "texture_binding": {
            "from_property_index": NAV_TEXTURE_PROPERTY,
            "to_property_index": MUSIC_TEXTURE_PROPERTY,
            "replaced_prefab_offsets": texture_references,
        },
        "selector_label": {"from": "里程", "to": "歌词"},
        "selector_icon": {"from": OLD_ICON.decode(), "to": NEW_ICON.decode()},
        "selector_prefabs": list(SELECTOR_NAMES),
    },
    "static_validation": "KZBF header and 446-entry directory parse; all non-target resource payloads are byte-identical; Trip slot points to the patched Navigation prefab; its four NaviTexture references now use MusicTexture; all selector resources contain the new label and media icon URL.",
    "unvalidated": [
        "Kanzi runtime loading of the repacked prefab",
        "whether Navigation-only Guidance/LaneIcon elements remain visible",
        "physical instrument rendering and final spacing",
        "live media image update behavior after rebuilding the square lyrics renderer",
    ],
}
REPORT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(f"Wrote offline candidate: {OUTPUT}")
print(f"SHA256: {report['output_sha256']}")
print("Static validation passed. Not deployed.")
