.class public abstract Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;
.source "TFTPOptionsRequestPacket.java"


# static fields
.field private static final _blockSizeBytes:[B

.field private static final _fileSizeBytes:[B


# instance fields
.field protected _fileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_blockSizeBytes:[B

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSizeBytes:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x62t
        0x6ct
        0x6bt
        0x73t
        0x69t
        0x7at
        0x65t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x73t
        0x69t
        0x7at
        0x65t
    .end array-data
.end method

.method constructor <init>(IILjava/net/DatagramPacket;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "segmentSize"    # I
    .param p3, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;-><init>(IILjava/net/DatagramPacket;)V

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;IIILjava/lang/String;JI)V
    .locals 7
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "type"    # I
    .param p4, "segmentSize"    # I
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "fileSize"    # J
    .param p8, "mode"    # I

    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;-><init>(Ljava/net/InetAddress;IIILjava/lang/String;I)V

    .line 41
    iput-wide p6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSize:J

    .line 42
    return-void
.end method

.method private createOptionsData()[B
    .locals 12

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 68
    .local v0, "filenameLength":I
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 70
    .local v1, "modeLength":I
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_blockSizeBytes:[B

    array-length v2, v2

    .line 73
    .local v2, "blockSizeNameLength":I
    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_segmentSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "blockSizeValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 77
    .local v4, "blkSizeLength":I
    sget-object v5, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSizeBytes:[B

    array-length v5, v5

    .line 78
    .local v5, "fileSizeNameLength":I
    iget-wide v6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    .line 80
    .local v6, "fileSizeLength":I
    const/4 v7, 0x2

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    .line 83
    .local v7, "capacity":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 84
    .local v8, "bytebuffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    iget v10, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_type:I

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v10, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    sget-object v10, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_modeBytes:[[B

    iget v11, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_mode:I

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    sget-object v10, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_blockSizeBytes:[B

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    sget-object v10, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSizeBytes:[B

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    iget-wide v10, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_fileSize:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 3
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->createOptionsData()[B

    move-result-object v0

    .line 54
    .local v0, "optionsData":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 57
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 58
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 59
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 61
    return-object p1
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 120
    .local v0, "fileLength":I
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 122
    .local v1, "modeLength":I
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 123
    .local v2, "data":[B
    const/4 v3, 0x0

    aput-byte v3, v2, v3

    .line 124
    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 125
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    .line 127
    sget-object v4, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_modeBytes:[[B

    iget v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_mode:I

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x3

    invoke-static {v4, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_address:Ljava/net/InetAddress;

    iget v6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsRequestPacket;->_port:I

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v3
.end method
