.class Lcom/xiaopeng/devtools/model/c/a/d/c$1;
.super Ljava/lang/Object;
.source "UDPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tx:Lcom/xiaopeng/devtools/model/c/a/d/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 89
    move-object/from16 v1, p0

    :cond_0
    const-string v0, "UDPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure counter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Failure reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    .line 90
    invoke-static {v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->b(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 95
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    new-instance v7, Ljava/net/DatagramSocket;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    invoke-static {v6, v7}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 96
    iget-object v6, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v6}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 97
    iget-object v6, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v6}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v6

    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v8, 0x74fc

    invoke-direct {v7, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_13

    .line 109
    nop

    .line 112
    const/4 v6, 0x2

    :try_start_1
    const-string v7, "127.0.0.1"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_11

    .line 125
    nop

    .line 127
    new-instance v14, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gE()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v13, 0x74fa

    move-object v8, v14

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 128
    new-instance v15, Ljava/net/DatagramPacket;

    invoke-direct {v15, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 130
    :try_start_2
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/16 v8, 0x1f4

    invoke-virtual {v0, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_f

    .line 143
    nop

    .line 145
    nop

    .line 146
    nop

    .line 149
    const/4 v12, 0x0

    move v8, v12

    move v9, v8

    :goto_0
    if-nez v8, :cond_2

    const/16 v10, 0x258

    if-ge v9, v10, :cond_2

    .line 151
    :try_start_3
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 155
    nop

    .line 157
    :try_start_4
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 158
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string v0, "UDPClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received packet from an unknown source: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    goto :goto_0

    .line 162
    :cond_1
    nop

    .line 169
    nop

    .line 149
    move v8, v5

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    add-int/lit8 v9, v9, 0x1

    .line 165
    const-string v0, "UDPClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time out,"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v10, v9

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " more tries..."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    goto :goto_0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    nop

    .line 172
    :cond_2
    :goto_1
    if-eqz v8, :cond_10

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-direct {v8, v9, v12, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v8, "UDPClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v15, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 177
    nop

    .line 192
    nop

    .line 195
    const-string v0, "UDPClient"

    const-string v8, "Getting into main handler loop of udp client socket"

    invoke-static {v0, v8}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :goto_2
    move v13, v12

    :goto_3
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->e(Lcom/xiaopeng/devtools/model/c/a/d/c;)Z

    move-result v0

    const/4 v11, 0x5

    if-eqz v0, :cond_f

    .line 198
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->f(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    move-result v0

    const/4 v10, 0x7

    const/4 v9, -0x1

    if-nez v0, :cond_3

    .line 199
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gF()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gF()[B

    move-result-object v8

    array-length v8, v8

    const/16 v18, 0x74fa

    move/from16 v19, v8

    move-object v8, v0

    move v3, v9

    move-object/from16 v9, v16

    move v4, v10

    move/from16 v10, v17

    move/from16 v11, v19

    move v14, v12

    move-object v12, v7

    move/from16 v20, v13

    move/from16 v13, v18

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 201
    :try_start_5
    iget-object v8, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v8}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    nop

    .line 208
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->b(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    goto :goto_5

    .line 202
    :catch_3
    move-exception v0

    .line 203
    const-string v0, "UDPClient"

    const-string v2, "Failed to send ADR close command"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 205
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v4}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 206
    nop

    .line 328
    :goto_4
    const/4 v13, 0x5

    goto/16 :goto_7

    .line 209
    :cond_3
    move v3, v9

    move v4, v10

    move v14, v12

    move/from16 v20, v13

    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->f(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    move-result v0

    if-ne v5, v0, :cond_4

    .line 210
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gG()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gG()[B

    move-result-object v8

    array-length v11, v8

    const/16 v13, 0x74fa

    move-object v8, v0

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 212
    :try_start_6
    iget-object v8, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v8}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 218
    nop

    .line 219
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->b(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    goto :goto_5

    .line 213
    :catch_4
    move-exception v0

    .line 214
    const-string v0, "UDPClient"

    const-string v2, "Failed to send ADR open command"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 216
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 217
    goto :goto_4

    .line 222
    :cond_4
    :goto_5
    invoke-virtual {v15, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 224
    :try_start_7
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 237
    nop

    .line 239
    nop

    .line 240
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 241
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-direct {v3, v8, v14, v9}, Ljava/lang/String;-><init>([BII)V

    .line 244
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    if-ne v6, v8, :cond_5

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gH()[B

    move-result-object v8

    aget-byte v8, v8, v14

    aget-byte v9, v0, v14

    if-ne v8, v9, :cond_5

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gH()[B

    move-result-object v8

    aget-byte v8, v8, v5

    aget-byte v0, v0, v5

    if-ne v8, v0, :cond_5

    .line 246
    :try_start_8
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gH()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v13, 0x74fa

    move-object v8, v0

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 247
    iget-object v3, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 248
    nop

    .line 196
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 249
    :catch_5
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    goto/16 :goto_4

    .line 254
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 255
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v3, 0x3

    new-array v8, v3, [F

    .line 263
    if-eqz v0, :cond_d

    array-length v9, v0

    if-lez v9, :cond_d

    .line 265
    :try_start_9
    aget-object v9, v0, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 269
    nop

    .line 274
    if-eq v9, v5, :cond_a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_8

    const/16 v8, 0x3e8

    if-eq v9, v8, :cond_6

    goto/16 :goto_6

    .line 309
    :cond_6
    array-length v8, v0

    if-le v8, v5, :cond_d

    .line 311
    :try_start_a
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    and-int/lit8 v8, v0, 0x1

    .line 313
    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    .line 314
    iget-object v4, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v4}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 315
    iget-object v4, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v4}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Lcom/xiaopeng/devtools/model/c/a/d/c$a;->o(II)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6

    .line 320
    :cond_7
    goto/16 :goto_6

    .line 317
    :catch_6
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 319
    goto/16 :goto_6

    .line 292
    :cond_8
    array-length v4, v0

    const/4 v13, 0x5

    if-le v4, v13, :cond_d

    .line 294
    :try_start_b
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v14

    .line 295
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v5

    .line 296
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v6

    .line 297
    const/4 v4, 0x4

    aget-object v9, v0, v4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 298
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 299
    iget-object v4, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v4}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 300
    iget-object v4, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v4}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v4

    invoke-interface {v4, v8, v9, v10, v0}, Lcom/xiaopeng/devtools/model/c/a/d/c$a;->a([FJF)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    .line 305
    :cond_9
    goto :goto_6

    .line 302
    :catch_7
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 304
    goto :goto_6

    .line 276
    :cond_a
    array-length v4, v0

    const/4 v9, 0x4

    if-le v4, v9, :cond_d

    .line 278
    :try_start_c
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v14

    .line 279
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v5

    .line 280
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v8, v6

    .line 281
    const/4 v4, 0x4

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 282
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 283
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->g(Lcom/xiaopeng/devtools/model/c/a/d/c;)Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    move-result-object v0

    invoke-interface {v0, v8, v9, v10}, Lcom/xiaopeng/devtools/model/c/a/d/c$a;->a([FJ)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8

    .line 288
    :cond_b
    goto :goto_6

    .line 285
    :catch_8
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 287
    goto :goto_6

    .line 266
    :catch_9
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 268
    goto :goto_6

    .line 325
    :cond_c
    const/4 v3, 0x3

    .line 196
    :cond_d
    :goto_6
    move v12, v14

    goto/16 :goto_2

    .line 234
    :catch_a
    move-exception v0

    const/4 v13, 0x5

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    goto :goto_7

    .line 225
    :catch_b
    move-exception v0

    const/4 v3, 0x3

    const/4 v13, 0x5

    .line 226
    const-string v0, "UDPClient"

    const-string v4, "Time out during receiving from the UDP server"

    invoke-static {v0, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    move/from16 v12, v20

    add-int/lit8 v0, v12, 0x1

    const/16 v4, 0xa

    if-ge v12, v4, :cond_e

    .line 228
    const-string v4, "UDPClient"

    const-string v8, "try again"

    invoke-static {v4, v8}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    nop

    .line 196
    move v13, v0

    move v12, v14

    goto/16 :goto_3

    .line 231
    :cond_e
    const-string v0, "UDPClient"

    const-string v2, "reach to max try times, go out of main handler"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    goto :goto_7

    .line 328
    :cond_f
    move v13, v11

    :goto_7
    :try_start_d
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gI()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v2, 0x74fa

    move-object v8, v0

    move-object v12, v7

    move v3, v13

    move v13, v2

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 329
    iget-object v2, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 342
    nop

    .line 343
    const-string v0, "UDPClient"

    const-string v2, "Re-connect to the GPS HAL\'s UDP server"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 345
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 346
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    goto/16 :goto_d

    .line 330
    :catch_c
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    const-string v0, "UDPClient"

    const-string v2, "Send STOP_COMMAND failed, try again"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    const-wide/16 v2, 0x1388

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_d

    .line 337
    goto :goto_8

    .line 335
    :catch_d
    move-exception v0

    .line 336
    const-string v2, "UDPClient"

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :goto_8
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 339
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 340
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 341
    goto/16 :goto_d

    .line 179
    :cond_10
    const-string v0, "UDPClient"

    const-string v2, "Server not response, try again"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-wide/16 v2, 0x1388

    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_e

    .line 184
    goto :goto_9

    .line 182
    :catch_e
    move-exception v0

    .line 183
    const-string v2, "UDPClient"

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :goto_9
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 186
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 187
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 188
    goto/16 :goto_d

    .line 131
    :catch_f
    move-exception v0

    const/4 v3, 0x3

    .line 132
    const-string v2, "UDPClient"

    const-string v4, "Can not setSoTimeout"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 135
    const-wide/16 v4, 0x1388

    :try_start_10
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_10

    .line 138
    goto :goto_a

    .line 136
    :catch_10
    move-exception v0

    .line 137
    const-string v2, "UDPClient"

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :goto_a
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 140
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 141
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 142
    goto :goto_d

    .line 113
    :catch_11
    move-exception v0

    .line 114
    const-string v2, "UDPClient"

    const-string v3, "Can not getByName 127.0.0.1"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 117
    const-wide/16 v2, 0x1388

    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_12

    .line 120
    goto :goto_b

    .line 118
    :catch_12
    move-exception v0

    .line 119
    const-string v2, "UDPClient"

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :goto_b
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->c(Lcom/xiaopeng/devtools/model/c/a/d/c;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 122
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 123
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v6}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 124
    goto :goto_d

    .line 98
    :catch_13
    move-exception v0

    .line 99
    const-string v2, "UDPClient"

    const-string v3, "Can not create udp socket with port: 29948"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 102
    const-wide/16 v2, 0x1388

    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_14

    .line 105
    goto :goto_c

    .line 103
    :catch_14
    move-exception v0

    .line 104
    const-string v2, "UDPClient"

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :goto_c
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->d(Lcom/xiaopeng/devtools/model/c/a/d/c;)I

    .line 107
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0, v5}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c;I)I

    .line 108
    nop

    .line 347
    :goto_d
    iget-object v0, v1, Lcom/xiaopeng/devtools/model/c/a/d/c$1;->tx:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->e(Lcom/xiaopeng/devtools/model/c/a/d/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "UDPClient"

    const-string v1, "Exit the mSocketHandlerRunnable thread, error occurred."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    return-void
.end method
