"""Produce an OFFLINE, UNVALIDATED layout candidate; never connects to a vehicle."""
from pathlib import Path
import hashlib,struct,json
root=Path(__file__).resolve().parents[1]
source=root/'research/icm-root/app/hmi/bin/card.kzb'
data=source.read_bytes();directory=json.loads((source.parent/'card-inspection/directory.json').read_text())['entries']
entry=next(e for e in directory if e['name']=='/Prefabs/Card_Music')
assert entry['flags']==0 and entry['length']==4149
output=bytearray(data);changes=[]
# Confirmed Height/Width property pairs. Position, clipping and mask behavior remain unvalidated.
for offset,prop,label in [(0x22b,21,'image_A.height'),(0x23b,80,'image_A.width'),(0x3d4,21,'image_B.height'),(0x3dc,80,'image_B.width')]:
 absolute=entry['offset']+offset
 assert struct.unpack_from('<I',data,absolute-4)[0]==prop
 assert struct.unpack_from('<f',data,absolute)[0]==240.0
 struct.pack_into('<f',output,absolute,600.0)
 changes.append(dict(field=label,offset=absolute,before=240,after=600))
for e in directory:
 if e['name']!='/Prefabs/Card_Music':
  start,end=e['offset'],e['offset']+e['length'];assert data[start:end]==output[start:end],e['name']
assert len(data)==len(output)
(root/'patches/card.music600.UNVALIDATED.kzb').write_bytes(output)
(root/'patches/card.original.kzb').write_bytes(data)
report=dict(status='OFFLINE CANDIDATE ONLY; NOT SAFE TO DEPLOY WITHOUT LAYOUT AND RECOVERY VALIDATION',source_sha256=hashlib.sha256(data).hexdigest(),output_sha256=hashlib.sha256(output).hexdigest(),changes=changes,validated='All non-music resource payloads byte-identical; file size and directory unchanged',unvalidated=['node hierarchy and centering','mask/clipping geometry','overlap with song and artist labels','physical instrument rendering','live resource replacement and rollback path'])
(root/'patches/music-layout-candidate.json').write_text(json.dumps(report,indent=2))
print('Offline candidate written. All 445 non-music resource payloads unchanged. Not deployed.')
