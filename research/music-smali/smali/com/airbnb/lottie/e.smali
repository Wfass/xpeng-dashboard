.class public Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/airbnb/lottie/e;->b:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method private static a(Lcom/airbnb/lottie/d;Ljava/lang/String;)Lcom/airbnb/lottie/g;
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->l()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/g;

    .line 475
    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a(Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/l;
    .locals 1

    .line 491
    new-instance v0, Lcom/airbnb/lottie/l;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/c;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 355
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/parser/moshi/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/airbnb/lottie/parser/moshi/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/c;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 362
    :try_start_0
    invoke-static {p0}, Loc;->a(Lcom/airbnb/lottie/parser/moshi/c;)Lcom/airbnb/lottie/d;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 364
    invoke-static {}, Llg;->a()Llg;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Llg;->a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V

    .line 366
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/l;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 371
    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    :try_start_1
    new-instance v0, Lcom/airbnb/lottie/l;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 371
    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    .line 373
    :cond_3
    throw p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 298
    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/parser/moshi/c;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 301
    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    .line 303
    :cond_1
    throw p1
.end method

.method private static synthetic a(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    .line 223
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    .line 225
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/airbnb/lottie/e;->b(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 389
    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lpb;->a(Ljava/io/Closeable;)V

    .line 392
    throw p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 222
    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$e$_MYiqb2ep-KlqKki65ejDY6qYt8;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/airbnb/lottie/-$$Lambda$e$_MYiqb2ep-KlqKki65ejDY6qYt8;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p2, v1}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/airbnb/lottie/-$$Lambda$e$vJI1nfk2ocLxF02adNdpXQXBasc;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/lottie/-$$Lambda$e$vJI1nfk2ocLxF02adNdpXQXBasc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/airbnb/lottie/-$$Lambda$e$EYIJv9KpsVPG8yY5ceOKM2TzGQc;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$e$EYIJv9KpsVPG8yY5ceOKM2TzGQc;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;>;)",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {}, Llg;->a()Llg;

    move-result-object v0

    invoke-virtual {v0, p0}, Llg;->a(Ljava/lang/String;)Lcom/airbnb/lottie/d;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 491
    new-instance p0, Lcom/airbnb/lottie/m;

    new-instance p1, Lcom/airbnb/lottie/-$$Lambda$e$EFFBJ6B0pPOmj7ngOo2z2wRnTR0;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/-$$Lambda$e$EFFBJ6B0pPOmj7ngOo2z2wRnTR0;-><init>(Lcom/airbnb/lottie/d;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 493
    sget-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    sget-object p1, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/m;

    return-object p0

    .line 497
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/m;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_3

    .line 499
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 500
    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/m;->a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;

    .line 504
    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$e$mNOA4nOnHVnzFfRPlD48TlCiBXE;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$e$mNOA4nOnHVnzFfRPlD48TlCiBXE;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/m;->c(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;

    .line 512
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 513
    sget-object p1, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private static a(Lokio/BufferedSource;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 455
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object p0

    .line 456
    sget-object v1, Lcom/airbnb/lottie/e;->b:[B

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 457
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v5

    if-eq v5, v4, :cond_0

    .line 458
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-interface {p0}, Lokio/BufferedSource;->close()V

    const/4 p0, 0x1

    .line 462
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to check zip file header"

    .line 467
    invoke-static {v1, p0}, Lox;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 465
    :catch_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 501
    sget-object p2, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 502
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    .line 505
    sget-object p2, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 506
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;I)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->b(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    .line 256
    invoke-static {p0}, Lcom/airbnb/lottie/e;->a(Lokio/BufferedSource;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-interface {p0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, p2}, Lcom/airbnb/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    invoke-interface {p0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 261
    new-instance p1, Lcom/airbnb/lottie/l;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 291
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 403
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 406
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manifest.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 407
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 408
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/c;

    move-result-object v1

    const/4 v3, 0x0

    .line 410
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/parser/moshi/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/d;

    move-object v3, v1

    goto :goto_2

    :cond_2
    const-string v1, ".png"

    .line 411
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "/"

    .line 412
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 413
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 414
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 427
    new-instance p0, Lcom/airbnb/lottie/l;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 430
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/d;Ljava/lang/String;)Lcom/airbnb/lottie/g;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 433
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lcom/airbnb/lottie/g;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/g;->b()I

    move-result v4

    invoke-static {v0, v2, v4}, Lpb;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 438
    :cond_8
    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->l()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/g;

    invoke-virtual {v1}, Lcom/airbnb/lottie/g;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    .line 440
    new-instance p0, Lcom/airbnb/lottie/l;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_a
    if-eqz p1, :cond_b

    .line 445
    invoke-static {}, Llg;->a()Llg;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Llg;->a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V

    .line 447
    :cond_b
    new-instance p0, Lcom/airbnb/lottie/l;

    invoke-direct {p0, v3}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 422
    new-instance p1, Lcom/airbnb/lottie/l;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/m<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 156
    new-instance v0, Lcom/airbnb/lottie/-$$Lambda$e$1-7OlilRgh3OsLM5NjS0Z1ASQQg;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/lottie/-$$Lambda$e$1-7OlilRgh3OsLM5NjS0Z1ASQQg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/m;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/l<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lottie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0

    .line 187
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lcom/airbnb/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 191
    new-instance p1, Lcom/airbnb/lottie/l;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static synthetic c(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    .line 283
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/airbnb/lottie/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_night_"

    goto :goto_0

    :cond_0
    const-string p0, "_day_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Landroid/content/Context;)Lnf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnf;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Llg;->a()Llg;

    move-result-object p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    invoke-virtual {p1, p2, v0}, Llg;->a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic lambda$1-7OlilRgh3OsLM5NjS0Z1ASQQg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$EFFBJ6B0pPOmj7ngOo2z2wRnTR0(Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/l;
    .locals 0

    invoke-static {p0}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$EYIJv9KpsVPG8yY5ceOKM2TzGQc(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->c(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_MYiqb2ep-KlqKki65ejDY6qYt8(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/airbnb/lottie/e;->a(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$kB7E7JzsF7bmktav3X_QrNwHjdo(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/d;)V

    return-void
.end method

.method public static synthetic lambda$mNOA4nOnHVnzFfRPlD48TlCiBXE(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$vJI1nfk2ocLxF02adNdpXQXBasc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    move-result-object p0

    return-object p0
.end method
