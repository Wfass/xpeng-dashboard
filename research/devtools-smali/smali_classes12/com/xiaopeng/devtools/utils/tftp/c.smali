.class public Lcom/xiaopeng/devtools/utils/tftp/c;
.super Lcom/xiaopeng/devtools/utils/tftp/a;
.source "TFTPClient.java"


# instance fields
.field private pB:J

.field private pC:I

.field private pD:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/devtools/utils/tftp/a;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/utils/tftp/c;->pB:J

    .line 73
    iput-wide v0, p0, Lcom/xiaopeng/devtools/utils/tftp/c;->pD:J

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/devtools/utils/tftp/c;->pC:I

    .line 82
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V

    .line 319
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 146
    move/from16 v10, p6

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 151
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pD:J

    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v2, Lorg/apache/commons/net/io/f;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/f;-><init>(Ljava/io/InputStream;)V

    .line 158
    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object v11, v3

    :goto_0
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v7, v2

    .line 159
    new-instance v12, Lcom/xiaopeng/devtools/utils/tftp/g;

    move-object v2, v12

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    move-object/from16 v6, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/xiaopeng/devtools/utils/tftp/g;-><init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V

    .line 160
    new-instance v2, Lcom/xiaopeng/devtools/utils/tftp/d;

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pw:[B

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v19}, Lcom/xiaopeng/devtools/utils/tftp/d;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 162
    invoke-virtual {v1, v10}, Lcom/xiaopeng/devtools/utils/tftp/c;->bM(I)V

    .line 168
    move-object/from16 v5, p4

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v1, v12}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Lcom/xiaopeng/devtools/utils/tftp/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    nop

    .line 170
    nop

    .line 173
    move v9, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v6, v5

    move v5, v0

    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/devtools/utils/tftp/c;->lI()Lcom/xiaopeng/devtools/utils/tftp/h;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/h;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    .line 175
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/h;->getPort()I

    move-result v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v5, :cond_4

    .line 179
    nop

    .line 180
    move/from16 v5, p5

    if-eq v3, v5, :cond_3

    .line 187
    nop

    .line 188
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/xiaopeng/devtools/utils/tftp/d;->setPort(I)V

    .line 189
    invoke-virtual {v6, v15}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_2

    .line 190
    nop

    .line 191
    :try_start_3
    invoke-virtual {v2, v15}, Lcom/xiaopeng/devtools/utils/tftp/d;->setAddress(Ljava/net/InetAddress;)V

    .line 192
    invoke-virtual {v12, v15}, Lcom/xiaopeng/devtools/utils/tftp/h;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    move v7, v3

    move-object v6, v15

    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    move v7, v3

    move-object v6, v15

    goto :goto_3

    .line 197
    :cond_2
    move v7, v3

    :goto_2
    const/4 v4, 0x0

    goto :goto_4

    .line 230
    :catch_1
    move-exception v0

    move v7, v3

    goto :goto_3

    .line 181
    :cond_3
    :try_start_4
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/e;

    const-string v4, "INCORRECT SOURCE PORT"

    const/4 v5, 0x5

    invoke-direct {v0, v15, v3, v5, v4}, Lcom/xiaopeng/devtools/utils/tftp/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 184
    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Lcom/xiaopeng/devtools/utils/tftp/h;)V

    .line 185
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect source port ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") in request reply."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    :catch_2
    move-exception v0

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 197
    :cond_4
    move v4, v5

    :goto_4
    :try_start_5
    invoke-virtual {v6, v15}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_7

    if-ne v3, v7, :cond_7

    .line 199
    :try_start_6
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/h;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/io/IOException;

    goto :goto_6

    .line 201
    :pswitch_0
    check-cast v0, Lcom/xiaopeng/devtools/utils/tftp/e;

    .line 202
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error code "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/e;->getError()I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " received: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :pswitch_1
    check-cast v0, Lcom/xiaopeng/devtools/utils/tftp/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/b;->eN()I

    move-result v0

    .line 209
    if-ne v0, v9, :cond_6

    .line 210
    add-int/lit8 v0, v9, 0x1

    .line 211
    const v3, 0xffff

    if-le v0, v3, :cond_5

    .line 213
    nop

    .line 215
    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move v9, v0

    .line 244
    :goto_5
    move/from16 v20, v4

    const/4 v14, 0x0

    goto :goto_7

    .line 217
    :cond_6
    invoke-virtual {v1, v10}, Lcom/xiaopeng/devtools/utils/tftp/c;->bL(I)V

    .line 219
    nop

    .line 244
    move/from16 v20, v4

    goto :goto_7

    .line 221
    :goto_6
    const-string v3, "Received unexpected packet type."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    :catch_3
    move-exception v0

    goto :goto_8

    .line 224
    :cond_7
    :try_start_7
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/e;

    const-string v5, "Unexpected host or port."
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v20, v4

    const/4 v4, 0x5

    :try_start_8
    invoke-direct {v0, v15, v3, v4, v5}, Lcom/xiaopeng/devtools/utils/tftp/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 228
    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Lcom/xiaopeng/devtools/utils/tftp/h;)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 244
    :goto_7
    nop

    .line 246
    move/from16 v5, v20

    goto/16 :goto_9

    .line 230
    :catch_4
    move-exception v0

    move/from16 v4, v20

    goto :goto_8

    :catch_5
    move-exception v0

    move/from16 v20, v4

    goto :goto_8

    .line 240
    :catch_6
    move-exception v0

    .line 241
    :try_start_9
    const-string v2, "TFTPClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ack occurs TFTPPacketException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :catch_7
    move-exception v0

    move v4, v5

    .line 231
    :goto_8
    const-string v3, "TFTPClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Receive "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " ack occurs Exception"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    add-int/lit8 v13, v13, 0x1

    iget v0, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pC:I

    if-ge v13, v0, :cond_b

    .line 236
    const-string v0, "TFTPClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry send data packet block:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeouts:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1, v12}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Lcom/xiaopeng/devtools/utils/tftp/h;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 244
    nop

    .line 246
    move v5, v4

    :goto_9
    if-nez v14, :cond_1

    .line 248
    if-eqz v8, :cond_8

    .line 249
    nop

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/devtools/utils/tftp/c;->eM()V

    .line 274
    nop

    .line 275
    return-void

    .line 253
    :cond_8
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    const/4 v0, 0x4

    move v4, v0

    move v3, v10

    const/4 v12, 0x0

    :goto_a
    if-lez v3, :cond_9

    :try_start_a
    iget-object v13, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pw:[B

    .line 258
    invoke-virtual {v11, v13, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-lez v13, :cond_9

    .line 259
    add-int/2addr v4, v13

    .line 260
    sub-int/2addr v3, v13

    .line 261
    add-int/2addr v12, v13

    goto :goto_a

    .line 263
    :cond_9
    if-ge v12, v10, :cond_a

    .line 265
    nop

    .line 267
    const/4 v8, 0x1

    :cond_a
    invoke-virtual {v2, v9}, Lcom/xiaopeng/devtools/utils/tftp/d;->bN(I)V

    .line 268
    iget-object v3, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pw:[B

    invoke-virtual {v2, v3, v0, v12}, Lcom/xiaopeng/devtools/utils/tftp/d;->setData([BII)V

    .line 269
    nop

    .line 270
    iget-wide v3, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pD:J

    int-to-long v12, v12

    add-long/2addr v3, v12

    iput-wide v3, v1, Lcom/xiaopeng/devtools/utils/tftp/c;->pD:J

    .line 271
    nop

    .line 168
    move-object v12, v2

    move v0, v5

    move-object v5, v6

    move v6, v9

    goto/16 :goto_1

    .line 234
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/devtools/utils/tftp/c;->eM()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
