.class public Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;
.super Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TFTPClient"


# instance fields
.field private __maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTP;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesReceived:J

    .line 71
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesSent:J

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    .line 80
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesSent:J

    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;II)I
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I
    .locals 32
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p5

    .line 143
    move/from16 v11, p6

    const/4 v0, 0x0

    .line 144
    .local v0, "bytesRead":I
    const/4 v12, 0x0

    .line 145
    .local v12, "lastBlock":I
    const/4 v13, 0x1

    .line 146
    .local v13, "block":I
    const/4 v14, 0x0

    .line 147
    .local v14, "hostPort":I
    const/4 v15, 0x0

    .line 149
    .local v15, "dataLength":I
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesReceived:J

    .line 151
    if-nez p2, :cond_0

    .line 152
    new-instance v2, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .end local p3    # "output":Ljava/io/OutputStream;
    .local v2, "output":Ljava/io/OutputStream;
    move-object v9, v2

    goto :goto_0

    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local p3    # "output":Ljava/io/OutputStream;
    :cond_0
    move-object/from16 v3, p3

    move-object v9, v3

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    :goto_0
    new-instance v16, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsReadRequestPacket;

    const-wide/16 v7, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p4

    move v4, v10

    move v5, v11

    move-object/from16 v6, p1

    move/from16 v17, v12

    move-object v12, v9

    move/from16 v9, p2

    .end local v9    # "output":Ljava/io/OutputStream;
    .local v12, "output":Ljava/io/OutputStream;
    .local v17, "lastBlock":I
    invoke-direct/range {v2 .. v9}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsReadRequestPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V

    .line 156
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    new-instance v3, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;

    const/4 v4, 0x0

    move-object/from16 v5, p4

    invoke-direct {v3, v5, v10, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 158
    .local v3, "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    invoke-virtual {v1, v11}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->beginBufferedOps(I)V

    .line 160
    const/4 v6, 0x1

    move v7, v0

    .line 163
    .end local v0    # "bytesRead":I
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v5, "host":Ljava/net/InetAddress;
    .local v6, "justStarted":Z
    .local v7, "bytesRead":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "wantReply":Z
    move-object v8, v2

    move v2, v0

    move v0, v4

    .local v0, "timeouts":I
    .local v2, "wantReply":Z
    .local v8, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :goto_2
    move v9, v0

    .line 168
    .end local v0    # "timeouts":I
    .local v9, "timeouts":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedReceive()Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    move-result-object v0

    move-object/from16 v18, v0

    .line 171
    .local v18, "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    move-object/from16 v4, v18

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getPort()I

    move-result v0

    .end local v18    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v4, "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    move/from16 v19, v0

    .line 172
    .local v19, "recdPort":I
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_37
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_36
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_35
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    move-object/from16 v20, v0

    .line 173
    .local v20, "recdAddress":Ljava/net/InetAddress;
    if-eqz v6, :cond_3

    .line 174
    const/4 v6, 0x0

    .line 175
    move/from16 v21, v2

    move/from16 v2, v19

    if-eq v2, v10, :cond_2

    .line 182
    .end local v19    # "recdPort":I
    .local v2, "recdPort":I
    .local v21, "wantReply":Z
    move v14, v2

    .line 183
    :try_start_2
    invoke-virtual {v3, v14}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->setPort(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    move/from16 v22, v6

    move-object/from16 v6, v20

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    .end local v20    # "recdAddress":Ljava/net/InetAddress;
    .local v6, "recdAddress":Ljava/net/InetAddress;
    .local v22, "justStarted":Z
    if-nez v16, :cond_1

    .line 185
    move-object v5, v6

    .line 186
    invoke-virtual {v3, v5}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 187
    invoke-virtual {v8, v5}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :cond_1
    move-object/from16 v24, v8

    goto/16 :goto_7

    .line 263
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    :catchall_0
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v24, v8

    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v7    # "bytesRead":I
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v24, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v27, "bytesRead":I
    .local v29, "output":Ljava/io/OutputStream;
    .local v30, "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_3
    move-object/from16 v29, v12

    goto/16 :goto_27

    .line 251
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v21    # "wantReply":Z
    :catch_0
    move-exception v0

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_1e

    .line 247
    :catch_1
    move-exception v0

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_1f

    .line 243
    :catch_2
    move-exception v0

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_21

    .line 263
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v22    # "justStarted":Z
    .local v6, "justStarted":Z
    :catchall_1
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v12

    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    goto/16 :goto_27

    .line 251
    .end local v22    # "justStarted":Z
    .restart local v6    # "justStarted":Z
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_3
    move-exception v0

    move/from16 v22, v6

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    goto/16 :goto_1e

    .line 247
    .end local v22    # "justStarted":Z
    .restart local v6    # "justStarted":Z
    :catch_4
    move-exception v0

    move/from16 v22, v6

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    goto/16 :goto_1f

    .line 243
    .end local v22    # "justStarted":Z
    .restart local v6    # "justStarted":Z
    :catch_5
    move-exception v0

    move/from16 v22, v6

    move/from16 v27, v7

    move-object v2, v8

    move-object/from16 v29, v12

    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    goto/16 :goto_21

    .line 176
    .end local v22    # "justStarted":Z
    .restart local v2    # "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v20    # "recdAddress":Ljava/net/InetAddress;
    :cond_2
    move/from16 v22, v6

    move-object/from16 v6, v20

    .end local v20    # "recdAddress":Ljava/net/InetAddress;
    .local v6, "recdAddress":Ljava/net/InetAddress;
    .restart local v22    # "justStarted":Z
    :try_start_4
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v23, v5

    :try_start_5
    const-string v5, "INCORRECT SOURCE PORT"
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v5    # "host":Ljava/net/InetAddress;
    .local v23, "host":Ljava/net/InetAddress;
    move-object/from16 v24, v8

    const/4 v8, 0x5

    :try_start_6
    invoke-direct {v0, v6, v2, v8, v5}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 179
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v0, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 180
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v0

    const-string v0, "Incorrect source port ("

    .end local v0    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .local v25, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") in request reply."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 263
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v25    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    :catchall_2
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v29, v12

    move-object/from16 v5, v23

    goto/16 :goto_27

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_6
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .local v6, "justStarted":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_4
    move-object/from16 v2, v24

    goto/16 :goto_1e

    .line 247
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "justStarted":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_7
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v6    # "justStarted":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_5
    move-object/from16 v2, v24

    goto/16 :goto_1f

    .line 243
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "justStarted":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_8
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v6    # "justStarted":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_6
    move-object/from16 v2, v24

    goto/16 :goto_21

    .line 263
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v6    # "justStarted":Z
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v23    # "host":Ljava/net/InetAddress;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v29, v12

    move-object/from16 v5, v23

    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_27

    .line 251
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_9
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_1e

    .line 247
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_a
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_1f

    .line 243
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_b
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_21

    .line 263
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catchall_4
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v29, v12

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_27

    .line 251
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_c
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_1e

    .line 247
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_d
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_1f

    .line 243
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_e
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v5    # "host":Ljava/net/InetAddress;
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    goto/16 :goto_21

    .line 192
    .end local v21    # "wantReply":Z
    .end local v22    # "justStarted":Z
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v2, "wantReply":Z
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "host":Ljava/net/InetAddress;
    .restart local v6    # "justStarted":Z
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v19    # "recdPort":I
    .restart local v20    # "recdAddress":Ljava/net/InetAddress;
    :cond_3
    move/from16 v21, v2

    move-object/from16 v23, v5

    move v5, v6

    move-object/from16 v24, v8

    move/from16 v2, v19

    move-object/from16 v6, v20

    move/from16 v22, v5

    move-object/from16 v5, v23

    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v19    # "recdPort":I
    .end local v20    # "recdAddress":Ljava/net/InetAddress;
    .local v2, "recdPort":I
    .local v6, "recdAddress":Ljava/net/InetAddress;
    .restart local v21    # "wantReply":Z
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :goto_7
    :try_start_7
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v2, v14, :cond_7

    .line 193
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getType()I

    move-result v0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_34
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_33
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_32
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    packed-switch v0, :pswitch_data_0

    .line 235
    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .local v26, "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :try_start_8
    new-instance v0, Ljava/io/IOException;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_31
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_30
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_2f
    .catchall {:try_start_8 .. :try_end_8} :catchall_f

    goto/16 :goto_15

    .line 196
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :pswitch_0
    :try_start_9
    move-object v0, v4

    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    .line 197
    .restart local v0    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    new-instance v8, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move/from16 v26, v15

    :try_start_a
    const-string v15, "Error code "

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;->getError()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " received: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 263
    .end local v0    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    :catchall_5
    move-exception v0

    move/from16 v26, v15

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v29, v12

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    goto/16 :goto_27

    .line 251
    .end local v26    # "dataLength":I
    .restart local v9    # "timeouts":I
    .restart local v15    # "dataLength":I
    .restart local v21    # "wantReply":Z
    :catch_f
    move-exception v0

    move/from16 v26, v15

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    goto/16 :goto_1e

    .line 247
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    :catch_10
    move-exception v0

    move/from16 v26, v15

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    goto/16 :goto_1f

    .line 243
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    :catch_11
    move-exception v0

    move/from16 v26, v15

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    goto/16 :goto_21

    .line 200
    .end local v26    # "dataLength":I
    .restart local v2    # "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "recdAddress":Ljava/net/InetAddress;
    .restart local v15    # "dataLength":I
    :pswitch_1
    move/from16 v26, v15

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    move-object v0, v4

    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v0
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_19
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_18
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move v8, v0

    .line 201
    .end local v17    # "lastBlock":I
    .local v8, "lastBlock":I
    :try_start_b
    invoke-virtual {v3, v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->setBlockNumber(I)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 202
    move-object v10, v3

    .line 203
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v10, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :try_start_c
    invoke-virtual {v1, v10}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_13
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 204
    nop

    .line 253
    move/from16 v27, v7

    move-object/from16 v24, v10

    move-object/from16 v29, v12

    move/from16 v15, v26

    move v10, v8

    goto/16 :goto_16

    .line 263
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    :catchall_6
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    move/from16 v17, v8

    move-object/from16 v24, v10

    goto :goto_8

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_12
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    move-object v2, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_19

    .line 247
    :catch_13
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    move-object v2, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_1b

    .line 243
    :catch_14
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    move-object v2, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    goto/16 :goto_1d

    .line 263
    .end local v9    # "timeouts":I
    .end local v10    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v21    # "wantReply":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catchall_7
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    move/from16 v17, v8

    goto :goto_8

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_15
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    goto :goto_9

    .line 247
    :catch_16
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    goto :goto_a

    .line 243
    :catch_17
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v8

    goto :goto_b

    .line 263
    .end local v8    # "lastBlock":I
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .restart local v17    # "lastBlock":I
    :catchall_8
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_8
    move-object/from16 v29, v12

    goto/16 :goto_17

    .line 251
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v7    # "bytesRead":I
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v21    # "wantReply":Z
    .restart local v26    # "dataLength":I
    :catch_18
    move-exception v0

    move/from16 v27, v7

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v6, "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_9
    move-object/from16 v29, v12

    goto/16 :goto_18

    .line 247
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_19
    move-exception v0

    move/from16 v27, v7

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_a
    move-object/from16 v29, v12

    goto/16 :goto_1a

    .line 243
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_1a
    move-exception v0

    move/from16 v27, v7

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_b
    move-object/from16 v29, v12

    goto/16 :goto_1c

    .line 206
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .local v2, "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v6, "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :pswitch_2
    move/from16 v26, v15

    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    :try_start_d
    move-object v0, v4

    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;

    move-object v8, v0

    .line 207
    .local v8, "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    invoke-virtual {v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->getDataLength()I

    move-result v0
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_2e
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_2d
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_2c
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    move v15, v0

    .line 208
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    :try_start_e
    invoke-virtual {v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v0
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_2b
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_2a
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_29
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    move v10, v0

    .line 210
    .end local v17    # "lastBlock":I
    .local v10, "lastBlock":I
    if-ne v10, v13, :cond_5

    .line 212
    :try_start_f
    invoke-virtual {v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->getData()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_22
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_21
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_f} :catch_20
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_f .. :try_end_f} :catch_1f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move/from16 v27, v7

    :try_start_10
    invoke-virtual {v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v7

    .end local v7    # "bytesRead":I
    .restart local v27    # "bytesRead":I
    invoke-virtual {v12, v0, v7, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_10 .. :try_end_10} :catch_1b
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 219
    nop

    .line 220
    add-int/lit8 v13, v13, 0x1

    .line 221
    const v0, 0xffff

    if-le v13, v0, :cond_4

    .line 223
    const/4 v0, 0x0

    .line 225
    .end local v13    # "block":I
    .local v0, "block":I
    move v13, v0

    .end local v0    # "block":I
    .restart local v13    # "block":I
    :cond_4
    const/4 v0, 0x0

    .line 253
    .end local v21    # "wantReply":Z
    .local v0, "wantReply":Z
    move/from16 v21, v0

    move-object/from16 v29, v12

    goto/16 :goto_16

    .line 263
    .end local v0    # "wantReply":Z
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v9    # "timeouts":I
    :catchall_9
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v17, v10

    goto/16 :goto_3

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_1b
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v29, v12

    goto/16 :goto_e

    .line 247
    :catch_1c
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v29, v12

    goto/16 :goto_f

    .line 243
    :catch_1d
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v29, v12

    goto/16 :goto_10

    .line 213
    .restart local v2    # "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "recdAddress":Ljava/net/InetAddress;
    .restart local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :catch_1e
    move-exception v0

    goto :goto_c

    .line 263
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v27    # "bytesRead":I
    .restart local v7    # "bytesRead":I
    :catchall_a
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v30, v3

    move/from16 v17, v10

    move-object/from16 v29, v12

    .end local v7    # "bytesRead":I
    .restart local v27    # "bytesRead":I
    goto/16 :goto_27

    .line 251
    .end local v27    # "bytesRead":I
    .restart local v7    # "bytesRead":I
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_1f
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .restart local v27    # "bytesRead":I
    goto/16 :goto_1e

    .line 247
    .end local v27    # "bytesRead":I
    .restart local v7    # "bytesRead":I
    :catch_20
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .restart local v27    # "bytesRead":I
    goto/16 :goto_1f

    .line 243
    .end local v27    # "bytesRead":I
    .restart local v7    # "bytesRead":I
    :catch_21
    move-exception v0

    move/from16 v27, v7

    move/from16 v17, v10

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .restart local v27    # "bytesRead":I
    goto/16 :goto_21

    .line 213
    .end local v27    # "bytesRead":I
    .restart local v2    # "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "recdAddress":Ljava/net/InetAddress;
    .restart local v7    # "bytesRead":I
    .restart local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :catch_22
    move-exception v0

    move/from16 v27, v7

    .line 214
    .end local v7    # "bytesRead":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "bytesRead":I
    :goto_c
    :try_start_11
    new-instance v7, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    move-object/from16 v28, v8

    .end local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .local v28, "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    const-string v8, "File write failed."
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Ljava/io/InterruptedIOException; {:try_start_11 .. :try_end_11} :catch_24
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_11 .. :try_end_11} :catch_23
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object/from16 v29, v12

    const/4 v12, 0x3

    :try_start_12
    invoke-direct {v7, v5, v14, v12, v8}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 217
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v7, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .restart local v29    # "output":Ljava/io/OutputStream;
    invoke-virtual {v1, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 218
    throw v0

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v7    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v28    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catchall_b
    move-exception v0

    move-object/from16 v29, v12

    move-object/from16 v30, v3

    move/from16 v17, v10

    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_27

    .line 251
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v21    # "wantReply":Z
    :catch_23
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v17, v10

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1e

    .line 247
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catch_24
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v17, v10

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 243
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catch_25
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v17, v10

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_21

    .line 227
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v2    # "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "recdAddress":Ljava/net/InetAddress;
    .local v7, "bytesRead":I
    .restart local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :cond_5
    move/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v12

    const v0, 0xffff

    .end local v7    # "bytesRead":I
    .end local v8    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v27    # "bytesRead":I
    .restart local v28    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v29    # "output":Ljava/io/OutputStream;
    invoke-virtual {v1, v11}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->discardPackets(I)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_28
    .catch Ljava/io/InterruptedIOException; {:try_start_12 .. :try_end_12} :catch_27
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_12 .. :try_end_12} :catch_26
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 228
    if-nez v13, :cond_6

    goto :goto_d

    :cond_6
    add-int/lit8 v0, v13, -0x1

    :goto_d
    if-ne v10, v0, :cond_8

    .line 229
    const/4 v0, 0x0

    .line 253
    .end local v21    # "wantReply":Z
    .local v0, "wantReply":Z
    move/from16 v21, v0

    goto/16 :goto_16

    .line 263
    .end local v0    # "wantReply":Z
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    .end local v9    # "timeouts":I
    .end local v28    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :catchall_c
    move-exception v0

    move-object/from16 v30, v3

    goto/16 :goto_24

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_26
    move-exception v0

    move/from16 v17, v10

    .end local v10    # "lastBlock":I
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v6, "justStarted":Z
    .restart local v17    # "lastBlock":I
    :goto_e
    move/from16 v6, v22

    goto/16 :goto_4

    .line 247
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v17    # "lastBlock":I
    .restart local v10    # "lastBlock":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_27
    move-exception v0

    move/from16 v17, v10

    .end local v10    # "lastBlock":I
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v17    # "lastBlock":I
    :goto_f
    move/from16 v6, v22

    goto/16 :goto_5

    .line 243
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v17    # "lastBlock":I
    .restart local v10    # "lastBlock":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catch_28
    move-exception v0

    move/from16 v17, v10

    .end local v10    # "lastBlock":I
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v17    # "lastBlock":I
    :goto_10
    move/from16 v6, v22

    goto/16 :goto_6

    .line 263
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catchall_d
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move-object/from16 v30, v3

    goto :goto_11

    .line 251
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    :catch_29
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    goto :goto_12

    .line 247
    :catch_2a
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    goto :goto_13

    .line 243
    :catch_2b
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    goto :goto_14

    .line 263
    .end local v9    # "timeouts":I
    .end local v15    # "dataLength":I
    .end local v21    # "wantReply":Z
    .restart local v26    # "dataLength":I
    :catchall_e
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move-object/from16 v30, v3

    move/from16 v15, v26

    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_11
    goto/16 :goto_27

    .line 251
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v7    # "bytesRead":I
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v21    # "wantReply":Z
    .restart local v26    # "dataLength":I
    :catch_2c
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    move/from16 v15, v26

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_12
    goto/16 :goto_1e

    .line 247
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_2d
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    move/from16 v15, v26

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_13
    goto/16 :goto_1f

    .line 243
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_2e
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v6, v22

    move-object/from16 v2, v24

    move/from16 v15, v26

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_14
    goto/16 :goto_21

    .line 235
    .end local v15    # "dataLength":I
    .local v2, "recdPort":I
    .restart local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v6, "recdAddress":Ljava/net/InetAddress;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :goto_15
    :try_start_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected packet type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :cond_7
    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    const-string v7, "Unexpected host or port."

    const/4 v8, 0x5

    invoke-direct {v0, v6, v2, v8, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 241
    .local v0, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_13
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_31
    .catch Ljava/io/InterruptedIOException; {:try_start_13 .. :try_end_13} :catch_30
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_13 .. :try_end_13} :catch_2f
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    .line 253
    .end local v0    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .end local v2    # "recdPort":I
    .end local v4    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "recdAddress":Ljava/net/InetAddress;
    move/from16 v10, v17

    move/from16 v15, v26

    .line 254
    .end local v17    # "lastBlock":I
    .end local v26    # "dataLength":I
    .restart local v10    # "lastBlock":I
    .restart local v15    # "dataLength":I
    :cond_8
    :goto_16
    move v0, v9

    move/from16 v2, v21

    move/from16 v6, v22

    move-object/from16 v8, v24

    goto/16 :goto_23

    .line 263
    .end local v9    # "timeouts":I
    .end local v10    # "lastBlock":I
    .end local v15    # "dataLength":I
    .end local v21    # "wantReply":Z
    .restart local v17    # "lastBlock":I
    .restart local v26    # "dataLength":I
    :catchall_f
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v26    # "dataLength":I
    .restart local v15    # "dataLength":I
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_17
    move/from16 v15, v26

    goto/16 :goto_27

    .line 251
    .end local v15    # "dataLength":I
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v9    # "timeouts":I
    .restart local v21    # "wantReply":Z
    .restart local v26    # "dataLength":I
    :catch_2f
    move-exception v0

    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v6, "justStarted":Z
    .restart local v15    # "dataLength":I
    :goto_18
    move/from16 v6, v22

    move-object/from16 v2, v24

    :goto_19
    move/from16 v15, v26

    goto/16 :goto_1e

    .line 247
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_30
    move-exception v0

    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    :goto_1a
    move/from16 v6, v22

    move-object/from16 v2, v24

    :goto_1b
    move/from16 v15, v26

    goto/16 :goto_1f

    .line 243
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v15    # "dataLength":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    :catch_31
    move-exception v0

    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v15    # "dataLength":I
    :goto_1c
    move/from16 v6, v22

    move-object/from16 v2, v24

    :goto_1d
    move/from16 v15, v26

    goto/16 :goto_21

    .line 263
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catchall_10
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    move-object/from16 v30, v3

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_27

    .line 251
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    .restart local v21    # "wantReply":Z
    :catch_32
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto :goto_1e

    .line 247
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :catch_33
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 243
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :catch_34
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v29, v12

    move/from16 v26, v15

    move/from16 v6, v22

    move-object/from16 v2, v24

    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_21

    .line 263
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v6    # "justStarted":Z
    .restart local v7    # "bytesRead":I
    .local v8, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :catchall_11
    move-exception v0

    move-object/from16 v23, v5

    move v5, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v12

    move/from16 v26, v15

    move-object/from16 v30, v3

    move/from16 v22, v5

    move-object/from16 v5, v23

    .end local v6    # "justStarted":Z
    .end local v7    # "bytesRead":I
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v15    # "dataLength":I
    .local v5, "justStarted":Z
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v26    # "dataLength":I
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    goto/16 :goto_27

    .line 251
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v26    # "dataLength":I
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .local v2, "wantReply":Z
    .local v5, "host":Ljava/net/InetAddress;
    .restart local v6    # "justStarted":Z
    .restart local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v15    # "dataLength":I
    :catch_35
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v23, v5

    move v5, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v12

    move/from16 v26, v15

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .line 252
    .end local v7    # "bytesRead":I
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v0, "e":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v21    # "wantReply":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_1e
    :try_start_14
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad packet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    .end local v0    # "e":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
    .end local v21    # "wantReply":Z
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .local v2, "wantReply":Z
    .restart local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catch_36
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v23, v5

    move v5, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v12

    move/from16 v26, v15

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .line 248
    .end local v7    # "bytesRead":I
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/InterruptedIOException;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v21    # "wantReply":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_1f
    add-int/lit8 v9, v9, 0x1

    iget v4, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v9, v4, :cond_9

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    goto :goto_22

    .line 249
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    .line 263
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    :catchall_12
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v30, v3

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_20
    move/from16 v22, v6

    goto/16 :goto_27

    .line 243
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .local v2, "wantReply":Z
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v6    # "justStarted":Z
    .restart local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v9    # "timeouts":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catch_37
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v23, v5

    move v5, v6

    move/from16 v27, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v12

    move/from16 v26, v15

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    .line 244
    .end local v7    # "bytesRead":I
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v0, "e":Ljava/net/SocketException;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v21    # "wantReply":Z
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    :goto_21
    add-int/lit8 v9, v9, 0x1

    :try_start_15
    iget v4, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_17

    if-ge v9, v4, :cond_c

    .line 253
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_22
    nop

    .line 254
    move-object v8, v2

    move v0, v9

    move/from16 v10, v17

    move/from16 v2, v21

    .end local v9    # "timeouts":I
    .end local v17    # "lastBlock":I
    .end local v21    # "wantReply":Z
    .local v0, "timeouts":I
    .local v2, "wantReply":Z
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v10    # "lastBlock":I
    :goto_23
    if-nez v2, :cond_b

    .line 256
    :try_start_16
    invoke-virtual {v3, v10}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->setBlockNumber(I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    .line 257
    move-object v4, v3

    .line 258
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v4, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    add-int v7, v27, v15

    .line 259
    .end local v27    # "bytesRead":I
    .restart local v7    # "bytesRead":I
    :try_start_17
    iget-wide v8, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesReceived:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    move/from16 v31, v2

    move-object/from16 v30, v3

    int-to-long v2, v15

    .end local v2    # "wantReply":Z
    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .local v31, "wantReply":Z
    add-long/2addr v8, v2

    :try_start_18
    iput-wide v8, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesReceived:J

    .line 260
    .end local v0    # "timeouts":I
    .end local v31    # "wantReply":Z
    if-eq v15, v11, :cond_a

    .line 261
    invoke-virtual {v1, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->endBufferedOps()V

    .line 264
    nop

    .line 265
    return v7

    .line 160
    :cond_a
    move-object v2, v4

    move/from16 v17, v10

    move-object/from16 v12, v29

    move-object/from16 v3, v30

    const/4 v4, 0x0

    move/from16 v10, p5

    goto/16 :goto_1

    .line 263
    :catchall_13
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v22, v6

    move/from16 v27, v7

    .end local v4    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v6    # "justStarted":Z
    .end local v7    # "bytesRead":I
    .end local v10    # "lastBlock":I
    .restart local v17    # "lastBlock":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v27    # "bytesRead":I
    :goto_24
    move/from16 v17, v10

    goto :goto_27

    .end local v17    # "lastBlock":I
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v27    # "bytesRead":I
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v4    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v6    # "justStarted":Z
    .restart local v7    # "bytesRead":I
    .restart local v10    # "lastBlock":I
    :catchall_14
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v24, v4

    move/from16 v22, v6

    move/from16 v27, v7

    goto :goto_25

    .end local v4    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v7    # "bytesRead":I
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v27    # "bytesRead":I
    :catchall_15
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v22, v6

    move-object/from16 v24, v8

    .end local v6    # "justStarted":Z
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v10    # "lastBlock":I
    .restart local v17    # "lastBlock":I
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :goto_25
    move/from16 v17, v10

    goto :goto_26

    .line 165
    .end local v17    # "lastBlock":I
    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v0    # "timeouts":I
    .restart local v2    # "wantReply":Z
    .restart local v6    # "justStarted":Z
    .restart local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v10    # "lastBlock":I
    :cond_b
    move/from16 v31, v2

    move/from16 v17, v10

    move/from16 v7, v27

    move-object/from16 v12, v29

    const/4 v4, 0x0

    move/from16 v10, p5

    .end local v2    # "wantReply":Z
    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v31    # "wantReply":Z
    goto/16 :goto_2

    .line 245
    .end local v8    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v10    # "lastBlock":I
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v31    # "wantReply":Z
    .local v0, "e":Ljava/net/SocketException;
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v9    # "timeouts":I
    .restart local v17    # "lastBlock":I
    .restart local v21    # "wantReply":Z
    :cond_c
    move-object/from16 v30, v3

    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :try_start_19
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Connection timed out."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    .line 263
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v9    # "timeouts":I
    .end local v21    # "wantReply":Z
    :catchall_16
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_20

    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :catchall_17
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v24, v2

    move/from16 v22, v6

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v6    # "justStarted":Z
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_26
    goto :goto_27

    .end local v22    # "justStarted":Z
    .end local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v27    # "bytesRead":I
    .end local v29    # "output":Ljava/io/OutputStream;
    .end local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .restart local v6    # "justStarted":Z
    .restart local v7    # "bytesRead":I
    .restart local v12    # "output":Ljava/io/OutputStream;
    :catchall_18
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v27, v7

    move-object/from16 v29, v12

    move-object/from16 v24, v2

    move/from16 v22, v6

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    .end local v6    # "justStarted":Z
    .end local v7    # "bytesRead":I
    .end local v12    # "output":Ljava/io/OutputStream;
    .restart local v22    # "justStarted":Z
    .restart local v24    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v27    # "bytesRead":I
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v30    # "ack":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->endBufferedOps()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    const/16 v6, 0x200

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V

    .line 550
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V

    .line 543
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;II)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V

    .line 505
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V

    .line 524
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V
    .locals 33
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "segmentSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 351
    move/from16 v10, p6

    const/4 v0, 0x0

    .line 352
    .local v0, "block":I
    const/4 v11, 0x0

    .line 353
    .local v11, "hostPort":I
    const/4 v12, 0x1

    .line 354
    .local v12, "justStarted":Z
    const/4 v13, 0x0

    .line 356
    .local v13, "lastAckWait":Z
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesSent:J

    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    .end local p3    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    move-object v14, v2

    goto :goto_0

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local p3    # "input":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v3, p3

    move-object v14, v3

    .end local p3    # "input":Ljava/io/InputStream;
    .local v14, "input":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v7, v2

    .line 364
    .local v7, "fileSize":J
    new-instance v15, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsWriteRequestPacket;

    move-object v2, v15

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    move-object/from16 v6, p1

    move-wide/from16 v16, v7

    .end local v7    # "fileSize":J
    .local v16, "fileSize":J
    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPOptionsWriteRequestPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V

    .line 365
    .local v2, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    new-instance v15, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v15

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 367
    .local v3, "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    invoke-virtual {v1, v10}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->beginBufferedOps(I)V

    .line 373
    move v5, v0

    .end local v0    # "block":I
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v4, "host":Ljava/net/InetAddress;
    .local v5, "block":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 374
    const/4 v0, 0x1

    .line 375
    .local v0, "wantReply":Z
    move v7, v5

    move v5, v0

    const/4 v0, 0x0

    .local v0, "timeouts":I
    .local v5, "wantReply":Z
    .local v7, "block":I
    :goto_2
    move v8, v0

    .line 378
    .end local v0    # "timeouts":I
    .local v8, "timeouts":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedReceive()Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;

    move-result-object v0

    .line 379
    .local v0, "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    .line 380
    .local v9, "recdAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getPort()I

    move-result v15
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move/from16 v18, v15

    .line 383
    .local v18, "recdPort":I
    if-eqz v12, :cond_2

    .line 384
    const/4 v12, 0x0

    .line 385
    move/from16 v6, p5

    move/from16 v20, v5

    move/from16 v5, v18

    if-eq v5, v6, :cond_1

    .line 392
    .end local v18    # "recdPort":I
    .local v5, "recdPort":I
    .local v20, "wantReply":Z
    move v11, v5

    .line 393
    :try_start_2
    invoke-virtual {v3, v11}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->setPort(I)V

    .line 394
    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 395
    move-object v4, v9

    .line 396
    invoke-virtual {v3, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 397
    invoke-virtual {v2, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto/16 :goto_3

    .line 445
    .end local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "recdPort":I
    .end local v9    # "recdAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 435
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 386
    .restart local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v5    # "recdPort":I
    .restart local v9    # "recdAddress":Ljava/net/InetAddress;
    :cond_1
    move-object/from16 v21, v4

    :try_start_3
    new-instance v4, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    .end local v4    # "host":Ljava/net/InetAddress;
    .local v21, "host":Ljava/net/InetAddress;
    const-string v6, "INCORRECT SOURCE PORT"
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v22, v11

    const/4 v11, 0x5

    :try_start_4
    invoke-direct {v4, v9, v5, v11, v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 389
    .end local v11    # "hostPort":I
    .local v4, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .local v22, "hostPort":I
    invoke-virtual {v1, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V

    .line 390
    new-instance v6, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    const-string v4, "Incorrect source port ("

    .end local v4    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .local v23, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") in request reply."

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    .end local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "recdPort":I
    .end local v8    # "timeouts":I
    .end local v9    # "recdAddress":Ljava/net/InetAddress;
    .end local v20    # "wantReply":Z
    .end local v23    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    :catchall_0
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v4, v21

    move/from16 v11, v22

    goto/16 :goto_b

    .line 445
    .restart local v8    # "timeouts":I
    .restart local v20    # "wantReply":Z
    :catch_2
    move-exception v0

    move-object/from16 v4, v21

    move/from16 v11, v22

    goto/16 :goto_6

    .line 435
    :catch_3
    move-exception v0

    move-object/from16 v4, v21

    move/from16 v11, v22

    goto/16 :goto_7

    .line 478
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    .end local v22    # "hostPort":I
    .restart local v11    # "hostPort":I
    :catchall_1
    move-exception v0

    move/from16 v22, v11

    move-object/from16 v29, v3

    move-object/from16 v4, v21

    .end local v11    # "hostPort":I
    .restart local v22    # "hostPort":I
    goto/16 :goto_b

    .line 445
    .end local v22    # "hostPort":I
    .restart local v8    # "timeouts":I
    .restart local v11    # "hostPort":I
    .restart local v20    # "wantReply":Z
    :catch_4
    move-exception v0

    move/from16 v22, v11

    move-object/from16 v4, v21

    .end local v11    # "hostPort":I
    .restart local v22    # "hostPort":I
    goto/16 :goto_6

    .line 435
    .end local v22    # "hostPort":I
    .restart local v11    # "hostPort":I
    :catch_5
    move-exception v0

    move/from16 v22, v11

    move-object/from16 v4, v21

    .end local v11    # "hostPort":I
    .restart local v22    # "hostPort":I
    goto/16 :goto_7

    .line 402
    .end local v20    # "wantReply":Z
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local v22    # "hostPort":I
    .restart local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v4, "host":Ljava/net/InetAddress;
    .local v5, "wantReply":Z
    .restart local v9    # "recdAddress":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v18    # "recdPort":I
    :cond_2
    move-object/from16 v21, v4

    move/from16 v20, v5

    move/from16 v22, v11

    move/from16 v5, v18

    .end local v18    # "recdPort":I
    .local v5, "recdPort":I
    .restart local v20    # "wantReply":Z
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v5, v11, :cond_6

    .line 404
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;->getType()I

    move-result v6
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    packed-switch v6, :pswitch_data_0

    .line 426
    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .local v24, "host":Ljava/net/InetAddress;
    .local v25, "hostPort":I
    .local v26, "justStarted":Z
    :try_start_6
    new-instance v4, Ljava/io/IOException;
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_4

    .line 406
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :pswitch_0
    :try_start_7
    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 407
    .local v6, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    move-object/from16 v24, v4

    :try_start_8
    new-instance v4, Ljava/io/IOException;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v4    # "host":Ljava/net/InetAddress;
    .restart local v24    # "host":Ljava/net/InetAddress;
    move/from16 v25, v11

    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11    # "hostPort":I
    .restart local v25    # "hostPort":I
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v26, v12

    :try_start_a
    const-string v12, "Error code "

    .end local v12    # "justStarted":Z
    .restart local v26    # "justStarted":Z
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;->getError()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 478
    .end local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v5    # "recdPort":I
    .end local v6    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .end local v8    # "timeouts":I
    .end local v9    # "recdAddress":Ljava/net/InetAddress;
    .end local v20    # "wantReply":Z
    .end local v26    # "justStarted":Z
    .restart local v12    # "justStarted":Z
    :catchall_2
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v29, v3

    move-object/from16 v4, v24

    move/from16 v11, v25

    .end local v12    # "justStarted":Z
    .restart local v26    # "justStarted":Z
    goto/16 :goto_b

    .line 445
    .end local v26    # "justStarted":Z
    .restart local v8    # "timeouts":I
    .restart local v12    # "justStarted":Z
    .restart local v20    # "wantReply":Z
    :catch_6
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v4, v24

    move/from16 v11, v25

    .end local v12    # "justStarted":Z
    .restart local v26    # "justStarted":Z
    goto/16 :goto_6

    .line 435
    .end local v26    # "justStarted":Z
    .restart local v12    # "justStarted":Z
    :catch_7
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v4, v24

    move/from16 v11, v25

    .end local v12    # "justStarted":Z
    .restart local v26    # "justStarted":Z
    goto/16 :goto_7

    .line 478
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :catchall_3
    move-exception v0

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v29, v3

    move-object/from16 v4, v24

    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto/16 :goto_b

    .line 445
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v8    # "timeouts":I
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    .restart local v20    # "wantReply":Z
    :catch_8
    move-exception v0

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v4, v24

    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto/16 :goto_6

    .line 435
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :catch_9
    move-exception v0

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v4, v24

    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto/16 :goto_7

    .line 412
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "recdPort":I
    .restart local v9    # "recdAddress":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :pswitch_1
    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v24    # "host":Ljava/net/InetAddress;
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v4

    .line 414
    .local v4, "lastBlock":I
    if-ne v4, v7, :cond_5

    .line 415
    add-int/lit8 v7, v7, 0x1

    .line 416
    const v6, 0xffff

    if-le v7, v6, :cond_4

    .line 418
    const/4 v6, 0x0

    .line 420
    .end local v7    # "block":I
    .local v6, "block":I
    move v7, v6

    .end local v6    # "block":I
    .restart local v7    # "block":I
    :cond_4
    const/4 v6, 0x0

    .line 449
    .end local v20    # "wantReply":Z
    .local v6, "wantReply":Z
    move/from16 v20, v6

    goto :goto_5

    .line 422
    .end local v6    # "wantReply":Z
    .restart local v20    # "wantReply":Z
    :cond_5
    invoke-virtual {v1, v10}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->discardPackets(I)V

    .line 424
    goto :goto_5

    .line 426
    .end local v4    # "lastBlock":I
    :goto_4
    const-string v6, "Received unexpected packet type."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .local v4, "host":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :cond_6
    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v24    # "host":Ljava/net/InetAddress;
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    new-instance v4, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;

    const-string v6, "Unexpected host or port."

    const/4 v11, 0x5

    invoke-direct {v4, v9, v5, v11, v6}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 433
    .local v4, "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 449
    .end local v0    # "received":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v4    # "error":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPErrorPacket;
    .end local v5    # "recdPort":I
    .end local v9    # "recdAddress":Ljava/net/InetAddress;
    :goto_5
    nop

    .line 451
    move v0, v8

    move/from16 v5, v20

    move-object/from16 v4, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto/16 :goto_8

    .line 478
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    :catchall_4
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v4, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto/16 :goto_b

    .line 445
    .restart local v8    # "timeouts":I
    .restart local v20    # "wantReply":Z
    :catch_a
    move-exception v0

    move-object/from16 v4, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto :goto_6

    .line 435
    :catch_b
    move-exception v0

    move-object/from16 v4, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto/16 :goto_7

    .line 478
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .local v4, "host":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :catchall_5
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v29, v3

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v24    # "host":Ljava/net/InetAddress;
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto/16 :goto_b

    .line 445
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v8    # "timeouts":I
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    .restart local v20    # "wantReply":Z
    :catch_c
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v24    # "host":Ljava/net/InetAddress;
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto :goto_6

    .line 435
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :catch_d
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v11

    move/from16 v26, v12

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .end local v12    # "justStarted":Z
    .restart local v24    # "host":Ljava/net/InetAddress;
    .restart local v25    # "hostPort":I
    .restart local v26    # "justStarted":Z
    goto :goto_7

    .line 478
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    .end local v24    # "host":Ljava/net/InetAddress;
    .end local v25    # "hostPort":I
    .end local v26    # "justStarted":Z
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v11    # "hostPort":I
    .restart local v12    # "justStarted":Z
    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v11

    move-object/from16 v29, v3

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v11    # "hostPort":I
    .restart local v21    # "host":Ljava/net/InetAddress;
    .restart local v22    # "hostPort":I
    goto/16 :goto_b

    .line 445
    .end local v21    # "host":Ljava/net/InetAddress;
    .end local v22    # "hostPort":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .local v5, "wantReply":Z
    .restart local v8    # "timeouts":I
    .restart local v11    # "hostPort":I
    :catch_e
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v20, v5

    move/from16 v22, v11

    .line 446
    .end local v5    # "wantReply":Z
    .local v0, "e":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
    .restart local v20    # "wantReply":Z
    :goto_6
    :try_start_b
    const-string v5, "TFTPClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ack occurs TFTPPacketException"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad packet: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 478
    .end local v0    # "e":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    :catchall_7
    move-exception v0

    move-object/from16 v29, v3

    goto/16 :goto_b

    .line 435
    .restart local v5    # "wantReply":Z
    .restart local v8    # "timeouts":I
    :catch_f
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v20, v5

    move/from16 v22, v11

    .line 436
    .end local v5    # "wantReply":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "wantReply":Z
    :goto_7
    :try_start_c
    const-string v5, "TFTPClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ack occurs Exception"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    add-int/lit8 v8, v8, 0x1

    iget v5, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v8, v5, :cond_c

    .line 441
    const-string v5, "TFTPClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retry send data packet block:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", timeouts:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->bufferedSend(Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 449
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 451
    move v0, v8

    move/from16 v5, v20

    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    .local v0, "timeouts":I
    .restart local v5    # "wantReply":Z
    :goto_8
    if-nez v5, :cond_b

    .line 453
    if-eqz v13, :cond_7

    .line 454
    nop

    .line 478
    .end local v0    # "timeouts":I
    .end local v5    # "wantReply":Z
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->endBufferedOps()V

    .line 479
    nop

    .line 480
    return-void

    .line 458
    .restart local v0    # "timeouts":I
    .restart local v5    # "wantReply":Z
    :cond_7
    move v6, v10

    .line 459
    .local v6, "dataLength":I
    const/4 v8, 0x4

    .line 460
    .local v8, "offset":I
    const/4 v9, 0x0

    .line 461
    .local v9, "totalThisPacket":I
    const/16 v19, 0x0

    .local v19, "bytesRead":I
    :goto_9
    move/from16 v15, v19

    .line 462
    .end local v19    # "bytesRead":I
    .local v15, "bytesRead":I
    if-lez v6, :cond_9

    move/from16 v27, v0

    :try_start_d
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->_sendBuffer:[B

    .line 463
    .end local v0    # "timeouts":I
    .local v27, "timeouts":I
    invoke-virtual {v14, v0, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move/from16 v19, v0

    .end local v15    # "bytesRead":I
    .restart local v19    # "bytesRead":I
    if-lez v0, :cond_8

    .line 464
    add-int v8, v8, v19

    .line 465
    sub-int v6, v6, v19

    .line 466
    add-int v9, v9, v19

    .line 461
    move/from16 v0, v27

    goto :goto_9

    .line 468
    :cond_8
    move/from16 v15, v19

    goto :goto_a

    .end local v19    # "bytesRead":I
    .end local v27    # "timeouts":I
    .restart local v0    # "timeouts":I
    .restart local v15    # "bytesRead":I
    :cond_9
    move/from16 v27, v0

    .end local v0    # "timeouts":I
    .restart local v27    # "timeouts":I
    :goto_a
    if-ge v9, v10, :cond_a

    .line 470
    const/4 v0, 0x1

    .line 472
    .end local v13    # "lastAckWait":Z
    .local v0, "lastAckWait":Z
    move v13, v0

    .end local v0    # "lastAckWait":Z
    .restart local v13    # "lastAckWait":Z
    :cond_a
    :try_start_e
    invoke-virtual {v3, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 473
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->_sendBuffer:[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    move-object/from16 v28, v2

    const/4 v2, 0x4

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .local v28, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :try_start_f
    invoke-virtual {v3, v0, v2, v9}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;->setData([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 474
    move-object v2, v3

    .line 475
    .end local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    move-object/from16 v30, v2

    move-object/from16 v29, v3

    :try_start_10
    iget-wide v2, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesSent:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .local v29, "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .local v30, "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    move-object/from16 v32, v4

    move/from16 v31, v5

    int-to-long v4, v9

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "wantReply":Z
    .local v31, "wantReply":Z
    .local v32, "host":Ljava/net/InetAddress;
    add-long/2addr v2, v4

    :try_start_11
    iput-wide v2, v1, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->totalBytesSent:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 476
    .end local v6    # "dataLength":I
    .end local v8    # "offset":I
    .end local v9    # "totalThisPacket":I
    .end local v15    # "bytesRead":I
    .end local v27    # "timeouts":I
    .end local v31    # "wantReply":Z
    nop

    .line 373
    move v5, v7

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-object/from16 v4, v32

    goto/16 :goto_1

    .line 478
    :catchall_8
    move-exception v0

    move-object/from16 v2, v30

    move-object/from16 v4, v32

    goto :goto_b

    .end local v32    # "host":Ljava/net/InetAddress;
    .restart local v4    # "host":Ljava/net/InetAddress;
    :catchall_9
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v2, v30

    .end local v4    # "host":Ljava/net/InetAddress;
    .restart local v32    # "host":Ljava/net/InetAddress;
    goto :goto_b

    .end local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v30    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v32    # "host":Ljava/net/InetAddress;
    .restart local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    :catchall_a
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v32, v4

    move-object/from16 v2, v28

    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v4    # "host":Ljava/net/InetAddress;
    .restart local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v32    # "host":Ljava/net/InetAddress;
    goto :goto_b

    .end local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v32    # "host":Ljava/net/InetAddress;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    :catchall_b
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v32, v4

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v4    # "host":Ljava/net/InetAddress;
    .restart local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v32    # "host":Ljava/net/InetAddress;
    goto :goto_b

    .line 375
    .end local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v32    # "host":Ljava/net/InetAddress;
    .local v0, "timeouts":I
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "wantReply":Z
    :cond_b
    move/from16 v27, v0

    move-object/from16 v32, v4

    move/from16 v31, v5

    .end local v0    # "timeouts":I
    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "wantReply":Z
    .restart local v27    # "timeouts":I
    .restart local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v31    # "wantReply":Z
    .restart local v32    # "host":Ljava/net/InetAddress;
    goto/16 :goto_2

    .line 439
    .end local v27    # "timeouts":I
    .end local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v31    # "wantReply":Z
    .end local v32    # "host":Ljava/net/InetAddress;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .local v8, "timeouts":I
    .restart local v20    # "wantReply":Z
    :cond_c
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    .end local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :try_start_12
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connection timed out."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 478
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "timeouts":I
    .end local v20    # "wantReply":Z
    :catchall_c
    move-exception v0

    move-object/from16 v2, v28

    goto :goto_b

    .end local v28    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .end local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .restart local v2    # "sent":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacket;
    .restart local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :catchall_d
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    goto :goto_b

    .end local v7    # "block":I
    .local v5, "block":I
    :catchall_e
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move v7, v5

    .end local v3    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    .end local v5    # "block":I
    .restart local v7    # "block":I
    .restart local v29    # "data":Lcom/xiaopeng/commonfunc/utils/tftp/TFTPDataPacket;
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->endBufferedOps()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1
    .param p1, "numTimeouts"    # I

    .line 103
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 104
    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0

    .line 106
    :cond_0
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPClient;->__maxTimeouts:I

    .line 108
    :goto_0
    return-void
.end method
