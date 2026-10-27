.class public Lcom/xiaopeng/commonfunc/utils/tftp/c;
.super Lcom/xiaopeng/commonfunc/utils/tftp/a;
.source "TFTPClient.java"


# instance fields
.field private pB:J

.field private pC:I

.field private pD:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/tftp/a;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pB:J

    .line 71
    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pD:J

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pC:I

    .line 80
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 7
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

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;II)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p5

    .line 143
    move/from16 v11, p6

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 149
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pB:J

    .line 151
    if-nez p2, :cond_0

    .line 152
    new-instance v2, Lorg/apache/commons/net/io/e;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/e;-><init>(Ljava/io/OutputStream;)V

    .line 155
    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object v12, v3

    :goto_0
    new-instance v13, Lcom/xiaopeng/commonfunc/utils/tftp/f;

    const-wide/16 v7, 0x0

    move-object v2, v13

    move-object/from16 v3, p4

    move v4, v10

    move v5, v11

    move-object/from16 v6, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/xiaopeng/commonfunc/utils/tftp/f;-><init>(Ljava/net/InetAddress;IILjava/lang/String;JI)V

    .line 156
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/tftp/b;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v10, v3}, Lcom/xiaopeng/commonfunc/utils/tftp/b;-><init>(Ljava/net/InetAddress;II)V

    .line 158
    invoke-virtual {v1, v11}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->bM(I)V

    .line 160
    nop

    .line 163
    move-object v5, v0

    move v6, v3

    move v8, v6

    move v9, v8

    move v14, v9

    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {v1, v13}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    nop

    .line 165
    nop

    .line 168
    move/from16 v17, v3

    move v15, v9

    const/16 v16, 0x1

    move v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    move v5, v0

    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->eL()Lcom/xiaopeng/commonfunc/utils/tftp/h;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/h;->getPort()I

    move-result v3

    .line 172
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/h;->getAddress()Ljava/net/InetAddress;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    move/from16 v18, v7

    const/4 v7, 0x5

    if-eqz v5, :cond_3

    .line 174
    nop

    .line 175
    if-eq v3, v10, :cond_2

    .line 182
    nop

    .line 183
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/xiaopeng/commonfunc/utils/tftp/b;->setPort(I)V

    .line 184
    invoke-virtual {v6, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    .line 185
    nop

    .line 186
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/b;->setAddress(Ljava/net/InetAddress;)V

    .line 187
    invoke-virtual {v13, v4}, Lcom/xiaopeng/commonfunc/utils/tftp/h;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    move v5, v3

    move-object v6, v4

    goto :goto_3

    .line 247
    :catch_0
    move-exception v0

    move v5, v3

    move-object v6, v4

    goto :goto_4

    .line 243
    :catch_1
    move-exception v0

    move v5, v3

    move-object v6, v4

    goto :goto_5

    .line 192
    :cond_1
    move v5, v3

    :goto_3
    const/16 v18, 0x0

    goto :goto_6

    .line 247
    :catch_2
    move-exception v0

    move v5, v3

    goto :goto_4

    .line 243
    :catch_3
    move-exception v0

    move v5, v3

    goto :goto_5

    .line 176
    :cond_2
    :try_start_4
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/tftp/e;

    const-string v5, "INCORRECT SOURCE PORT"

    invoke-direct {v0, v4, v3, v7, v5}, Lcom/xiaopeng/commonfunc/utils/tftp/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V

    .line 180
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
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    :catch_4
    move-exception v0

    move/from16 v5, v18

    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_f

    .line 243
    :catch_5
    move-exception v0

    move/from16 v5, v18

    :goto_5
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 192
    :cond_3
    move/from16 v23, v18

    move/from16 v18, v5

    move/from16 v5, v23

    :goto_6
    :try_start_5
    invoke-virtual {v6, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v19, :cond_8

    if-ne v3, v5, :cond_8

    .line 193
    :try_start_6
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/h;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 235
    new-instance v3, Ljava/io/IOException;

    goto/16 :goto_c

    .line 196
    :pswitch_0
    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/e;

    .line 197
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error code "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/e;->getError()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " received: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :pswitch_1
    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/b;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/b;->eN()I

    move-result v3
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 201
    :try_start_7
    invoke-virtual {v2, v3}, Lcom/xiaopeng/commonfunc/utils/tftp/b;->bN(I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    nop

    .line 203
    :try_start_8
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    nop

    .line 253
    move-object v13, v2

    move v4, v3

    move/from16 v20, v5

    goto/16 :goto_d

    .line 247
    :catch_6
    move-exception v0

    move-object v13, v2

    goto :goto_7

    .line 243
    :catch_7
    move-exception v0

    move-object v13, v2

    goto :goto_8

    .line 247
    :catch_8
    move-exception v0

    :goto_7
    move v9, v3

    goto/16 :goto_f

    .line 243
    :catch_9
    move-exception v0

    :goto_8
    move v9, v3

    goto/16 :goto_10

    .line 206
    :pswitch_2
    :try_start_9
    check-cast v0, Lcom/xiaopeng/commonfunc/utils/tftp/d;

    .line 207
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/d;->getDataLength()I

    move-result v3
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_15
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 208
    :try_start_a
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/d;->eN()I

    move-result v4
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 210
    const v7, 0xffff

    if-ne v4, v8, :cond_5

    .line 212
    :try_start_b
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/d;->getData()[B

    move-result-object v9

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/d;->getDataOffset()I

    move-result v0

    invoke-virtual {v12, v9, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 219
    nop

    .line 220
    add-int/lit8 v0, v8, 0x1

    .line 221
    if-le v0, v7, :cond_4

    .line 223
    nop

    .line 225
    const/4 v8, 0x0

    goto :goto_9

    :cond_4
    move v8, v0

    :goto_9
    goto :goto_b

    .line 247
    :catch_a
    move-exception v0

    move v15, v3

    move v9, v4

    goto/16 :goto_f

    .line 243
    :catch_b
    move-exception v0

    move v15, v3

    move v9, v4

    goto/16 :goto_10

    .line 213
    :catch_c
    move-exception v0

    .line 214
    :try_start_c
    new-instance v7, Lcom/xiaopeng/commonfunc/utils/tftp/e;

    const/4 v9, 0x3

    const-string v15, "File write failed."

    invoke-direct {v7, v6, v5, v9, v15}, Lcom/xiaopeng/commonfunc/utils/tftp/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 217
    invoke-virtual {v1, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V

    .line 218
    throw v0

    .line 227
    :cond_5
    invoke-virtual {v1, v11}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->bL(I)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 228
    if-nez v8, :cond_6

    goto :goto_a

    :cond_6
    add-int/lit8 v7, v8, -0x1

    :goto_a
    if-ne v4, v7, :cond_7

    .line 229
    nop

    .line 253
    :goto_b
    move/from16 v20, v5

    const/16 v16, 0x0

    goto :goto_e

    :cond_7
    move/from16 v20, v5

    goto :goto_e

    .line 247
    :catch_d
    move-exception v0

    move v15, v3

    goto/16 :goto_f

    .line 243
    :catch_e
    move-exception v0

    move v15, v3

    goto/16 :goto_10

    .line 235
    :goto_c
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unexpected packet type ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/h;->getType()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_f
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 247
    :catch_f
    move-exception v0

    goto :goto_f

    .line 243
    :catch_10
    move-exception v0

    goto/16 :goto_10

    .line 238
    :cond_8
    :try_start_e
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/tftp/e;

    const-string v7, "Unexpected host or port."
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_13
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v20, v5

    const/4 v5, 0x5

    :try_start_f
    invoke-direct {v0, v4, v3, v5, v7}, Lcom/xiaopeng/commonfunc/utils/tftp/e;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 241
    invoke-virtual {v1, v0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_f} :catch_11
    .catch Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException; {:try_start_f .. :try_end_f} :catch_15
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 253
    move v4, v9

    :goto_d
    move v3, v15

    .line 254
    :goto_e
    move v15, v3

    move v9, v4

    move/from16 v5, v18

    move/from16 v7, v20

    goto :goto_12

    .line 247
    :catch_11
    move-exception v0

    move/from16 v5, v20

    goto :goto_f

    .line 243
    :catch_12
    move-exception v0

    move/from16 v5, v20

    goto :goto_10

    .line 247
    :catch_13
    move-exception v0

    move/from16 v20, v5

    goto :goto_f

    .line 243
    :catch_14
    move-exception v0

    move/from16 v20, v5

    goto :goto_10

    .line 251
    :catch_15
    move-exception v0

    .line 252
    :try_start_10
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :catch_16
    move-exception v0

    move/from16 v18, v7

    move/from16 v23, v18

    move/from16 v18, v5

    move/from16 v5, v23

    .line 248
    :goto_f
    add-int/lit8 v0, v17, 0x1

    iget v3, v1, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pC:I

    if-ge v0, v3, :cond_9

    goto :goto_11

    .line 249
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :catch_17
    move-exception v0

    move/from16 v18, v7

    move/from16 v23, v18

    move/from16 v18, v5

    move/from16 v5, v23

    .line 244
    :goto_10
    add-int/lit8 v0, v17, 0x1

    iget v3, v1, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pC:I

    if-ge v0, v3, :cond_c

    .line 253
    :goto_11
    nop

    .line 254
    move/from16 v17, v0

    move v7, v5

    move/from16 v5, v18

    :goto_12
    if-nez v16, :cond_b

    .line 256
    invoke-virtual {v2, v9}, Lcom/xiaopeng/commonfunc/utils/tftp/b;->bN(I)V

    .line 257
    nop

    .line 258
    add-int/2addr v14, v15

    .line 259
    iget-wide v3, v1, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pB:J

    move/from16 v21, v5

    move-object/from16 v22, v6

    int-to-long v5, v15

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/xiaopeng/commonfunc/utils/tftp/c;->pB:J

    .line 260
    if-eq v15, v11, :cond_a

    .line 261
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->a(Lcom/xiaopeng/commonfunc/utils/tftp/h;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->eM()V

    .line 264
    nop

    .line 265
    return v14

    .line 163
    :cond_a
    move-object v13, v2

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v15

    move/from16 v0, v21

    move-object/from16 v5, v22

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 168
    :cond_b
    move/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 245
    :cond_c
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/commonfunc/utils/tftp/c;->eM()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
