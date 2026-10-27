.class public Lcom/xiaopeng/devtools/utils/tftp/a;
.super Lorg/apache/commons/net/a;
.source "TFTP.java"


# instance fields
.field pw:[B

.field private px:[B

.field private py:Ljava/net/DatagramPacket;

.field private pz:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/net/a;-><init>()V

    .line 134
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/utils/tftp/a;->fu(I)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    .line 136
    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    .line 137
    return-void
.end method

.method public static final bJ(I)Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lcom/xiaopeng/devtools/utils/tftp/j;->pQ:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/xiaopeng/devtools/utils/tftp/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/devtools/utils/tftp/a;->a(Ljava/lang/String;Lcom/xiaopeng/devtools/utils/tftp/h;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->apV:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pz:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pw:[B

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/devtools/utils/tftp/h;->a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 231
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/xiaopeng/devtools/utils/tftp/h;)V
    .locals 0

    .line 317
    return-void
.end method

.method bK(I)I
    .locals 0

    .line 114
    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public final bL(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/utils/tftp/a;->bK(I)I

    move-result p1

    .line 151
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, p1, [B

    invoke-direct {v0, v1, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/utils/tftp/a;->getSoTimeout()I

    move-result p1

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/utils/tftp/a;->setSoTimeout(I)V

    .line 158
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->apV:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 164
    nop

    .line 166
    :goto_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/utils/tftp/a;->setSoTimeout(I)V

    .line 167
    return-void
.end method

.method public final bM(I)V
    .locals 3

    .line 243
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/utils/tftp/a;->bK(I)I

    move-result p1

    .line 245
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    .line 246
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    iget-object v2, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    .line 248
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pw:[B

    .line 249
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pw:[B

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pw:[B

    array-length v1, v1

    invoke-direct {p1, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pz:Ljava/net/DatagramPacket;

    .line 251
    return-void
.end method

.method public final eM()V
    .locals 1

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    .line 258
    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    .line 259
    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pw:[B

    .line 260
    iput-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->pz:Ljava/net/DatagramPacket;

    .line 261
    return-void
.end method

.method public final lI()Lcom/xiaopeng/devtools/utils/tftp/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->px:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->apV:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/tftp/a;->py:Ljava/net/DatagramPacket;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/tftp/h;->b(Ljava/net/DatagramPacket;)Lcom/xiaopeng/devtools/utils/tftp/h;

    move-result-object v0

    .line 205
    const-string v1, "<"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/utils/tftp/a;->a(Ljava/lang/String;Lcom/xiaopeng/devtools/utils/tftp/h;)V

    .line 206
    return-object v0
.end method
