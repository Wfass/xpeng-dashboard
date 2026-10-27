.class public final Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
.source "TFTPAckPacket.java"


# instance fields
.field _blockNumber:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    .line 71
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 75
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 78
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->getType()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, v0, v4

    if-eq v1, v2, :cond_1

    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->getType()I

    move-result v1

    aget-byte v2, v0, v4

    if-ne v1, v2, :cond_3

    .line 87
    :cond_1
    :goto_0
    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_2

    .line 88
    return-void

    .line 91
    :cond_2
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    .line 92
    return-void

    .line 82
    :cond_3
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;

    const-string v2, "TFTP operator code does not match type."

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I

    .line 57
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 58
    iput p3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    .line 59
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 2
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 107
    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 108
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 109
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 110
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 113
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 114
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 115
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 117
    return-object p1
.end method

.method public getBlockNumber()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 137
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 138
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_type:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 139
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    const v2, 0xffff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 140
    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 142
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_port:I

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v1
.end method

.method public setBlockNumber(I)V
    .locals 0
    .param p1, "blockNumber"    # I

    .line 162
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->_blockNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
