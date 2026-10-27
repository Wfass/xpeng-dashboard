.class public final Lcom/xiaopeng/devtools/utils/tftp/b;
.super Lcom/xiaopeng/devtools/utils/tftp/h;
.source "TFTPAckPacket.java"


# instance fields
.field pA:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
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

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;I)V

    .line 75
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/b;->getType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v3

    if-eq v0, v2, :cond_1

    aget-byte v0, p1, v3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/b;->getType()I

    move-result v0

    aget-byte v2, p1, v3

    if-ne v0, v2, :cond_3

    .line 87
    :cond_1
    :goto_0
    aget-byte v0, p1, v3

    if-ne v0, v1, :cond_2

    .line 88
    return-void

    .line 91
    :cond_2
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pA:I

    .line 92
    return-void

    .line 82
    :cond_3
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 2

    .line 107
    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 108
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->_type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 109
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pA:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 110
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pA:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pO:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 113
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pN:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 114
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 115
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 117
    return-object p1
.end method

.method public eN()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pA:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/devtools/utils/tftp/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/b;->pA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
