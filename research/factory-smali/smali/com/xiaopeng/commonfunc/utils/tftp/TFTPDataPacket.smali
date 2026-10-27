.class public final Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
.source "TFTPDataPacket.java"


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x2000

.field public static final MIN_DATA_LENGTH:I


# instance fields
.field _blockNumber:I

.field _data:[B

.field _length:I

.field _offset:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 112
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->getType()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-ne v1, v3, :cond_1

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    .line 121
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    .line 123
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    .line 124
    iput v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    .line 126
    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v1, "TFTP operator code does not match type."

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .locals 7
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I
    .param p4, "data"    # [B

    .line 96
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I
    .param p4, "data"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I

    .line 81
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 83
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    .line 84
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    .line 85
    iput p5, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    .line 87
    const/16 v0, 0x2000

    if-le p6, v0, :cond_0

    .line 88
    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    goto :goto_0

    .line 90
    :cond_0
    iput p6, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    .line 92
    :goto_0
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 141
    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 142
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 143
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 144
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    const/4 v1, 0x4

    if-eq p2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 152
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 154
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 156
    return-object p1
.end method

.method public getBlockNumber()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    return v0
.end method

.method public getDataOffset()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    .line 175
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 176
    .local v0, "data":[B
    const/4 v2, 0x0

    aput-byte v2, v0, v2

    .line 177
    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 178
    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 179
    iget v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 181
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 183
    new-instance v2, Ljava/net/DatagramPacket;

    iget v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_port:I

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method

.method public setBlockNumber(I)V
    .locals 0
    .param p1, "blockNumber"    # I

    .line 199
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    .line 200
    return-void
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_data:[B

    .line 211
    iput p2, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_offset:I

    .line 212
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    .line 214
    const/16 v0, 0x2000

    if-le p3, v0, :cond_0

    .line 215
    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    goto :goto_0

    .line 217
    :cond_0
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    .line 219
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_blockNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
