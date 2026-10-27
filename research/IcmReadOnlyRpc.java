import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Allowlisted, read-only reader for the instrument's active Kanzi card resource. */
public final class IcmReadOnlyRpc {
    private static final String DEVICE = "172.20.1.40";
    private static final String SOURCE = "172.20.1.45";
    private static final String FILE = "/app/hmi/bin/card.kzb";
    private static final int BLOCK = 24576;
    private static int session = (int) (System.currentTimeMillis() & 0xffff);

    public static void main(String[] args) throws Exception {
        if (args.length != 1 || !("dump".equals(args[0]) || "probe".equals(args[0]) || "inspect".equals(args[0]) || "state".equals(args[0]) || "runtime".equals(args[0])))
            throw new IllegalArgumentException("only fixed read-only inspect, state, runtime, probe, and dump operations are available");
        if ("inspect".equals(args[0])) {
            System.out.print(rpc("cat /proc/cmdline; readlink /dev/root; cat /proc/mounts; stat -f -c 'FS=%T FREE=%a BLOCK=%S' " + FILE + "; ls -l " + FILE));
            return;
        }
        if ("state".equals(args[0])) { System.out.print(rpc("ps -ef")); return; }
        if ("runtime".equals(args[0])) {
            System.out.print(rpc("cat /proc/1154/status; readlink /proc/1154/exe; readlink /proc/1154/cwd; tr '\\000' '\\n' < /proc/1154/environ | grep -E '^(HOME|PATH|LD_LIBRARY_PATH|PWD|DISPLAY|USER|SHELL)='; netstat -ltnp"));
            return;
        }
        String metadata = rpc("test -f " + FILE + " && stat -c '%s' " + FILE);
        if ("probe".equals(args[0])) { System.out.print(metadata); return; }
        Matcher matcher = Pattern.compile("(?m)^([0-9]+)\\s*$").matcher(metadata.trim());
        if (!matcher.find()) throw new IOException("active card metadata unavailable");
        long size = Long.parseLong(matcher.group(1));
        if (size < 1024 || size > 8L * 1024 * 1024) throw new IOException("active card size outside read bound");

        System.out.println("SIZE=" + size);
        System.out.flush();
        int chunks = (int) ((size + BLOCK - 1) / BLOCK);
        for (int i = 0; i < chunks; i++) {
            String encoded = rpc("dd if=" + FILE + " bs=" + BLOCK + " skip=" + i + " count=1 2>/dev/null | base64");
            System.out.print(encoded.replaceAll("\\s+", ""));
            System.out.flush();
        }
        if (!Long.toString(size).equals(rpc("stat -c '%s' " + FILE).trim()))
            throw new IOException("active card size changed during read");
        System.out.println("\nEND");
    }

    private static String rpc(String command) throws IOException {
        if (command.length() > 300) throw new IOException("command bound");
        int id = (++session) & 65535;
        ByteArrayOutputStream payload = new ByteArrayOutputStream();
        ByteArrayOutputStream header = new ByteArrayOutputStream();
        header.write(8);
        varint(header, 0x7e710000L + id);
        field(payload, 1, header.toByteArray());
        field(payload, 2, "shell".getBytes(StandardCharsets.UTF_8));
        field(payload, 2, command.getBytes(StandardCharsets.UTF_8));
        try (Socket socket = new Socket()) {
            socket.bind(new InetSocketAddress(SOURCE, 0));
            socket.connect(new InetSocketAddress(DEVICE, 30510), 1500);
            socket.setSoTimeout(5000);
            DataOutputStream out = new DataOutputStream(socket.getOutputStream());
            out.writeShort(0x101); out.writeShort(0x211); out.writeInt(8 + payload.size());
            out.writeShort(0x7e71); out.writeShort(id); out.write(new byte[] {1, 0, 0, 0});
            payload.writeTo(out); out.flush();
            DataInputStream in = new DataInputStream(socket.getInputStream());
            int service = in.readUnsignedShort(), method = in.readUnsignedShort(), size = in.readInt();
            int client = in.readUnsignedShort(), responseId = in.readUnsignedShort();
            int protocol = in.readUnsignedByte(), version = in.readUnsignedByte();
            int type = in.readUnsignedByte(), rc = in.readUnsignedByte();
            if (service != 0x101 || method != 0x211 || client != 0x7e71 || responseId != id ||
                    protocol != 1 || version != 0 || type != 0x80 || rc != 0 || size < 8 || size > 65528) {
                throw new IOException("management response rejected");
            }
            byte[] body = new byte[size - 8];
            in.readFully(body);
            return extractOutput(body);
        }
    }

    private static String extractOutput(byte[] bytes) throws IOException {
        StringBuilder result = new StringBuilder();
        int[] pos = {0};
        while (pos[0] < bytes.length) {
            long tag = varint(bytes, pos);
            int wire = (int) tag & 7;
            byte[] value = skip(bytes, pos, wire);
            if ((tag >>> 3) == 2 && wire == 2) {
                int[] inner = {0};
                while (inner[0] < value.length) {
                    long field = varint(value, inner);
                    int type = (int) field & 7;
                    byte[] item = skip(value, inner, type);
                    if (type == 2) result.append(new String(item, StandardCharsets.UTF_8));
                }
            }
        }
        return result.toString();
    }

    private static void field(OutputStream out, int number, byte[] value) throws IOException {
        varint(out, number * 8L + 2); varint(out, value.length); out.write(value);
    }
    private static void varint(OutputStream out, long value) throws IOException {
        while (value > 127) { out.write(((int) value & 127) | 128); value >>>= 7; }
        out.write((int) value);
    }
    private static long varint(byte[] bytes, int[] pos) throws IOException {
        long value = 0;
        for (int shift = 0; shift < 64; shift += 7) {
            if (pos[0] >= bytes.length) throw new EOFException();
            int b = bytes[pos[0]++] & 255;
            value |= (long) (b & 127) << shift;
            if ((b & 128) == 0) return value;
        }
        throw new IOException("varint bound");
    }
    private static byte[] skip(byte[] bytes, int[] pos, int wire) throws IOException {
        if (wire == 0) { varint(bytes, pos); return new byte[0]; }
        long length = wire == 2 ? varint(bytes, pos) : wire == 1 ? 8 : wire == 5 ? 4 : -1;
        if (length < 0 || length > bytes.length - pos[0]) throw new IOException("protobuf bound");
        int start = pos[0]; pos[0] += (int) length;
        return Arrays.copyOfRange(bytes, start, pos[0]);
    }
}
