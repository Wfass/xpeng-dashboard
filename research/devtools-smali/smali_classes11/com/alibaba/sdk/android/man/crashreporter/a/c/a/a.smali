.class public Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;)[B
    .locals 2

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 24
    nop

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->a(Ljava/util/Map;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    return-object v0

    .line 32
    :cond_0
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 33
    :goto_0
    nop

    .line 36
    return-object v1

    .line 34
    :cond_1
    return-object v1
.end method
