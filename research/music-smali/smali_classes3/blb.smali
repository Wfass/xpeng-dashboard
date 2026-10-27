.class public Lblb;
.super Ljava/lang/Object;
.source "ExoHelper.java"


# static fields
.field private static a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# direct methods
.method public static a()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 48
    invoke-static {p0}, Lblb;->b(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;"
        }
    .end annotation

    .line 41
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    invoke-static {p1}, Lblb;->a(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    const-wide/32 v0, 0xa00000

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object v7
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "xpHash="

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    aget-object p0, v0, v2

    return-object p0

    :cond_0
    const-string/jumbo v0, "xmcdn.com"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "?"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static b(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;"
        }
    .end annotation

    .line 52
    sget-object v0, Lblb;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v1, 0x0

    const-string/jumbo v2, "xiaopengmusic"

    .line 56
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil;->buildCronetEngine(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/net/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;-><init>(Lorg/chromium/net/d;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    sput-object v1, Lblb;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 59
    sget-object p0, Lblb;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-object p0

    .line 61
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, v2, p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    sput-object v0, Lblb;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 62
    sget-object p0, Lblb;->a:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string/jumbo v0, "xpHash="

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    sub-int/2addr v0, v1

    .line 146
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
