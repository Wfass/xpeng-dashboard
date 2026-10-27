.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;
.super Ljava/lang/Object;
.source "UDPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .line 78
    move-object/from16 v1, p0

    :cond_0
    const-string v0, "UDPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure counter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Failure reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 79
    invoke-static {v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/16 v2, 0x400

    new-array v0, v2, [B

    move-object v3, v0

    .line 84
    .local v3, "buf":[B
    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    new-instance v7, Ljava/net/DatagramSocket;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    invoke-static {v0, v7}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$202(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 85
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 86
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v8, 0x74fc

    invoke-direct {v7, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_12

    .line 98
    nop

    .line 101
    :try_start_1
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_10

    move-object v14, v0

    .line 114
    .local v14, "mAddress":Ljava/net/InetAddress;
    nop

    .line 113
    nop

    .line 116
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$300()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v13, 0x74fa

    move-object v8, v0

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 117
    .local v8, "mSendPacket":Ljava/net/DatagramPacket;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v15, v0

    .line 119
    .local v15, "mReceivedPacket":Ljava/net/DatagramPacket;
    :try_start_2
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/16 v9, 0x1f4

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_e

    .line 132
    nop

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "tries":I
    const/4 v12, 0x0

    move v9, v0

    move v0, v12

    .local v0, "receivedResponse":Z
    .local v9, "tries":I
    :goto_0
    move/from16 v16, v0

    .line 138
    .end local v0    # "receivedResponse":Z
    .local v16, "receivedResponse":Z
    if-nez v16, :cond_2

    const/16 v10, 0x258

    if-ge v9, v10, :cond_2

    .line 140
    :try_start_3
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    nop

    .line 146
    :try_start_4
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 147
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
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

    invoke-static {v0, v11}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 149
    goto :goto_1

    .line 151
    :cond_1
    const/4 v0, 0x1

    .line 158
    .end local v16    # "receivedResponse":Z
    .restart local v0    # "receivedResponse":Z
    goto :goto_0

    .line 155
    .end local v0    # "receivedResponse":Z
    .restart local v16    # "receivedResponse":Z
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    goto :goto_2

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v9, v9, 0x1

    .line 154
    const-string v11, "UDPClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time out,"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v10, v9

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " more tries..."

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    nop

    .line 135
    .end local v16    # "receivedResponse":Z
    .local v0, "receivedResponse":Z
    :goto_1
    move/from16 v0, v16

    goto :goto_0

    .line 141
    .end local v0    # "receivedResponse":Z
    .restart local v16    # "receivedResponse":Z
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    nop

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v16, :cond_b

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v10

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-direct {v5, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "str_receive":Ljava/lang/String;
    const-string v5, "UDPClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v15, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 166
    .end local v0    # "str_receive":Ljava/lang/String;
    nop

    .line 181
    const/4 v0, 0x0

    .line 184
    .end local v9    # "tries":I
    .local v0, "tries":I
    const-string v5, "UDPClient"

    const-string v9, "Getting into main handler loop of udp client socket"

    invoke-static {v5, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move v5, v0

    move-object v0, v8

    .end local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    .local v0, "mSendPacket":Ljava/net/DatagramPacket;
    .local v5, "tries":I
    :goto_3
    iget-object v8, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v8}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Z

    move-result v8

    const/4 v13, 0x5

    const/4 v11, 0x6

    if-eqz v8, :cond_a

    .line 187
    iget-object v8, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v8}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$500(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    move-result v8

    const/4 v10, -0x1

    if-nez v8, :cond_3

    .line 188
    new-instance v18, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$600()[B

    move-result-object v9

    const/16 v19, 0x0

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$600()[B

    move-result-object v8

    array-length v8, v8

    const/16 v20, 0x74fa

    move/from16 v21, v8

    move-object/from16 v8, v18

    move v4, v10

    move/from16 v10, v19

    move/from16 v11, v21

    move v7, v12

    move-object v12, v14

    move/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 190
    .end local v0    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    :try_start_5
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 196
    nop

    .line 197
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0, v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$502(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 211
    .end local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    .local v4, "mSendPacket":Ljava/net/DatagramPacket;
    :goto_4
    move-object v4, v8

    goto :goto_7

    .line 191
    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UDPClient"

    const-string v4, "Failed to send ADR close command"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v2, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 194
    iget-object v2, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 195
    nop

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "buf":[B
    .end local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .local v31, "buf":[B
    :goto_5
    move-object/from16 v31, v3

    move-object v4, v8

    :goto_6
    const/4 v2, 0x5

    const/4 v6, 0x6

    goto/16 :goto_c

    .line 198
    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v31    # "buf":[B
    .local v0, "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v3    # "buf":[B
    :cond_3
    move v4, v10

    move v7, v12

    iget-object v8, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v8}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$500(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 199
    new-instance v17, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$700()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$700()[B

    move-result-object v8

    array-length v11, v8

    const/16 v13, 0x74fa

    move-object/from16 v8, v17

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 201
    .end local v0    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    :try_start_6
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 207
    nop

    .line 208
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0, v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$502(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    goto :goto_4

    .line 202
    :catch_4
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UDPClient"

    const-string v4, "Failed to send ADR open command"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v2, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 205
    iget-object v2, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 206
    goto :goto_5

    .line 211
    .end local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    .local v0, "mSendPacket":Ljava/net/DatagramPacket;
    :cond_4
    move-object v4, v0

    .end local v0    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    :goto_7
    invoke-virtual {v15, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 213
    :try_start_7
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 226
    nop

    .line 228
    const/4 v5, 0x0

    .line 229
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    .line 230
    .local v17, "data":[B
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-direct {v0, v8, v7, v9}, Ljava/lang/String;-><init>([BII)V

    move-object v13, v0

    .line 233
    .local v13, "str_receive":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v8, 0x2

    if-ne v8, v0, :cond_5

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$800()[B

    move-result-object v0

    aget-byte v0, v0, v7

    aget-byte v8, v17, v7

    if-ne v0, v8, :cond_5

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$800()[B

    move-result-object v0

    aget-byte v0, v0, v6

    aget-byte v8, v17, v6

    if-ne v0, v8, :cond_5

    .line 235
    :try_start_8
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$800()[B

    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v18, 0x74fa

    move-object v8, v0

    move-object v12, v14

    move-object v2, v13

    move/from16 v13, v18

    .end local v13    # "str_receive":Ljava/lang/String;
    .local v2, "str_receive":Ljava/lang/String;
    :try_start_9
    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    move-object v4, v0

    .line 236
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 237
    nop

    .line 185
    move-object v0, v4

    move v12, v7

    const/16 v2, 0x400

    goto/16 :goto_3

    .line 238
    :catch_5
    move-exception v0

    goto :goto_8

    .end local v2    # "str_receive":Ljava/lang/String;
    .restart local v13    # "str_receive":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object v2, v13

    .line 239
    .end local v13    # "str_receive":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "str_receive":Ljava/lang/String;
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    nop

    .line 282
    move-object/from16 v31, v3

    goto/16 :goto_6

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "str_receive":Ljava/lang/String;
    .restart local v13    # "str_receive":Ljava/lang/String;
    :cond_5
    move-object v2, v13

    .end local v13    # "str_receive":Ljava/lang/String;
    .restart local v2    # "str_receive":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$900(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 244
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "sensorParts":[Ljava/lang/String;
    const/high16 v0, -0x3c770000    # -274.0f

    move v9, v0

    .line 253
    .local v9, "temperature":F
    :try_start_a
    aget-object v0, v8, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 254
    .local v10, "type":I
    aget-object v0, v8, v6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v11, v0

    .line 255
    .local v11, "x":F
    const/4 v12, 0x2

    aget-object v0, v8, v12

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v12, v0

    .line 256
    .local v12, "y":F
    const/4 v13, 0x3

    aget-object v0, v8, v13

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v28, v0

    .line 257
    .local v28, "z":F
    const/16 v18, 0x4

    aget-object v0, v8, v18

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8

    move-wide/from16 v29, v18

    .line 261
    .local v29, "t":J
    nop

    .line 260
    nop

    .line 263
    array-length v0, v8

    const/4 v6, 0x6

    if-ne v6, v0, :cond_6

    .line 265
    const/4 v6, 0x5

    :try_start_b
    aget-object v0, v8, v6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    move v9, v0

    .line 269
    goto :goto_9

    .line 266
    :catch_7
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 268
    nop

    .line 185
    move-object/from16 v31, v3

    goto/16 :goto_b

    .line 272
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_9
    new-array v0, v13, [F

    aput v11, v0, v7

    const/4 v6, 0x1

    aput v12, v0, v6

    move/from16 v6, v28

    const/16 v18, 0x2

    aput v6, v0, v18

    .end local v28    # "z":F
    .local v6, "z":F
    move-object/from16 v24, v0

    .line 274
    .local v24, "values":[F
    const-string v0, "UDPClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",x:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",y:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",z:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",t:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v32, v2

    move-object/from16 v31, v3

    move-wide/from16 v2, v29

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v3    # "buf":[B
    .end local v29    # "t":J
    .local v2, "t":J
    .restart local v31    # "buf":[B
    .local v32, "str_receive":Ljava/lang/String;
    const-string v13, ",temperature:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$900(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 276
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$900(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    move-result-object v22

    move/from16 v23, v10

    move-wide/from16 v25, v2

    move/from16 v27, v9

    invoke-interface/range {v22 .. v27}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;->onSensorChanged(I[FJF)V

    .end local v2    # "t":J
    .end local v6    # "z":F
    .end local v8    # "sensorParts":[Ljava/lang/String;
    .end local v9    # "temperature":F
    .end local v10    # "type":I
    .end local v11    # "x":F
    .end local v12    # "y":F
    .end local v17    # "data":[B
    .end local v24    # "values":[F
    .end local v32    # "str_receive":Ljava/lang/String;
    goto :goto_a

    .line 258
    .end local v31    # "buf":[B
    .local v2, "str_receive":Ljava/lang/String;
    .restart local v3    # "buf":[B
    .restart local v8    # "sensorParts":[Ljava/lang/String;
    .restart local v9    # "temperature":F
    .restart local v17    # "data":[B
    :catch_8
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v31, v3

    .line 259
    .end local v2    # "str_receive":Ljava/lang/String;
    .end local v3    # "buf":[B
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v31    # "buf":[B
    .restart local v32    # "str_receive":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 260
    goto :goto_b

    .line 279
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "sensorParts":[Ljava/lang/String;
    .end local v9    # "temperature":F
    .end local v17    # "data":[B
    .end local v31    # "buf":[B
    .end local v32    # "str_receive":Ljava/lang/String;
    .restart local v3    # "buf":[B
    :cond_7
    move-object/from16 v31, v3

    .end local v3    # "buf":[B
    .restart local v31    # "buf":[B
    :cond_8
    :goto_a
    goto :goto_b

    .line 223
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    :catch_9
    move-exception v0

    move-object/from16 v31, v3

    const/4 v2, 0x5

    const/4 v6, 0x6

    .line 224
    .end local v3    # "buf":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v31    # "buf":[B
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    goto :goto_c

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    :catch_a
    move-exception v0

    move-object/from16 v31, v3

    const/4 v2, 0x5

    const/4 v6, 0x6

    .line 215
    .end local v3    # "buf":[B
    .local v0, "e":Ljava/net/SocketTimeoutException;
    .restart local v31    # "buf":[B
    const-string v3, "UDPClient"

    const-string v7, "Time out during receiving from the UDP server"

    invoke-static {v3, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    add-int/lit8 v3, v5, 0x1

    .local v3, "tries":I
    const/16 v7, 0xa

    if-ge v5, v7, :cond_9

    .line 217
    .end local v5    # "tries":I
    const-string v2, "UDPClient"

    const-string v5, "try again"

    invoke-static {v2, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    nop

    .line 185
    move v5, v3

    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v31    # "buf":[B
    .local v0, "mSendPacket":Ljava/net/DatagramPacket;
    .local v3, "buf":[B
    .restart local v5    # "tries":I
    :goto_b
    move-object v0, v4

    move-object/from16 v3, v31

    const/16 v2, 0x400

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 220
    .end local v5    # "tries":I
    .local v0, "e":Ljava/net/SocketTimeoutException;
    .local v3, "tries":I
    .restart local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v31    # "buf":[B
    :cond_9
    const-string v5, "UDPClient"

    const-string v7, "reach to max try times, go out of main handler"

    invoke-static {v5, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    nop

    .line 282
    move v5, v3

    goto :goto_c

    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v31    # "buf":[B
    .local v0, "mSendPacket":Ljava/net/DatagramPacket;
    .local v3, "buf":[B
    .restart local v5    # "tries":I
    :cond_a
    move-object/from16 v31, v3

    move v6, v11

    move v2, v13

    move-object v4, v0

    .end local v0    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v3    # "buf":[B
    .restart local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v31    # "buf":[B
    :goto_c
    :try_start_c
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$1000()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v13, 0x74fa

    move-object v8, v0

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    move-object v4, v0

    .line 283
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 296
    nop

    .line 297
    const-string v0, "UDPClient"

    const-string v3, "Re-connect to the GPS HAL\'s UDP server"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 299
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 300
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0, v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v5    # "tries":I
    .end local v14    # "mAddress":Ljava/net/InetAddress;
    .end local v15    # "mReceivedPacket":Ljava/net/DatagramPacket;
    .end local v16    # "receivedResponse":Z
    .end local v31    # "buf":[B
    goto/16 :goto_12

    .line 284
    .restart local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .restart local v5    # "tries":I
    .restart local v14    # "mAddress":Ljava/net/InetAddress;
    .restart local v15    # "mReceivedPacket":Ljava/net/DatagramPacket;
    .restart local v16    # "receivedResponse":Z
    .restart local v31    # "buf":[B
    :catch_b
    move-exception v0

    move-object v2, v0

    .line 285
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    const-string v0, "UDPClient"

    const-string v3, "Send STOP_COMMAND failed, try again"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    const-wide/16 v7, 0x1388

    :try_start_d
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_c

    .line 291
    goto :goto_d

    .line 289
    :catch_c
    move-exception v0

    move-object v3, v0

    .line 290
    .local v0, "except":Ljava/lang/InterruptedException;
    const-string v3, "UDPClient"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .end local v0    # "except":Ljava/lang/InterruptedException;
    :goto_d
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 293
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 294
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0, v6}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 295
    goto/16 :goto_12

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v5    # "tries":I
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    .local v8, "mSendPacket":Ljava/net/DatagramPacket;
    .local v9, "tries":I
    :cond_b
    move-object/from16 v31, v3

    .end local v3    # "buf":[B
    .restart local v31    # "buf":[B
    const-string v0, "UDPClient"

    const-string v2, "Server not response, try again"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    const-wide/16 v2, 0x1388

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_d

    .line 173
    goto :goto_e

    .line 171
    :catch_d
    move-exception v0

    move-object v2, v0

    .line 172
    .restart local v0    # "except":Ljava/lang/InterruptedException;
    const-string v2, "UDPClient"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .end local v0    # "except":Ljava/lang/InterruptedException;
    :goto_e
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 175
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 176
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 177
    goto/16 :goto_12

    .line 120
    .end local v9    # "tries":I
    .end local v16    # "receivedResponse":Z
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    :catch_e
    move-exception v0

    move-object/from16 v31, v3

    .end local v3    # "buf":[B
    .restart local v31    # "buf":[B
    move-object v2, v0

    .line 121
    .local v2, "e":Ljava/net/SocketException;
    const-string v0, "UDPClient"

    const-string v3, "Can not setSoTimeout"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 124
    const-wide/16 v3, 0x1388

    :try_start_f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_f

    .line 127
    goto :goto_f

    .line 125
    :catch_f
    move-exception v0

    move-object v3, v0

    .line 126
    .restart local v0    # "except":Ljava/lang/InterruptedException;
    const-string v3, "UDPClient"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .end local v0    # "except":Ljava/lang/InterruptedException;
    :goto_f
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 129
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 130
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 131
    goto :goto_12

    .line 102
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v8    # "mSendPacket":Ljava/net/DatagramPacket;
    .end local v14    # "mAddress":Ljava/net/InetAddress;
    .end local v15    # "mReceivedPacket":Ljava/net/DatagramPacket;
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    :catch_10
    move-exception v0

    move-object/from16 v31, v3

    .end local v3    # "buf":[B
    .restart local v31    # "buf":[B
    move-object v2, v0

    .line 103
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v0, "UDPClient"

    const-string v3, "Can not getByName 127.0.0.1"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 106
    const-wide/16 v3, 0x1388

    :try_start_10
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_11

    .line 109
    goto :goto_10

    .line 107
    :catch_11
    move-exception v0

    move-object v3, v0

    .line 108
    .restart local v0    # "except":Ljava/lang/InterruptedException;
    const-string v3, "UDPClient"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .end local v0    # "except":Ljava/lang/InterruptedException;
    :goto_10
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 111
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 112
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 113
    goto :goto_12

    .line 87
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v31    # "buf":[B
    .restart local v3    # "buf":[B
    :catch_12
    move-exception v0

    move-object/from16 v31, v3

    .end local v3    # "buf":[B
    .restart local v31    # "buf":[B
    move-object v2, v0

    .line 88
    .local v2, "e":Ljava/net/SocketException;
    const-string v0, "UDPClient"

    const-string v3, "Can not create udp socket with port: 29948"

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 91
    const-wide/16 v3, 0x1388

    :try_start_11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_13

    .line 94
    goto :goto_11

    .line 92
    :catch_13
    move-exception v0

    move-object v3, v0

    .line 93
    .restart local v0    # "except":Ljava/lang/InterruptedException;
    const-string v3, "UDPClient"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .end local v0    # "except":Ljava/lang/InterruptedException;
    :goto_11
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$008(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)I

    .line 96
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;I)I

    .line 97
    nop

    .line 301
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v31    # "buf":[B
    :goto_12
    iget-object v0, v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "UDPClient"

    const-string v2, "Exit the mSocketHandlerRunnable thread, error occurred."

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    return-void
.end method
