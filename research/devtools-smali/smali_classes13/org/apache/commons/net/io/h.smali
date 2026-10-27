.class public final Lorg/apache/commons/net/io/h;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/c;Z)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    move-object v0, p1

    .line 97
    nop

    .line 98
    if-lez p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    :goto_0
    new-array v7, v1, [B

    .line 102
    const-wide/16 v1, 0x0

    :goto_1
    move-object v8, p0

    :try_start_0
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_6

    .line 107
    if-nez v4, :cond_3

    .line 109
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 110
    if-gez v3, :cond_1

    .line 111
    goto :goto_3

    .line 113
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 114
    if-eqz p6, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :cond_2
    const-wide/16 v3, 0x1

    add-long v9, v1, v3

    .line 118
    if-eqz p5, :cond_5

    .line 119
    const/4 v4, 0x1

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    :try_start_1
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/c;->a(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 124
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v7, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    if-eqz p6, :cond_4

    .line 126
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    :cond_4
    int-to-long v5, v4

    add-long v9, v1, v5

    .line 129
    if-eqz p5, :cond_5

    .line 130
    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    :try_start_3
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/c;->a(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    move-wide v1, v9

    goto :goto_4

    .line 102
    :cond_5
    :goto_2
    move-wide v1, v9

    goto :goto_1

    .line 138
    :cond_6
    :goto_3
    nop

    .line 140
    return-wide v1

    .line 134
    :catch_1
    move-exception v0

    .line 136
    :goto_4
    new-instance v3, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v3
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 365
    if-eqz p0, :cond_0

    .line 367
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception p0

    .line 372
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 0

    .line 382
    if-eqz p0, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception p0

    .line 389
    :cond_0
    :goto_0
    return-void
.end method
