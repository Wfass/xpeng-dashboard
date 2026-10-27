.class public Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;
.super Ljava/lang/Object;
.source "CronetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;,
        Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;,
        Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final READ_BUFFER_SIZE_BYTES:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "CronetDataSource"


# instance fields
.field private bytesRemaining:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cronetEngine:Lorg/chromium/net/d;

.field private volatile currentConnectTimeoutMs:J

.field private currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private currentUrlRequest:Lorg/chromium/net/w;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private exception:Ljava/io/IOException;

.field private final executor:Ljava/util/concurrent/Executor;

.field private finished:Z

.field private final handleSetCookieRequests:Z

.field private final keepPostFor302Redirects:Z

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private final readTimeoutMs:I

.field private final requestPriority:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final resetTimeoutOnRedirects:Z

.field private responseInfo:Lorg/chromium/net/x;

.field final urlRequestCallback:Lorg/chromium/net/w$b;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.cronet"

    .line 74
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lorg/chromium/net/d;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/p;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/d;",
            "Ljava/util/concurrent/Executor;",
            "IIIZZ",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;",
            ">;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->cronetEngine:Lorg/chromium/net/d;

    .line 353
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    .line 354
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestPriority:I

    .line 355
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->connectTimeoutMs:I

    .line 356
    iput p5, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readTimeoutMs:I

    .line 357
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->resetTimeoutOnRedirects:Z

    .line 358
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->handleSetCookieRequests:Z

    .line 359
    iput-object p8, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->userAgent:Ljava/lang/String;

    .line 360
    iput-object p9, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 361
    iput-object p10, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/p;

    .line 362
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->keepPostFor302Redirects:Z

    .line 363
    iput-object p12, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 364
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 365
    new-instance p1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$UrlRequestCallback;-><init>(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->urlRequestCallback:Lorg/chromium/net/w$b;

    .line 366
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 367
    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lorg/chromium/net/w;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/chromium/net/w$a;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->attachCookies(Lorg/chromium/net/w$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lorg/chromium/net/w;)Lorg/chromium/net/w;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Lorg/chromium/net/x;)Lorg/chromium/net/x;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Lcom/google/android/exoplayer2/util/ConditionVariable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->resetTimeoutOnRedirects:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->resetConnectTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->keepPostFor302Redirects:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->handleSetCookieRequests:Z

    return p0
.end method

.method static synthetic access$900(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->parseCookies(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static attachCookies(Lorg/chromium/net/w$a;Ljava/lang/String;)V
    .locals 1

    .line 923
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Cookie"

    .line 926
    invoke-virtual {p0, v0, p1}, Lorg/chromium/net/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;

    return-void
.end method

.method private blockUntilConnectTimeout()Z
    .locals 5

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 759
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentConnectTimeoutMs:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 760
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentConnectTimeoutMs:J

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x5

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result v2

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static copyByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 953
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 954
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 955
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 956
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 957
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v0
.end method

.method private static getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 946
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 947
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getOrCreateReadBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const v0, 0x8000

    .line 899
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static getStatus(Lorg/chromium/net/w;)I
    .locals 3

    .line 930
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    const/4 v1, 0x1

    .line 931
    new-array v1, v1, [I

    .line 932
    new-instance v2, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;-><init>([ILcom/google/android/exoplayer2/util/ConditionVariable;)V

    invoke-virtual {p0, v2}, Lorg/chromium/net/w;->a(Lorg/chromium/net/w$c;)V

    .line 940
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    const/4 p0, 0x0

    .line 941
    aget p0, v1, p0

    return p0
.end method

.method private static isCompressed(Lorg/chromium/net/x;)Z
    .locals 3

    .line 906
    invoke-virtual {p0}, Lorg/chromium/net/x;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 907
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parseCookies(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 916
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ";"

    .line 919
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private readInternal(Ljava/nio/ByteBuffer;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 5

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/w;

    invoke-virtual {v0, p1}, Lorg/chromium/net/w;->a(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 862
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    iget v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readTimeoutMs:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 876
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v3, :cond_1

    .line 877
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    .line 879
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d2

    invoke-direct {p1, v2, p2, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    goto :goto_0

    .line 868
    :catch_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v2, :cond_2

    .line 869
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    .line 871
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 872
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    .line 887
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    if-eqz p1, :cond_4

    .line 888
    instance-of v1, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_3

    .line 889
    check-cast p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw p1

    .line 891
    :cond_3
    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1

    :cond_4
    return-void
.end method

.method private readResponseBody()[B
    .locals 5

    .line 834
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 836
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    if-nez v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 838
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 839
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 840
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 841
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 842
    array-length v2, v0

    .line 843
    array-length v3, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 844
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private resetConnectTimeout()V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->connectTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentConnectTimeoutMs:J

    return-void
.end method

.method private skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_5

    const/16 v3, 0xe

    .line 792
    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 793
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 794
    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 795
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 798
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    if-nez v4, :cond_1

    .line 805
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 806
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 807
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 808
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v3, v4

    sub-long/2addr p1, v3

    goto :goto_0

    .line 799
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    .line 796
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 813
    instance-of p2, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_4

    .line 816
    new-instance p2, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    const/16 v0, 0x7d2

    goto :goto_1

    :cond_3
    const/16 v0, 0x7d1

    :goto_1
    invoke-direct {p2, p1, p3, v0, v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p2

    .line 814
    :cond_4
    check-cast p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method protected buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/w$a;
    .locals 5

    .line 704
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->cronetEngine:Lorg/chromium/net/d;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 706
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->urlRequestCallback:Lorg/chromium/net/w$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/d;->a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestPriority:I

    .line 707
    invoke-virtual {v0, v1}, Lorg/chromium/net/w$a;->b(I)Lorg/chromium/net/w$a;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lorg/chromium/net/w$a;->d()Lorg/chromium/net/w$a;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 712
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v2, :cond_0

    .line 713
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 718
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 720
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    invoke-virtual {v0, v4, v3}, Lorg/chromium/net/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;

    goto :goto_0

    .line 724
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    if-eqz v2, :cond_3

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 725
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    const-string v3, "HTTP request with non-empty body must set Content-Type"

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    .line 732
    :cond_3
    :goto_1
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ext/cornet/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Range"

    .line 734
    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;

    .line 736
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "User-Agent"

    .line 737
    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;

    .line 746
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/w$a;->b(Ljava/lang/String;)Lorg/chromium/net/w$a;

    .line 747
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    if-eqz v1, :cond_6

    .line 748
    new-instance v1, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ext/cornet/ByteArrayUploadDataProvider;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/w$a;->b(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;

    :cond_6
    return-object v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    invoke-virtual {v0}, Lorg/chromium/net/w;->c()V

    .line 674
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 679
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 680
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    .line 681
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    .line 682
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    .line 683
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 684
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCurrentUrlRequest()Lorg/chromium/net/w;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    return-object v0
.end method

.method protected getCurrentUrlResponseInfo()Lorg/chromium/net/x;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/x;->e()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-string v0, "open: "

    const-string v2, "CronetDataSource"

    .line 412
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 415
    iget-object v3, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->resetConnectTimeout()V

    .line 417
    iput-object v7, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 420
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->buildRequestBuilder(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lorg/chromium/net/w$a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/net/w$a;->c()Lorg/chromium/net/w;

    move-result-object v3

    .line 421
    iput-object v3, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentUrlRequest:Lorg/chromium/net/w;

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, v6, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 432
    invoke-virtual {v3}, Lorg/chromium/net/w;->a()V

    .line 436
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->blockUntilConnectTimeout()Z

    move-result v5

    .line 437
    iget-object v6, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->exception:Ljava/io/IOException;

    if-eqz v6, :cond_1

    .line 439
    invoke-static {v2, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "err_cleartext_not_permitted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    .line 444
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    const/16 v2, 0x7d1

    .line 448
    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getStatus(Lorg/chromium/net/w;)I

    move-result v3

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    if-eqz v5, :cond_f

    .line 470
    iget-object v0, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->responseInfo:Lorg/chromium/net/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/x;

    .line 471
    invoke-virtual {v0}, Lorg/chromium/net/x;->b()I

    move-result v3

    .line 472
    invoke-virtual {v0}, Lorg/chromium/net/x;->e()Ljava/util/Map;

    move-result-object v6

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open:responseCode "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    if-lt v3, v5, :cond_a

    const/16 v12, 0x12b

    if-le v3, v12, :cond_2

    goto :goto_2

    .line 509
    :cond_2
    iget-object v12, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/p;

    if-eqz v12, :cond_4

    const-string v13, "Content-Type"

    .line 511
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 512
    invoke-interface {v12, v13}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    .line 513
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v13, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v3, v5, :cond_5

    .line 520
    iget-wide v12, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v3, v12, v8

    if-eqz v3, :cond_5

    iget-wide v8, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 523
    :cond_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->isCompressed(Lorg/chromium/net/x;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 524
    iget-wide v12, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v12, v10

    if-eqz v0, :cond_6

    .line 525
    iget-wide v2, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    goto :goto_1

    :cond_6
    const-string v0, "Content-Length"

    .line 529
    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ext/cornet/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-eqz v0, :cond_7

    sub-long v10, v2, v8

    .line 531
    :cond_7
    iput-wide v10, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 537
    :cond_8
    iget-wide v2, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    .line 540
    :goto_1
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    .line 541
    iget-object v0, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_9

    .line 542
    invoke-interface {v0, v1, v7}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 545
    :cond_9
    invoke-direct {v1, v8, v9, v7}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 546
    iget-wide v2, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    return-wide v2

    :cond_a
    :goto_2
    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_d

    .line 477
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/cornet/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 478
    iget-wide v14, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v2, v14, v12

    if-nez v2, :cond_d

    .line 479
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    .line 480
    iget-object v0, v1, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_b

    .line 481
    invoke-interface {v0, v1, v7}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 483
    :cond_b
    iget-wide v2, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_c

    iget-wide v8, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :cond_c
    return-wide v8

    .line 489
    :cond_d
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readResponseBody()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move-object v8, v2

    goto :goto_4

    .line 491
    :catch_0
    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_3

    :goto_4
    if-ne v3, v5, :cond_e

    .line 495
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v4, 0x7d8

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    move-object v5, v2

    .line 499
    new-instance v9, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 501
    invoke-virtual {v0}, Lorg/chromium/net/x;->c()Ljava/lang/String;

    move-result-object v4

    move-object v2, v9

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    throw v9

    .line 451
    :cond_f
    :try_start_3
    new-instance v0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    const/16 v4, 0x7d2

    .line 455
    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getStatus(Lorg/chromium/net/w;)I

    move-result v3

    invoke-direct {v0, v2, v7, v4, v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 458
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 462
    new-instance v0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v3, 0x3ec

    const/4 v4, -0x1

    invoke-direct {v0, v2, v7, v3, v4}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    :catch_2
    move-exception v0

    const-string v3, "open:error "

    .line 424
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    instance-of v2, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v2, :cond_10

    .line 426
    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw v0

    .line 428
    :cond_10
    new-instance v2, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8

    .line 623
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 625
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 628
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 630
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    .line 633
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 635
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_4

    .line 637
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->copyByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 639
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 640
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    .line 642
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_3

    .line 643
    invoke-interface {p1, p0, v3}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_3
    return v3

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 651
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 653
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    if-eqz v3, :cond_5

    .line 654
    iput-wide v4, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    return v2

    .line 659
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 660
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    sub-int/2addr v0, p1

    .line 661
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    cmp-long p1, v1, v6

    if-eqz p1, :cond_7

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 662
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    .line 664
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_8

    .line 665
    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_8
    return v0

    .line 626
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed buffer is not a direct ByteBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 8

    .line 551
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->opened:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 555
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 560
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_3

    .line 562
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->operation:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 563
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 565
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p0, v1, v5}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->readInternal(Ljava/nio/ByteBuffer;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 567
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->finished:Z

    if-eqz v5, :cond_2

    .line 568
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    return v2

    .line 573
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 574
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_3
    const/4 v2, 0x3

    .line 579
    new-array v2, v2, [J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const-wide v3, 0x7fffffffffffffffL

    :goto_0
    aput-wide v3, v2, v0

    const/4 v0, 0x1

    .line 583
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v2, v0

    const/4 v0, 0x2

    int-to-long v3, p3

    aput-wide v3, v2, v0

    .line 581
    invoke-static {v2}, Lcom/google/common/primitives/Longs;->a([J)J

    move-result-wide v2

    long-to-int p3, v2

    .line 586
    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 588
    iget-wide p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    cmp-long v0, p1, v5

    if-eqz v0, :cond_5

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 589
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->bytesRemaining:J

    .line 591
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_6

    .line 592
    invoke-interface {p1, p0, p3}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_6
    return p3
.end method

.method public setContentTypePredicate(Lcom/google/common/base/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->contentTypePredicate:Lcom/google/common/base/p;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
