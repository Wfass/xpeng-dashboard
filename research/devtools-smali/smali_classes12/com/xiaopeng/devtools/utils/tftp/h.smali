.class public abstract Lcom/xiaopeng/devtools/utils/tftp/h;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# instance fields
.field _type:I

.field pM:I

.field pN:I

.field pO:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->_type:I

    .line 177
    iput-object p2, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pO:Ljava/net/InetAddress;

    .line 178
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pN:I

    .line 179
    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;II)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->_type:I

    .line 183
    iput-object p2, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pO:Ljava/net/InetAddress;

    .line 184
    iput p3, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pN:I

    .line 185
    iput p4, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pM:I

    .line 186
    return-void
.end method

.method public static final b(Ljava/net/DatagramPacket;)Lcom/xiaopeng/devtools/utils/tftp/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 131
    nop

    .line 133
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    .line 142
    const/4 v1, 0x1

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance p0, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/e;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/utils/tftp/e;-><init>(Ljava/net/DatagramPacket;)V

    .line 158
    goto :goto_0

    .line 154
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/utils/tftp/b;-><init>(Ljava/net/DatagramPacket;)V

    .line 155
    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/utils/tftp/d;-><init>(Ljava/net/DatagramPacket;)V

    .line 151
    goto :goto_0

    .line 147
    :pswitch_3
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/k;

    invoke-direct {v0, v2, p0}, Lcom/xiaopeng/devtools/utils/tftp/k;-><init>(ILjava/net/DatagramPacket;)V

    .line 148
    goto :goto_0

    .line 144
    :pswitch_4
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/i;

    invoke-direct {v0, v2, p0}, Lcom/xiaopeng/devtools/utils/tftp/i;-><init>(ILjava/net/DatagramPacket;)V

    .line 145
    nop

    .line 164
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance p0, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;

    const-string v0, "Bad packet. Datagram data length is too short."

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method abstract a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pO:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pN:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->_type:I

    return v0
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pO:Ljava/net/InetAddress;

    .line 257
    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pN:I

    .line 250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pO:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/utils/tftp/h;->pM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
