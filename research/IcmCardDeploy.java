import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;

/** Narrow deployment helper for one backed-up Kanzi card resource. */
public final class IcmCardDeploy {
    private static final String DEVICE = "172.20.1.40";
    private static final String SOURCE = "172.20.1.45";
    private static final String ACTIVE = "/app/hmi/bin/card.kzb";
    private static final String ORIGINAL = "/data/icm-card-original.kzb";
    private static final String CANDIDATE = "/data/icm-card-candidate.kzb";
    private static final String CANDIDATE_V2 = "/data/icm-card-candidate-v2.kzb";
    private static final String CANDIDATE_V3 = "/data/icm-card-candidate-v3.kzb";
    private static final String LOCAL_ORIGINAL = "/data/local/tmp/icm-card-original.kzb";
    private static final String LOCAL_CANDIDATE = "/data/local/tmp/icm-card-candidate.kzb";
    private static final String LOCAL_CANDIDATE_V2 = "/data/local/tmp/icm-card-candidate-v2.kzb";
    private static final String LOCAL_CANDIDATE_V3 = "/data/local/tmp/icm-card-candidate-v3.kzb";
    private static final int BLOCK = 24576;
    private static final int WRITE_CHUNK = 7000;
    private static int session = (int) (System.currentTimeMillis() & 0xffff);

    public static void main(String[] args) throws Exception {
        if (args.length != 1) throw new IllegalArgumentException("operation required");
        switch (args[0]) {
            case "stage-original": stage(LOCAL_ORIGINAL, ORIGINAL); return;
            case "stage-candidate": stage(LOCAL_CANDIDATE, CANDIDATE); return;
            case "stage-candidate-v2": stage(LOCAL_CANDIDATE_V2, CANDIDATE_V2); return;
            case "stage-candidate-v3": stage(LOCAL_CANDIDATE_V3, CANDIDATE_V3); return;
            case "dump-active": dump(ACTIVE); return;
            case "dump-original": dump(ORIGINAL); return;
            case "dump-candidate": dump(CANDIDATE); return;
            case "dump-candidate-v2": dump(CANDIDATE_V2); return;
            case "dump-candidate-v3": dump(CANDIDATE_V3); return;
            case "status": System.out.print(rpc("grep ' / ' /proc/mounts; ps -ef | grep '[E]Cluster'")); return;
            case "diagnose": System.out.print(rpc("fuser -vm / 2>&1; ls -l /app/hmi/bin/card.kzb*; grep -i -E 'remount|ext4' /data/Log/log0/kernel.txt | tail -20")); return;
            case "logs": System.out.print(rpc("grep -i -E 'KZB|Kanzi|card|exception|error|failed|crash' /data/Log/log0/main.txt | tail -60")); return;
            case "writers": System.out.print(rpc("for p in /proc/[0-9]*; do for f in $p/fdinfo/*; do [ -r \"$f\" ] || continue; flags=$(awk '$1==\"flags:\" {print $2}' \"$f\"); case \"$flags\" in *1|*2|*3) fd=${f%/fdinfo/*}/fd/${f##*/}; target=$(readlink \"$fd\" 2>/dev/null); case \"$target\" in /app/*|/bin/*|/etc/*|/usr/*|/root/*|/lib/*) echo \"$p $fd $flags $target\";; esac;; esac; done; done")); return;
            case "remount-rw": System.out.print(rpc("mount -o remount,rw / && grep ' / ' /proc/mounts")); return;
            case "remount-ro": System.out.print(rpc("mount -o remount,ro /dev/mmcblk0p5 / 2>&1; echo MOUNT_RC:$?; grep ' / ' /proc/mounts")); return;
            case "remount-ro-n": System.out.print(rpc("mount -n -o remount,ro /dev/mmcblk0p5 / 2>&1; echo MOUNT_RC:$?; grep ' / ' /proc/mounts")); return;
            case "reboot": System.out.print(rpc("(sleep 2; sync; reboot) >/dev/null 2>&1 < /dev/null & echo REBOOT_QUEUED")); return;
            case "activate-candidate": System.out.print(rpc("cp " + CANDIDATE + " " + ACTIVE + ".new && chown 0:0 " + ACTIVE + ".new && chmod 644 " + ACTIVE + ".new && sync && mv -f " + ACTIVE + ".new " + ACTIVE + " && sync && echo ACTIVE_CANDIDATE")); return;
            case "activate-candidate-v2": System.out.print(rpc("cp " + CANDIDATE_V2 + " " + ACTIVE + ".new && chown 0:0 " + ACTIVE + ".new && chmod 644 " + ACTIVE + ".new && sync && mv -f " + ACTIVE + ".new " + ACTIVE + " && sync && echo ACTIVE_CANDIDATE_V2")); return;
            case "activate-candidate-v3": System.out.print(rpc("cp " + CANDIDATE_V3 + " " + ACTIVE + ".new && chown 0:0 " + ACTIVE + ".new && chmod 644 " + ACTIVE + ".new && sync && mv -f " + ACTIVE + ".new " + ACTIVE + " && sync && echo ACTIVE_CANDIDATE_V3")); return;
            case "restore-original": System.out.print(rpc("cp " + ORIGINAL + " " + ACTIVE + ".restore && chown 0:0 " + ACTIVE + ".restore && chmod 644 " + ACTIVE + ".restore && sync && mv -f " + ACTIVE + ".restore " + ACTIVE + " && sync && echo ACTIVE_ORIGINAL")); return;
            default: throw new IllegalArgumentException("operation is not allowlisted");
        }
    }

    private static void stage(String local, String remote) throws Exception {
        File file = new File(local);
        long size = file.length();
        if (!file.isFile() || size < 1024 || size > 8L * 1024 * 1024) throw new IOException("local input outside bounds");
        String encoded = Base64Encoder.encode(readAll(file));
        String part = remote + ".b64.part";
        String ready = rpc("if [ -e " + remote + " ] || [ -e " + part + " ]; then echo EXISTS; else : > " + part + " && echo READY; fi");
        if (!ready.contains("READY")) throw new IOException("remote destination already exists");
        for (int i = 0; i < encoded.length(); i += WRITE_CHUNK) {
            String chunk = encoded.substring(i, Math.min(i + WRITE_CHUNK, encoded.length()));
            String result = rpc("printf '%s' '" + chunk + "' >> " + part + " && echo CHUNK_OK");
            if (!result.contains("CHUNK_OK")) throw new IOException("remote chunk write failed");
        }
        String finish = rpc("base64 -d " + part + " > " + remote + ".part && test \"$(stat -c '%s' " + remote + ".part)\" = '" + size + "' && chmod 600 " + remote + ".part && mv " + remote + ".part " + remote + " && sync && rm -f " + part + " && echo STAGED_OK");
        if (!finish.contains("STAGED_OK")) throw new IOException("remote stage finalize failed");
        System.out.println("STAGED " + size + " bytes sha256=" + hex(MessageDigest.getInstance("SHA-256").digest(readAll(file))) + " path=" + remote);
    }

    private static void dump(String remote) throws Exception {
        String value = rpc("test -f " + remote + " && stat -c '%s' " + remote).trim();
        long size;
        try { size = Long.parseLong(value); } catch (NumberFormatException e) { throw new IOException("remote file unavailable"); }
        if (size < 1024 || size > 8L * 1024 * 1024) throw new IOException("remote file size outside bounds");
        System.out.println("SIZE=" + size); System.out.flush();
        int chunks = (int) ((size + BLOCK - 1) / BLOCK);
        for (int i = 0; i < chunks; i++) {
            String encoded = rpc("dd if=" + remote + " bs=" + BLOCK + " skip=" + i + " count=1 2>/dev/null | base64");
            System.out.print(encoded.replaceAll("\\s+", "")); System.out.flush();
        }
        if (!Long.toString(size).equals(rpc("stat -c '%s' " + remote).trim())) throw new IOException("remote file size changed during read");
        System.out.println("\nEND");
    }

    private static byte[] readAll(File file) throws IOException {
        try (FileInputStream in = new FileInputStream(file); ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[32768]; int n;
            while ((n = in.read(buffer)) >= 0) { if (n > 0) { out.write(buffer, 0, n); if (out.size() > 8 * 1024 * 1024) throw new IOException("input limit"); } }
            return out.toByteArray();
        }
    }
    private static String hex(byte[] bytes) {
        StringBuilder out = new StringBuilder(); for (byte b : bytes) out.append(String.format(java.util.Locale.ROOT, "%02x", b & 255)); return out.toString();
    }
    private static String rpc(String command) throws IOException {
        if (command.length() > 12000) throw new IOException("command bound");
        int id = (++session) & 65535;
        ByteArrayOutputStream payload = new ByteArrayOutputStream(), header = new ByteArrayOutputStream();
        header.write(8); varint(header, 0x7e710000L + id); field(payload, 1, header.toByteArray());
        field(payload, 2, "shell".getBytes(StandardCharsets.UTF_8)); field(payload, 2, command.getBytes(StandardCharsets.UTF_8));
        try (Socket socket = new Socket()) {
            socket.bind(new InetSocketAddress(SOURCE, 0)); socket.connect(new InetSocketAddress(DEVICE, 30510), 1500); socket.setSoTimeout(5000);
            DataOutputStream out = new DataOutputStream(socket.getOutputStream());
            out.writeShort(0x101); out.writeShort(0x211); out.writeInt(8 + payload.size()); out.writeShort(0x7e71); out.writeShort(id); out.write(new byte[] {1, 0, 0, 0}); payload.writeTo(out); out.flush();
            DataInputStream in = new DataInputStream(socket.getInputStream());
            int service = in.readUnsignedShort(), method = in.readUnsignedShort(), size = in.readInt(); int client = in.readUnsignedShort(), responseId = in.readUnsignedShort();
            int protocol = in.readUnsignedByte(), version = in.readUnsignedByte(), type = in.readUnsignedByte(), rc = in.readUnsignedByte();
            if (service != 0x101 || method != 0x211 || client != 0x7e71 || responseId != id || protocol != 1 || version != 0 || type != 0x80 || rc != 0 || size < 8 || size > 65528) throw new IOException("management response rejected");
            byte[] body = new byte[size - 8]; in.readFully(body); return output(body);
        }
    }
    private static String output(byte[] bytes) throws IOException {
        StringBuilder result = new StringBuilder(); int[] pos = {0};
        while (pos[0] < bytes.length) { long tag = varint(bytes, pos); int wire = (int) tag & 7; byte[] sub = skip(bytes, pos, wire);
            if ((tag >>> 3) == 2 && wire == 2) { int[] inner = {0}; while (inner[0] < sub.length) { long field = varint(sub, inner); int type = (int) field & 7; byte[] value = skip(sub, inner, type); if (type == 2) result.append(new String(value, StandardCharsets.UTF_8)); } }
        } return result.toString();
    }
    private static void field(OutputStream out, int number, byte[] value) throws IOException { varint(out, number * 8L + 2); varint(out, value.length); out.write(value); }
    private static void varint(OutputStream out, long value) throws IOException { while (value > 127) { out.write(((int) value & 127) | 128); value >>>= 7; } out.write((int) value); }
    private static long varint(byte[] bytes, int[] pos) throws IOException { long value = 0; for (int shift = 0; shift < 64; shift += 7) { if (pos[0] >= bytes.length) throw new EOFException(); int b = bytes[pos[0]++] & 255; value |= (long) (b & 127) << shift; if ((b & 128) == 0) return value; } throw new IOException("varint bound"); }
    private static byte[] skip(byte[] bytes, int[] pos, int wire) throws IOException { if (wire == 0) { varint(bytes, pos); return new byte[0]; } long length = wire == 2 ? varint(bytes, pos) : wire == 1 ? 8 : wire == 5 ? 4 : -1; if (length < 0 || length > bytes.length - pos[0]) throw new IOException("protobuf bound"); int start = pos[0]; pos[0] += (int) length; return Arrays.copyOfRange(bytes, start, pos[0]); }

    private static final class Base64Encoder {
        static String encode(byte[] bytes) { return java.util.Base64.getEncoder().encodeToString(bytes); }
    }
}
