.class Lcom/xiaopeng/devtools/system/c/c$b;
.super Ljava/lang/Thread;
.source "UDPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic BN:Lcom/xiaopeng/devtools/system/c/c;

.field private final ip:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/system/c/c;Ljava/lang/String;I)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->ip:Ljava/lang/String;

    .line 138
    iput p3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->port:I

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "UDPClient"

    const-string v1, "it is already stopped"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_0
    const-string v0, "UDPClient"

    const-string v1, "SocketThread start "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->b(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->b(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->ip:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->b(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/c/c;->c(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->port:I

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 162
    const-string v1, "UDPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "udp connect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/system/c/c;->kV()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/c/c;->kV()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/devtools/system/c/c$a;->jA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :cond_2
    nop

    .line 186
    const-string v1, "UDPClient"

    const-string v2, "SocketThread connect over "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/c/c;->kV()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/c/c$b;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->e(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/utils/b/a;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/utils/b/a;->getBuf(I)[B

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v1

    invoke-direct {v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {v2, v3}, Lcom/xiaopeng/devtools/system/c/c;->a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/c/c;->b(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramSocket;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 201
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/c/c;->f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->c(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 202
    const-string v1, "UDPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received packet from an unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    .line 203
    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "wanted address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->c(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/devtools/system/c/c$a;->jB()V

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/system/c/c;->T(Z)V

    .line 208
    return-void

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/c/c;->f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 211
    const-string v3, "UDPClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre data size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v5}, Lcom/xiaopeng/devtools/system/c/c;->f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value data size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    if-lez v2, :cond_5

    .line 217
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 218
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/devtools/system/c/c$a;->d([BI)V

    .line 221
    :cond_5
    const-string v1, "UDPClient"

    const-string v2, "SocketThread read listening"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    const-string v2, "UDPClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketThread read io exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/system/c/c;->T(Z)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/devtools/system/c/c$a;->jC()V

    .line 229
    :cond_6
    return-void

    .line 232
    :cond_7
    return-void

    .line 169
    :cond_8
    :try_start_2
    const-string v1, "UDPClient"

    const-string v2, "SocketThread connect fail"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/devtools/system/c/c$a;->jB()V

    .line 173
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/system/c/c;->T(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    return-void

    .line 177
    :catch_1
    move-exception v1

    .line 178
    const-string v2, "UDPClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketThread connect io exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/c/c;->d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/devtools/system/c/c$a;->jB()V

    .line 183
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/c/c$b;->BN:Lcom/xiaopeng/devtools/system/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/system/c/c;->T(Z)V

    .line 184
    return-void
.end method
