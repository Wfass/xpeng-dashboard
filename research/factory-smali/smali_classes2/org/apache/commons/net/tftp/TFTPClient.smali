.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 82
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 32
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p4

    .line 149
    move/from16 v3, p5

    const/4 v4, 0x0

    .line 150
    .local v4, "bytesRead":I
    const/4 v5, 0x0

    .line 151
    .local v5, "lastBlock":I
    const/4 v6, 0x1

    .line 152
    .local v6, "block":I
    const/4 v7, 0x0

    .line 153
    .local v7, "hostPort":I
    const/4 v8, 0x0

    .line 155
    .local v8, "dataLength":I
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 157
    if-nez v2, :cond_0

    .line 158
    new-instance v9, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v10, p3

    invoke-direct {v9, v10}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    goto :goto_0

    .line 161
    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local p3    # "output":Ljava/io/OutputStream;
    :cond_0
    move-object/from16 v10, p3

    move-object v9, v10

    .end local p3    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :goto_0
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v11, p1

    invoke-direct {v10, v0, v3, v11, v2}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 162
    .local v10, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v12, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v3, v13}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 164
    .local v12, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 166
    const/4 v14, 0x0

    const/4 v15, 0x1

    move/from16 v16, v4

    move-object v4, v0

    move-object v0, v14

    .line 169
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v0, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v4, "host":Ljava/net/InetAddress;
    .local v14, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v15, "justStarted":Z
    .local v16, "bytesRead":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 170
    const/16 v17, 0x1

    .line 171
    .local v17, "wantReply":Z
    move-object/from16 v18, v0

    move v0, v13

    .local v0, "timeouts":I
    .local v18, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :goto_2
    move/from16 v19, v0

    .line 174
    .end local v0    # "timeouts":I
    .local v19, "timeouts":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    move-object/from16 v20, v0

    .line 177
    .local v20, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object/from16 v13, v20

    invoke-virtual {v13}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v0

    .end local v20    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v13, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    move/from16 v21, v0

    .line 178
    .local v21, "recdPort":I
    invoke-virtual {v13}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2e
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_2c
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    move-object/from16 v22, v0

    .line 179
    .local v22, "recdAddress":Ljava/net/InetAddress;
    if-eqz v15, :cond_3

    .line 180
    const/4 v15, 0x0

    .line 181
    move/from16 v2, v21

    if-eq v2, v3, :cond_2

    .line 188
    .end local v21    # "recdPort":I
    .local v2, "recdPort":I
    move v7, v2

    .line 189
    :try_start_2
    invoke-virtual {v12, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 190
    move-object/from16 v3, v22

    invoke-virtual {v4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v20

    .end local v22    # "recdAddress":Ljava/net/InetAddress;
    .local v3, "recdAddress":Ljava/net/InetAddress;
    if-nez v20, :cond_1

    .line 192
    move-object v4, v3

    .line 193
    invoke-virtual {v12, v4}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 194
    invoke-virtual {v10, v4}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_1
    move/from16 v24, v5

    goto/16 :goto_3

    .line 264
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    :catchall_0
    move-exception v0

    move/from16 v24, v5

    goto/16 :goto_11

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_0
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_a

    .line 248
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_1
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_b

    .line 244
    :catch_2
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_c

    .line 182
    .restart local v2    # "recdPort":I
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "recdAddress":Ljava/net/InetAddress;
    :cond_2
    move-object/from16 v3, v22

    .end local v22    # "recdAddress":Ljava/net/InetAddress;
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    :try_start_3
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v23, v4

    :try_start_4
    const-string v4, "INCORRECT SOURCE PORT"
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v4    # "host":Ljava/net/InetAddress;
    .local v23, "host":Ljava/net/InetAddress;
    move/from16 v24, v5

    const/4 v5, 0x5

    :try_start_5
    invoke-direct {v0, v3, v2, v5, v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .end local v5    # "lastBlock":I
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v24, "lastBlock":I
    move-object v14, v0

    .line 185
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 186
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect source port ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") in request reply."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 264
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    :catchall_1
    move-exception v0

    move-object/from16 v4, v23

    goto/16 :goto_11

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_3
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    move/from16 v5, v24

    goto/16 :goto_a

    .line 248
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_4
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    move/from16 v5, v24

    goto/16 :goto_b

    .line 244
    :catch_5
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    move/from16 v5, v24

    goto/16 :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .end local v24    # "lastBlock":I
    .restart local v5    # "lastBlock":I
    :catchall_2
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v4, v23

    .end local v5    # "lastBlock":I
    .restart local v24    # "lastBlock":I
    goto/16 :goto_11

    .line 252
    .end local v24    # "lastBlock":I
    .restart local v5    # "lastBlock":I
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_6
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    .end local v5    # "lastBlock":I
    .restart local v24    # "lastBlock":I
    goto/16 :goto_a

    .line 248
    .end local v24    # "lastBlock":I
    .restart local v5    # "lastBlock":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_7
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    .end local v5    # "lastBlock":I
    .restart local v24    # "lastBlock":I
    goto/16 :goto_b

    .line 244
    .end local v24    # "lastBlock":I
    .restart local v5    # "lastBlock":I
    :catch_8
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v27, v10

    move-object/from16 v4, v23

    .end local v5    # "lastBlock":I
    .restart local v24    # "lastBlock":I
    goto/16 :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    :catchall_3
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    goto/16 :goto_11

    .line 252
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_9
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v27, v10

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    goto/16 :goto_a

    .line 248
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_a
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v27, v10

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    goto/16 :goto_b

    .line 244
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    :catch_b
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v27, v10

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    goto/16 :goto_c

    .line 199
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "recdPort":I
    .restart local v22    # "recdAddress":Ljava/net/InetAddress;
    :cond_3
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v2, v21

    move-object/from16 v3, v22

    .end local v5    # "lastBlock":I
    .end local v21    # "recdPort":I
    .end local v22    # "recdAddress":Ljava/net/InetAddress;
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    :goto_3
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne v2, v7, :cond_a

    .line 200
    invoke-virtual {v13}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2b
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_2a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_29
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    .line 236
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v25, v8

    :try_start_8
    const-string v8, "Received unexpected packet type ("

    .end local v8    # "dataLength":I
    .local v25, "dataLength":I
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .end local v25    # "dataLength":I
    .restart local v8    # "dataLength":I
    :catchall_4
    move-exception v0

    move/from16 v25, v8

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    goto/16 :goto_11

    .line 252
    .end local v25    # "dataLength":I
    .restart local v8    # "dataLength":I
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_c
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    goto/16 :goto_a

    .line 248
    .end local v25    # "dataLength":I
    .restart local v8    # "dataLength":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_d
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    goto/16 :goto_b

    .line 244
    .end local v25    # "dataLength":I
    .restart local v8    # "dataLength":I
    :catch_e
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    goto/16 :goto_c

    .line 203
    .end local v25    # "dataLength":I
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v8    # "dataLength":I
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_4
    move/from16 v25, v8

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    move-object v0, v13

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v14, v0

    .line 204
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " received: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 264
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    :catchall_5
    move-exception v0

    move/from16 v8, v25

    goto/16 :goto_11

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_f
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_7

    .line 248
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_10
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_8

    .line 244
    :catch_11
    move-exception v0

    move-object/from16 v27, v10

    goto/16 :goto_9

    .line 207
    .end local v25    # "dataLength":I
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v8    # "dataLength":I
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_5
    move/from16 v25, v8

    .end local v8    # "dataLength":I
    .restart local v25    # "dataLength":I
    :try_start_9
    move-object v0, v13

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_25
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_24
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_23
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    move-object v5, v0

    .line 208
    .local v5, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_a
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v0
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_22
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_21
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_23
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move v8, v0

    .line 209
    .end local v25    # "dataLength":I
    .restart local v8    # "dataLength":I
    :try_start_b
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v0
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_20
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_1e
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move/from16 v26, v0

    .line 211
    .end local v24    # "lastBlock":I
    .local v26, "lastBlock":I
    move-object/from16 v27, v10

    move/from16 v10, v26

    if-ne v10, v6, :cond_7

    .line 213
    .end local v26    # "lastBlock":I
    .local v10, "lastBlock":I
    .local v27, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_start_c
    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v11

    invoke-virtual {v9, v0, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_13
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 220
    nop

    .line 221
    add-int/lit8 v6, v6, 0x1

    .line 222
    const v0, 0xffff

    if-le v6, v0, :cond_6

    .line 224
    const/4 v6, 0x0

    .line 226
    :cond_6
    const/4 v0, 0x0

    .line 254
    .end local v17    # "wantReply":Z
    .local v0, "wantReply":Z
    move/from16 v17, v0

    move-object/from16 v28, v5

    move/from16 v29, v8

    goto/16 :goto_5

    .line 264
    .end local v0    # "wantReply":Z
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v19    # "timeouts":I
    :catchall_6
    move-exception v0

    move/from16 v24, v10

    goto/16 :goto_10

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_12
    move-exception v0

    move v5, v10

    goto/16 :goto_a

    .line 248
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_13
    move-exception v0

    move-object/from16 v18, v5

    move v5, v10

    goto/16 :goto_b

    .line 244
    :catch_14
    move-exception v0

    move-object/from16 v18, v5

    move v5, v10

    goto/16 :goto_c

    .line 214
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_15
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_d
    new-instance v11, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_19
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v28, v5

    :try_start_e
    const-string v5, "File write failed."
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_16
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_18
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v28, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    move/from16 v29, v8

    const/4 v8, 0x3

    :try_start_f
    invoke-direct {v11, v4, v7, v8, v5}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .end local v8    # "dataLength":I
    .local v29, "dataLength":I
    move-object v14, v11

    .line 218
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 219
    throw v0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    :catch_16
    move-exception v0

    move/from16 v29, v8

    move v5, v10

    move-object/from16 v18, v28

    .end local v8    # "dataLength":I
    .restart local v29    # "dataLength":I
    goto/16 :goto_b

    .line 244
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    :catch_17
    move-exception v0

    move/from16 v29, v8

    move v5, v10

    move-object/from16 v18, v28

    .end local v8    # "dataLength":I
    .restart local v29    # "dataLength":I
    goto/16 :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v19    # "timeouts":I
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    :catchall_7
    move-exception v0

    move/from16 v29, v8

    move/from16 v24, v10

    move-object/from16 v10, v27

    .end local v8    # "dataLength":I
    .restart local v29    # "dataLength":I
    goto/16 :goto_11

    .line 252
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_18
    move-exception v0

    move/from16 v29, v8

    move v5, v10

    .end local v8    # "dataLength":I
    .restart local v29    # "dataLength":I
    goto/16 :goto_a

    .line 248
    .end local v29    # "dataLength":I
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "dataLength":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_19
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v29, v8

    move v5, v10

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "dataLength":I
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_b

    .line 244
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "dataLength":I
    :catch_1a
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v29, v8

    move v5, v10

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "dataLength":I
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_c

    .line 228
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "dataLength":I
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_7
    move-object/from16 v28, v5

    move/from16 v29, v8

    const v0, 0xffff

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "dataLength":I
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v29    # "dataLength":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_f .. :try_end_f} :catch_1b
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 229
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v6, -0x1

    :goto_4
    if-ne v10, v0, :cond_9

    .line 230
    const/4 v0, 0x0

    .line 254
    .end local v17    # "wantReply":Z
    .local v0, "wantReply":Z
    move/from16 v17, v0

    .end local v0    # "wantReply":Z
    .restart local v17    # "wantReply":Z
    :cond_9
    :goto_5
    move-object/from16 v18, v28

    move/from16 v25, v29

    goto/16 :goto_6

    .line 264
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v19    # "timeouts":I
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catchall_8
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v10, v27

    move/from16 v8, v29

    goto/16 :goto_11

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_1b
    move-exception v0

    move v5, v10

    move/from16 v8, v29

    goto/16 :goto_a

    .line 248
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_1c
    move-exception v0

    move v5, v10

    move-object/from16 v18, v28

    move/from16 v8, v29

    goto/16 :goto_b

    .line 244
    :catch_1d
    move-exception v0

    move v5, v10

    move-object/from16 v18, v28

    move/from16 v8, v29

    goto/16 :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v19    # "timeouts":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    .local v10, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "lastBlock":I
    :catchall_9
    move-exception v0

    move/from16 v29, v8

    move-object/from16 v27, v10

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_11

    .line 252
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v29    # "dataLength":I
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_1e
    move-exception v0

    move/from16 v29, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_a

    .line 248
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v29    # "dataLength":I
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_1f
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v29, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_b

    .line 244
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_20
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v29, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v29    # "dataLength":I
    goto/16 :goto_c

    .line 248
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v29    # "dataLength":I
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    :catch_21
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v27, v10

    move/from16 v5, v24

    move/from16 v8, v25

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto/16 :goto_b

    .line 244
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_22
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v27, v10

    move/from16 v5, v24

    move/from16 v8, v25

    move-object/from16 v18, v28

    .end local v5    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto/16 :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v19    # "timeouts":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v28    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_a
    move-exception v0

    move-object/from16 v27, v10

    move/from16 v8, v25

    goto/16 :goto_11

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_23
    move-exception v0

    move-object/from16 v27, v10

    move/from16 v5, v24

    move/from16 v8, v25

    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_a

    .line 248
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_24
    move-exception v0

    move-object/from16 v27, v10

    move/from16 v5, v24

    move/from16 v8, v25

    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_b

    .line 244
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_25
    move-exception v0

    move-object/from16 v27, v10

    move/from16 v5, v24

    move/from16 v8, v25

    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_c

    .line 239
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdPort":I
    .restart local v3    # "recdAddress":Ljava/net/InetAddress;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_a
    move/from16 v25, v8

    move-object/from16 v27, v10

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_start_10
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v5, "Unexpected host or port."

    const/4 v8, 0x5

    invoke-direct {v0, v3, v2, v8, v5}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v14, v0

    .line 242
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_10} :catch_27
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_10 .. :try_end_10} :catch_26
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 254
    .end local v2    # "recdPort":I
    .end local v3    # "recdAddress":Ljava/net/InetAddress;
    .end local v13    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move/from16 v10, v24

    .line 255
    .end local v24    # "lastBlock":I
    .local v10, "lastBlock":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_6
    move v5, v10

    move/from16 v0, v19

    move/from16 v8, v25

    goto/16 :goto_e

    .line 264
    .end local v10    # "lastBlock":I
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .restart local v24    # "lastBlock":I
    :catchall_b
    move-exception v0

    move/from16 v8, v25

    goto/16 :goto_10

    .line 252
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_26
    move-exception v0

    .end local v24    # "lastBlock":I
    .end local v25    # "dataLength":I
    .local v5, "lastBlock":I
    .restart local v8    # "dataLength":I
    :goto_7
    move/from16 v5, v24

    move/from16 v8, v25

    goto :goto_a

    .line 248
    .end local v5    # "lastBlock":I
    .end local v8    # "dataLength":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v24    # "lastBlock":I
    .restart local v25    # "dataLength":I
    :catch_27
    move-exception v0

    .end local v24    # "lastBlock":I
    .end local v25    # "dataLength":I
    .restart local v5    # "lastBlock":I
    .restart local v8    # "dataLength":I
    :goto_8
    move/from16 v5, v24

    move/from16 v8, v25

    goto/16 :goto_b

    .line 244
    .end local v5    # "lastBlock":I
    .end local v8    # "dataLength":I
    .restart local v24    # "lastBlock":I
    .restart local v25    # "dataLength":I
    :catch_28
    move-exception v0

    .end local v24    # "lastBlock":I
    .end local v25    # "dataLength":I
    .restart local v5    # "lastBlock":I
    .restart local v8    # "dataLength":I
    :goto_9
    move/from16 v5, v24

    move/from16 v8, v25

    goto/16 :goto_c

    .line 264
    .end local v5    # "lastBlock":I
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v10, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "lastBlock":I
    :catchall_c
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_11

    .line 252
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_29
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_a

    .line 248
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_2a
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_b

    .line 244
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_2b
    move-exception v0

    move/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v5, v24

    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_c

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v17    # "wantReply":Z
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v19    # "timeouts":I
    .end local v24    # "lastBlock":I
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "lastBlock":I
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_d
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v8

    move-object/from16 v27, v10

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .end local v8    # "dataLength":I
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v23    # "host":Ljava/net/InetAddress;
    .restart local v24    # "lastBlock":I
    .restart local v25    # "dataLength":I
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto/16 :goto_11

    .line 252
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "lastBlock":I
    .end local v25    # "dataLength":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    .restart local v8    # "dataLength":I
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v17    # "wantReply":Z
    .restart local v19    # "timeouts":I
    :catch_2c
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v8

    move-object/from16 v27, v10

    .line 253
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_a
    :try_start_11
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad packet: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_2d
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v8

    move-object/from16 v27, v10

    .line 249
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/io/InterruptedIOException;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_b
    add-int/lit8 v2, v19, 0x1

    .end local v19    # "timeouts":I
    .local v2, "timeouts":I
    iget v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v2, v3, :cond_b

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    goto :goto_d

    .line 250
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v10, "Connection timed out."

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "timeouts":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v19    # "timeouts":I
    :catch_2e
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v8

    move-object/from16 v27, v10

    .line 245
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_c
    add-int/lit8 v2, v19, 0x1

    .end local v19    # "timeouts":I
    .restart local v2    # "timeouts":I
    iget v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-ge v2, v3, :cond_e

    .line 254
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_d
    nop

    .line 255
    move v0, v2

    .end local v2    # "timeouts":I
    .local v0, "timeouts":I
    :goto_e
    if-nez v17, :cond_d

    .line 257
    :try_start_12
    invoke-virtual {v12, v5}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    .line 258
    move-object v10, v12

    .line 259
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    add-int v16, v16, v8

    .line 260
    :try_start_13
    iget-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    move-object/from16 v31, v4

    move/from16 v30, v5

    int-to-long v4, v8

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .local v30, "lastBlock":I
    .local v31, "host":Ljava/net/InetAddress;
    add-long/2addr v2, v4

    :try_start_14
    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    .line 261
    .end local v0    # "timeouts":I
    .end local v17    # "wantReply":Z
    const/16 v0, 0x200

    if-eq v8, v0, :cond_c

    .line 262
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 265
    nop

    .line 266
    return v16

    .line 166
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :cond_c
    move-object/from16 v0, v18

    move/from16 v5, v30

    move-object/from16 v4, v31

    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v11, p1

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 264
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catchall_e
    move-exception v0

    move/from16 v24, v30

    move-object/from16 v4, v31

    goto :goto_11

    .end local v30    # "lastBlock":I
    .end local v31    # "host":Ljava/net/InetAddress;
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    :catchall_f
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v30, v5

    goto :goto_f

    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_10
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v30, v5

    move-object/from16 v10, v27

    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "lastBlock":I
    :goto_f
    move/from16 v24, v30

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v30    # "lastBlock":I
    .restart local v31    # "host":Ljava/net/InetAddress;
    goto :goto_11

    .line 171
    .end local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v24    # "lastBlock":I
    .end local v30    # "lastBlock":I
    .end local v31    # "host":Ljava/net/InetAddress;
    .restart local v0    # "timeouts":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    .restart local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v17    # "wantReply":Z
    .restart local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_d
    move-object/from16 v31, v4

    move/from16 v30, v5

    move-object/from16 v10, v27

    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v11, p1

    const/4 v13, 0x0

    .end local v4    # "host":Ljava/net/InetAddress;
    .end local v5    # "lastBlock":I
    .restart local v30    # "lastBlock":I
    .restart local v31    # "host":Ljava/net/InetAddress;
    goto/16 :goto_2

    .line 246
    .end local v14    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v18    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v30    # "lastBlock":I
    .end local v31    # "host":Ljava/net/InetAddress;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v2    # "timeouts":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    .restart local v5    # "lastBlock":I
    :cond_e
    :try_start_15
    new-instance v3, Ljava/io/IOException;

    const-string v10, "Connection timed out."

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    .line 264
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v2    # "timeouts":I
    .end local v17    # "wantReply":Z
    :catchall_11
    move-exception v0

    move/from16 v24, v5

    .end local v5    # "lastBlock":I
    .end local v27    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v10    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v24    # "lastBlock":I
    :goto_10
    move-object/from16 v10, v27

    goto :goto_11

    .end local v24    # "lastBlock":I
    .restart local v5    # "lastBlock":I
    :catchall_12
    move-exception v0

    move-object/from16 v27, v10

    move/from16 v24, v5

    .end local v5    # "lastBlock":I
    .restart local v24    # "lastBlock":I
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    throw v0
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
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

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 543
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 503
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 523
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 33
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 356
    move/from16 v10, p5

    const/4 v0, 0x0

    .line 357
    .local v0, "block":I
    const/4 v11, 0x0

    .line 358
    .local v11, "hostPort":I
    const/4 v12, 0x1

    .line 359
    .local v12, "justStarted":Z
    const/4 v13, 0x0

    .line 361
    .local v13, "lastAckWait":Z
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .line 363
    if-nez v2, :cond_0

    .line 364
    new-instance v3, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .line 367
    .end local p3    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v14, v3

    goto :goto_0

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local p3    # "input":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v4, p3

    move-object v14, v4

    .end local p3    # "input":Ljava/io/InputStream;
    .local v14, "input":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v15, p1

    move-object/from16 v9, p4

    invoke-direct {v3, v9, v10, v15, v2}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    move-object/from16 v16, v3

    .line 368
    .local v16, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v17, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v8, 0x4

    const/16 v18, 0x0

    move-object/from16 v3, v17

    move-object v4, v9

    move v5, v10

    move/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 370
    .local v3, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 376
    const/4 v5, 0x0

    move-object/from16 v6, p4

    move v7, v0

    move-object v0, v5

    move-object/from16 v5, v16

    const/4 v8, 0x0

    .end local v16    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v0, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v5, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v6, "host":Ljava/net/InetAddress;
    .local v7, "block":I
    .local v8, "lastBlock":I
    :goto_1
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 377
    const/4 v9, 0x1

    .line 378
    .local v9, "wantReply":Z
    move/from16 v16, v8

    move-object v8, v0

    const/4 v0, 0x0

    .local v0, "timeouts":I
    .local v8, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v16, "lastBlock":I
    :goto_2
    move/from16 v17, v0

    .line 381
    .end local v0    # "timeouts":I
    .local v17, "timeouts":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    .line 382
    .local v0, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v19, v18

    .line 383
    .local v19, "recdAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move/from16 v20, v18

    .line 386
    .local v20, "recdPort":I
    if-eqz v12, :cond_3

    .line 387
    const/4 v12, 0x0

    .line 388
    move/from16 v4, v20

    if-eq v4, v10, :cond_2

    .line 395
    .end local v20    # "recdPort":I
    .local v4, "recdPort":I
    move v11, v4

    .line 396
    :try_start_2
    invoke-virtual {v3, v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 397
    move-object/from16 v2, v19

    invoke-virtual {v6, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v18

    .end local v19    # "recdAddress":Ljava/net/InetAddress;
    .local v2, "recdAddress":Ljava/net/InetAddress;
    if-nez v18, :cond_1

    .line 398
    move-object v6, v2

    .line 399
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 400
    invoke-virtual {v5, v6}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :cond_1
    move-object/from16 v21, v5

    move-object/from16 v23, v8

    goto/16 :goto_3

    .line 475
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdAddress":Ljava/net/InetAddress;
    .end local v4    # "recdPort":I
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v9    # "wantReply":Z
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    :catchall_0
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v21, v5

    goto/16 :goto_14

    .line 445
    .restart local v9    # "wantReply":Z
    .restart local v17    # "timeouts":I
    :catch_0
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v26, v9

    goto/16 :goto_d

    .line 441
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v16    # "lastBlock":I
    :catch_1
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v26, v9

    goto/16 :goto_e

    .line 437
    :catch_2
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v26, v9

    goto/16 :goto_f

    .line 389
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v4    # "recdPort":I
    .restart local v19    # "recdAddress":Ljava/net/InetAddress;
    :cond_2
    move-object/from16 v2, v19

    .end local v19    # "recdAddress":Ljava/net/InetAddress;
    .restart local v2    # "recdAddress":Ljava/net/InetAddress;
    move-object/from16 v21, v5

    :try_start_3
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v21, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object/from16 v22, v6

    :try_start_4
    const-string v6, "INCORRECT SOURCE PORT"
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v6    # "host":Ljava/net/InetAddress;
    .local v22, "host":Ljava/net/InetAddress;
    move-object/from16 v23, v8

    const/4 v8, 0x5

    :try_start_5
    invoke-direct {v5, v2, v4, v8, v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v8, v5

    .line 392
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_start_6
    invoke-virtual {v1, v8}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 393
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v24, v8

    :try_start_7
    const-string v8, "Incorrect source port ("

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v24, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") in request reply."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 441
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdAddress":Ljava/net/InetAddress;
    .end local v4    # "recdPort":I
    :catch_3
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v22

    move-object/from16 v8, v24

    goto/16 :goto_e

    .line 437
    :catch_4
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v22

    move-object/from16 v8, v24

    goto/16 :goto_f

    .line 441
    .end local v24    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_5
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v26, v9

    move-object/from16 v6, v22

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v24    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_e

    .line 437
    .end local v24    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_6
    move-exception v0

    move-object/from16 v24, v8

    move/from16 v26, v9

    move-object/from16 v6, v22

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v24    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_f

    .line 441
    .end local v24    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v23, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_7
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    goto/16 :goto_e

    .line 437
    :catch_8
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    goto/16 :goto_f

    .line 475
    .end local v9    # "wantReply":Z
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catchall_1
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v6, v22

    goto/16 :goto_14

    .line 445
    .restart local v9    # "wantReply":Z
    .restart local v17    # "timeouts":I
    :catch_9
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v22

    goto/16 :goto_d

    .line 441
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v16    # "lastBlock":I
    :catch_a
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v26, v9

    move-object/from16 v6, v22

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_e

    .line 437
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_b
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v26, v9

    move-object/from16 v6, v22

    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_f

    .line 475
    .end local v9    # "wantReply":Z
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    .end local v22    # "host":Ljava/net/InetAddress;
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v6    # "host":Ljava/net/InetAddress;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v30, v3

    .end local v6    # "host":Ljava/net/InetAddress;
    .restart local v22    # "host":Ljava/net/InetAddress;
    goto/16 :goto_14

    .line 445
    .end local v22    # "host":Ljava/net/InetAddress;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    .restart local v17    # "timeouts":I
    :catch_c
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .restart local v22    # "host":Ljava/net/InetAddress;
    goto/16 :goto_d

    .line 441
    .end local v22    # "host":Ljava/net/InetAddress;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v16    # "lastBlock":I
    :catch_d
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v22    # "host":Ljava/net/InetAddress;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_e

    .line 437
    .end local v22    # "host":Ljava/net/InetAddress;
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_e
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v22    # "host":Ljava/net/InetAddress;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    goto/16 :goto_f

    .line 405
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v22    # "host":Ljava/net/InetAddress;
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v19    # "recdAddress":Ljava/net/InetAddress;
    .restart local v20    # "recdPort":I
    :cond_3
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v2, v19

    move/from16 v4, v20

    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v19    # "recdAddress":Ljava/net/InetAddress;
    .end local v20    # "recdPort":I
    .restart local v2    # "recdAddress":Ljava/net/InetAddress;
    .restart local v4    # "recdPort":I
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_3
    :try_start_8
    invoke-virtual {v6, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne v4, v11, :cond_6

    .line 407
    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v5
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_1b
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    packed-switch v5, :pswitch_data_0

    .line 428
    move-object/from16 v25, v6

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .local v25, "host":Ljava/net/InetAddress;
    .local v26, "wantReply":Z
    :try_start_9
    new-instance v5, Ljava/io/IOException;
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_18
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_5

    .line 409
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    :pswitch_0
    :try_start_a
    move-object v5, v0

    check-cast v5, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_1c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_1b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v8, v5

    .line 410
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_start_b
    new-instance v5, Ljava/io/IOException;
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_12
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_1b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v25, v6

    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "host":Ljava/net/InetAddress;
    .restart local v25    # "host":Ljava/net/InetAddress;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move/from16 v26, v9

    :try_start_d
    const-string v9, "Error code "

    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_16
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 445
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdAddress":Ljava/net/InetAddress;
    .end local v4    # "recdPort":I
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    .end local v26    # "wantReply":Z
    .restart local v9    # "wantReply":Z
    :catch_f
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v25

    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    goto/16 :goto_d

    .line 441
    .end local v26    # "wantReply":Z
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    :catch_10
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v25

    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    goto/16 :goto_e

    .line 437
    .end local v26    # "wantReply":Z
    .restart local v9    # "wantReply":Z
    :catch_11
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v6, v25

    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    goto/16 :goto_f

    .line 441
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    :catch_12
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v26, v9

    goto/16 :goto_b

    .line 437
    :catch_13
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v26, v9

    goto/16 :goto_c

    .line 414
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdAddress":Ljava/net/InetAddress;
    .restart local v4    # "recdPort":I
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_1
    move-object/from16 v25, v6

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .restart local v25    # "host":Ljava/net/InetAddress;
    .restart local v26    # "wantReply":Z
    :try_start_e
    move-object v5, v0

    check-cast v5, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-virtual {v5}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v5
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_19
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_18
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 416
    .end local v16    # "lastBlock":I
    .local v5, "lastBlock":I
    if-ne v5, v7, :cond_5

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 418
    const v6, 0xffff

    if-le v7, v6, :cond_4

    .line 420
    const/4 v7, 0x0

    .line 422
    :cond_4
    const/4 v6, 0x0

    .line 447
    .end local v26    # "wantReply":Z
    .local v6, "wantReply":Z
    move v9, v6

    goto :goto_4

    .line 424
    .end local v6    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    :cond_5
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_f} :catch_14
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_f .. :try_end_f} :catch_18
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 426
    nop

    .line 447
    move/from16 v9, v26

    .end local v26    # "wantReply":Z
    .restart local v9    # "wantReply":Z
    :goto_4
    move/from16 v16, v5

    move-object/from16 v8, v23

    goto :goto_6

    .line 441
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdAddress":Ljava/net/InetAddress;
    .end local v4    # "recdPort":I
    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    :catch_14
    move-exception v0

    move/from16 v16, v5

    goto :goto_7

    .line 437
    :catch_15
    move-exception v0

    move/from16 v16, v5

    goto :goto_9

    .line 428
    .end local v5    # "lastBlock":I
    .restart local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v2    # "recdAddress":Ljava/net/InetAddress;
    .restart local v4    # "recdPort":I
    .restart local v16    # "lastBlock":I
    :goto_5
    :try_start_10
    const-string v6, "Received unexpected packet type."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 431
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .local v6, "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    :cond_6
    move-object/from16 v25, v6

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .restart local v25    # "host":Ljava/net/InetAddress;
    .restart local v26    # "wantReply":Z
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v6, "Unexpected host or port."

    const/4 v8, 0x5

    invoke-direct {v5, v2, v4, v8, v6}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_10 .. :try_end_10} :catch_18
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object v8, v5

    .line 435
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_start_11
    invoke-virtual {v1, v8}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_11 .. :try_end_11} :catch_18
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 447
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v2    # "recdAddress":Ljava/net/InetAddress;
    .end local v4    # "recdPort":I
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move/from16 v9, v26

    .line 449
    .end local v26    # "wantReply":Z
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    :goto_6
    move/from16 v0, v17

    move-object/from16 v6, v25

    goto/16 :goto_11

    .line 441
    .end local v9    # "wantReply":Z
    .restart local v26    # "wantReply":Z
    :catch_16
    move-exception v0

    goto :goto_8

    .line 437
    :catch_17
    move-exception v0

    goto :goto_a

    .line 475
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    .end local v26    # "wantReply":Z
    :catchall_3
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v6, v25

    goto/16 :goto_14

    .line 445
    .restart local v17    # "timeouts":I
    .restart local v26    # "wantReply":Z
    :catch_18
    move-exception v0

    move-object/from16 v6, v25

    goto :goto_d

    .line 441
    .restart local v16    # "lastBlock":I
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_19
    move-exception v0

    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v25    # "host":Ljava/net/InetAddress;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_7
    move-object/from16 v8, v23

    :goto_8
    move-object/from16 v6, v25

    goto :goto_e

    .line 437
    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v25    # "host":Ljava/net/InetAddress;
    :catch_1a
    move-exception v0

    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v25    # "host":Ljava/net/InetAddress;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_9
    move-object/from16 v8, v23

    :goto_a
    move-object/from16 v6, v25

    goto/16 :goto_f

    .line 475
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    .end local v26    # "wantReply":Z
    :catchall_4
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v30, v3

    .end local v6    # "host":Ljava/net/InetAddress;
    .restart local v25    # "host":Ljava/net/InetAddress;
    goto/16 :goto_14

    .line 445
    .end local v25    # "host":Ljava/net/InetAddress;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    .restart local v17    # "timeouts":I
    :catch_1b
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v26, v9

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .restart local v25    # "host":Ljava/net/InetAddress;
    .restart local v26    # "wantReply":Z
    goto :goto_d

    .line 441
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_1c
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v26, v9

    move-object/from16 v8, v23

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v25    # "host":Ljava/net/InetAddress;
    .restart local v26    # "wantReply":Z
    :goto_b
    goto :goto_e

    .line 437
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    .restart local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_1d
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v26, v9

    move-object/from16 v8, v23

    .end local v6    # "host":Ljava/net/InetAddress;
    .end local v9    # "wantReply":Z
    .end local v23    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v25    # "host":Ljava/net/InetAddress;
    .restart local v26    # "wantReply":Z
    :goto_c
    goto :goto_f

    .line 475
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    .end local v17    # "timeouts":I
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v25    # "host":Ljava/net/InetAddress;
    .end local v26    # "wantReply":Z
    .local v5, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "host":Ljava/net/InetAddress;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v3

    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v6    # "host":Ljava/net/InetAddress;
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v22    # "host":Ljava/net/InetAddress;
    goto/16 :goto_14

    .line 445
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v22    # "host":Ljava/net/InetAddress;
    .restart local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "host":Ljava/net/InetAddress;
    .restart local v9    # "wantReply":Z
    .restart local v17    # "timeouts":I
    :catch_1e
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v26, v9

    .line 446
    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v9    # "wantReply":Z
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v26    # "wantReply":Z
    :goto_d
    :try_start_12
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v26    # "wantReply":Z
    .restart local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    :catch_1f
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v26, v9

    .line 442
    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v9    # "wantReply":Z
    .local v0, "e":Ljava/io/InterruptedIOException;
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v26    # "wantReply":Z
    :goto_e
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "timeouts":I
    .local v2, "timeouts":I
    iget v4, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v2, v4, :cond_7

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    goto :goto_10

    .line 443
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 475
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "timeouts":I
    .end local v26    # "wantReply":Z
    :catchall_6
    move-exception v0

    move-object/from16 v30, v3

    goto/16 :goto_14

    .line 437
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    .restart local v17    # "timeouts":I
    :catch_20
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move/from16 v26, v9

    .line 438
    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v9    # "wantReply":Z
    .local v0, "e":Ljava/net/SocketException;
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v26    # "wantReply":Z
    :goto_f
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "timeouts":I
    .restart local v2    # "timeouts":I
    :try_start_13
    iget v4, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-ge v2, v4, :cond_d

    .line 447
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_10
    nop

    .line 449
    move v0, v2

    move/from16 v9, v26

    .end local v2    # "timeouts":I
    .end local v26    # "wantReply":Z
    .local v0, "timeouts":I
    .restart local v9    # "wantReply":Z
    :goto_11
    if-nez v9, :cond_c

    .line 451
    if-eqz v13, :cond_8

    .line 452
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    nop

    .line 475
    .end local v0    # "timeouts":I
    .end local v9    # "wantReply":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 476
    nop

    .line 477
    return-void

    .line 455
    .restart local v0    # "timeouts":I
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    :cond_8
    const/16 v2, 0x200

    .line 456
    .local v2, "dataLength":I
    const/4 v4, 0x4

    .line 457
    .local v4, "offset":I
    const/4 v5, 0x0

    .line 458
    .local v5, "totalThisPacket":I
    move/from16 v27, v0

    move v0, v5

    move v5, v4

    move v4, v2

    const/4 v2, 0x0

    .line 460
    .local v0, "totalThisPacket":I
    .local v2, "bytesRead":I
    .local v4, "dataLength":I
    .local v5, "offset":I
    .local v27, "timeouts":I
    :goto_12
    if-lez v4, :cond_a

    move/from16 v28, v2

    :try_start_14
    iget-object v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    .end local v2    # "bytesRead":I
    .local v28, "bytesRead":I
    invoke-virtual {v14, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move/from16 v17, v2

    .end local v28    # "bytesRead":I
    .local v17, "bytesRead":I
    if-lez v2, :cond_9

    .line 461
    add-int v5, v5, v17

    .line 462
    sub-int v4, v4, v17

    .line 463
    add-int v0, v0, v17

    .line 458
    move/from16 v2, v17

    goto :goto_12

    .line 465
    :cond_9
    move/from16 v28, v17

    goto :goto_13

    .end local v17    # "bytesRead":I
    .restart local v2    # "bytesRead":I
    :cond_a
    move/from16 v28, v2

    .end local v2    # "bytesRead":I
    .restart local v28    # "bytesRead":I
    :goto_13
    const/16 v2, 0x200

    if-ge v0, v2, :cond_b

    .line 467
    const/4 v2, 0x1

    .line 469
    .end local v13    # "lastAckWait":Z
    .local v2, "lastAckWait":Z
    move v13, v2

    .end local v2    # "lastAckWait":Z
    .restart local v13    # "lastAckWait":Z
    :cond_b
    :try_start_15
    invoke-virtual {v3, v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 470
    iget-object v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move/from16 v29, v4

    const/4 v4, 0x4

    .end local v4    # "dataLength":I
    .local v29, "dataLength":I
    invoke-virtual {v3, v2, v4, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 471
    move-object v2, v3

    .line 472
    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v2, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object/from16 v31, v2

    move-object/from16 v30, v3

    :try_start_16
    iget-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    .end local v2    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v30, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v31, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    move/from16 v32, v5

    int-to-long v4, v0

    .end local v5    # "offset":I
    .local v32, "offset":I
    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 473
    .end local v0    # "totalThisPacket":I
    .end local v9    # "wantReply":Z
    .end local v27    # "timeouts":I
    .end local v28    # "bytesRead":I
    .end local v29    # "dataLength":I
    .end local v32    # "offset":I
    nop

    .line 376
    move-object v0, v8

    move/from16 v8, v16

    move-object/from16 v3, v30

    move-object/from16 v5, v31

    move/from16 v2, p2

    goto/16 :goto_1

    .line 475
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v16    # "lastBlock":I
    :catchall_7
    move-exception v0

    move-object/from16 v21, v31

    goto :goto_14

    .line 378
    .end local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v31    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "timeouts":I
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v9    # "wantReply":Z
    .restart local v16    # "lastBlock":I
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_c
    move/from16 v27, v0

    move-object/from16 v5, v21

    move/from16 v2, p2

    .end local v0    # "timeouts":I
    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v27    # "timeouts":I
    .restart local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto/16 :goto_2

    .line 439
    .end local v8    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v9    # "wantReply":Z
    .end local v16    # "lastBlock":I
    .end local v27    # "timeouts":I
    .end local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v0, "e":Ljava/net/SocketException;
    .local v2, "timeouts":I
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v26    # "wantReply":Z
    :cond_d
    move-object/from16 v30, v3

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :try_start_17
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Connection timed out."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 475
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v2    # "timeouts":I
    .end local v26    # "wantReply":Z
    :catchall_8
    move-exception v0

    goto :goto_14

    .end local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catchall_9
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    goto :goto_14

    .end local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v5, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catchall_a
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v21, v5

    .end local v3    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v5    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v21    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v30    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1
    .param p1, "numTimeouts"    # I

    .line 96
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 97
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0

    .line 99
    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 101
    :goto_0
    return-void
.end method
