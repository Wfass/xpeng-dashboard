.class public abstract Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
.source "TFTPRequestPacket.java"


# static fields
.field protected static final _modeBytes:[[B

.field static final _modeStrings:[Ljava/lang/String;


# instance fields
.field protected _filename:Ljava/lang/String;

.field protected _mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeBytes:[[B

    .line 66
    const-string v0, "netascii"

    const-string v1, "octet"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(IILjava/net/DatagramPacket;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "segmentSize"    # I
    .param p3, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 107
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;II)V

    .line 109
    iput p2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_segmentSize:I

    .line 111
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 113
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->getType()I

    move-result v1

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v1, v3, :cond_6

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    .line 120
    .local v3, "index":I
    invoke-virtual {p3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .line 122
    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v5, v0, v3

    if-eqz v5, :cond_0

    .line 123
    aget-byte v5, v0, v3

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 129
    if-ge v3, v4, :cond_5

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    add-int/2addr v3, v2

    .line 135
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v2, v0, v3

    if-eqz v2, :cond_1

    .line 136
    aget-byte v2, v0, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "modeString":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    array-length v4, v5

    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "mode":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 145
    sget-object v6, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    move v5, v3

    .line 147
    goto :goto_3

    .line 144
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 151
    :cond_3
    :goto_3
    iput v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    .line 153
    if-ge v3, v4, :cond_4

    .line 159
    return-void

    .line 154
    :cond_4
    new-instance v6, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized TFTP transfer mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v2    # "modeString":Ljava/lang/String;
    .end local v5    # "mode":I
    :cond_5
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v5, "Bad filename and mode format."

    invoke-direct {v2, v5}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "index":I
    .end local v4    # "length":I
    :cond_6
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v2, "TFTP operator code does not match type."

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/net/InetAddress;IIILjava/lang/String;I)V
    .locals 0
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "type"    # I
    .param p4, "segmentSize"    # I
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "mode"    # I

    .line 87
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;II)V

    .line 89
    iput-object p5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 90
    iput p6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    .line 91
    iput p4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_segmentSize:I

    .line 92
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 5
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    .local v0, "fileLength":I
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 180
    .local v1, "modeLength":I
    const/4 v2, 0x0

    aput-byte v2, p2, v2

    .line 181
    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, p2, v4

    .line 182
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, p2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 183
    add-int/lit8 v3, v0, 0x2

    aput-byte v2, p2, v3

    .line 184
    sget-object v3, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v3, v2, p2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 187
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 188
    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 189
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 190
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 192
    return-object p1
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    .local v0, "fileLength":I
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 214
    .local v1, "modeLength":I
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 215
    .local v2, "data":[B
    const/4 v3, 0x0

    aput-byte v3, v2, v3

    .line 216
    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 217
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 218
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    .line 219
    sget-object v4, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_mode:I

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x3

    invoke-static {v4, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    iget v6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPRequestPacket;->_port:I

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v3
.end method
