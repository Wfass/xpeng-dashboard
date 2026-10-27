.class public Lcom/alibaba/sdk/android/man/crashreporter/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/util/Map;
    .locals 0

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/g;->b([B)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 65
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/Map;)[B
    .locals 2

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([B)Ljava/util/Map;
    .locals 3

    .line 70
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 73
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object v2

    .line 80
    :catch_0
    move-exception p0

    .line 81
    return-object v0

    .line 78
    :catch_1
    move-exception p0

    .line 79
    return-object v0

    .line 76
    :catch_2
    move-exception p0

    .line 77
    return-object v0
.end method

.method public static c(Ljava/util/Map;)[B
    .locals 2

    .line 25
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 26
    nop

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/g;->a(Ljava/util/Map;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    return-object p0

    .line 34
    :cond_0
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 35
    :goto_0
    nop

    .line 38
    return-object v0

    .line 36
    :cond_1
    return-object v0
.end method
