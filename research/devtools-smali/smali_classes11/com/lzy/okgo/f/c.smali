.class public Lcom/lzy/okgo/f/c;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 278
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    invoke-static {p0, v0}, Lcom/lzy/okgo/f/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 58
    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    invoke-static {p0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/Object;)[B
    .locals 3

    .line 129
    nop

    .line 130
    nop

    .line 132
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    invoke-static {v2}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    .line 137
    :catch_0
    move-exception p0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 137
    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_0

    .line 140
    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    .line 137
    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 138
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    invoke-static {v2}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    nop

    .line 143
    return-object v0

    .line 140
    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static s([B)Ljava/lang/Object;
    .locals 4

    .line 147
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 148
    :cond_0
    nop

    .line 149
    nop

    .line 151
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 154
    :catch_0
    move-exception v2

    goto :goto_0

    .line 157
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 154
    :catch_1
    move-exception v2

    move-object p0, v0

    goto :goto_0

    .line 157
    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    .line 154
    :catch_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 155
    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    invoke-static {p0}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    nop

    .line 160
    return-object v0

    .line 157
    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_1
    invoke-static {v0}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/f/c;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
