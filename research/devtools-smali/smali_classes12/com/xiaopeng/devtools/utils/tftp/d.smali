.class public final Lcom/xiaopeng/devtools/utils/tftp/d;
.super Lcom/xiaopeng/devtools/utils/tftp/h;
.source "TFTPDataPacket.java"


# instance fields
.field pA:I

.field pE:I

.field pF:I

.field pG:[B


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;I)V

    .line 112
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pF:I

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/d;->getType()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-ne v1, v3, :cond_1

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    .line 121
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    .line 123
    iget p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    .line 124
    iput v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    .line 126
    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 1

    .line 81
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;I)V

    .line 83
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    .line 84
    iput-object p4, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    .line 85
    iput p5, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pF:I

    .line 87
    const/16 p1, 0x2000

    if-le p6, p1, :cond_0

    .line 88
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    goto :goto_0

    .line 90
    :cond_0
    iput p6, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    .line 92
    :goto_0
    return-void
.end method


# virtual methods
.method a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    .line 141
    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 142
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->_type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 143
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 144
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    const/4 v1, 0x4

    if-eq p2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pF:I

    iget v3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pO:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 152
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pN:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 154
    iget p2, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 156
    return-object p1
.end method

.method public bN(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    .line 200
    return-void
.end method

.method public setData([BII)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pG:[B

    .line 211
    iput p2, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pF:I

    .line 212
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    .line 214
    const/16 p1, 0x2000

    if-le p3, p1, :cond_0

    .line 215
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    goto :goto_0

    .line 217
    :cond_0
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    .line 219
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/devtools/utils/tftp/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/d;->pE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
