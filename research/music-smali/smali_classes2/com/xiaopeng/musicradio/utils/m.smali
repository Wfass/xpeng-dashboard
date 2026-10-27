.class public Lcom/xiaopeng/musicradio/utils/m;
.super Ljava/lang/Object;
.source "CopyUtils.java"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "deepCopy: "

    const-string v1, "Utils"

    .line 14
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 16
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 19
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x3

    .line 22
    new-array v8, v8, [Ljava/io/Closeable;

    aput-object v5, v8, v3

    aput-object p0, v8, v4

    const/4 p0, 0x2

    aput-object v6, v8, p0

    invoke-static {v8}, Lcom/xiaopeng/musicradio/utils/l;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 27
    invoke-static {v1, v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 25
    invoke-static {v1, v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_0
    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/l;->a([Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0
.end method
