.class public final Lcom/xiaopeng/devtools/utils/tftp/e;
.super Lcom/xiaopeng/devtools/utils/tftp/h;
.source "TFTPErrorPacket.java"


# instance fields
.field pH:I

.field pI:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;I)V

    .line 109
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/e;->getType()I

    move-result v1

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    if-ne v1, v3, :cond_2

    .line 116
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    .line 118
    if-lt p1, v2, :cond_1

    .line 122
    const/4 v1, 0x4

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v3, v0, v1

    if-eqz v3, :cond_0

    .line 126
    aget-byte v3, v0, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    .line 131
    return-void

    .line 119
    :cond_1
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "Bad error packet. No message."

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_2
    new-instance p1, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    .locals 1

    .line 88
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/devtools/utils/tftp/h;-><init>(ILjava/net/InetAddress;I)V

    .line 90
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    .line 91
    iput-object p4, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 150
    const/4 v1, 0x0

    aput-byte v1, p2, v1

    .line 151
    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->_type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p2, v3

    .line 152
    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p2, v3

    .line 153
    iget v2, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, p2, v3

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    add-int/2addr v0, v3

    aput-byte v1, p2, v0

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pO:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 160
    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pN:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 161
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 162
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 164
    return-object p1
.end method

.method public getError()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/devtools/utils/tftp/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/e;->pI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
