.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;
    }
.end annotation


# static fields
.field private static final CLOSE_BY_CANCELLATION:I = 0xbb8

.field private static final CLOSE_CLIENT_NORMAL:I = 0x3e8

.field private static final DEFAULT_RETRY_INTERVAL:I = 0x3e8


# instance fields
.field private mClient:Lokhttp3/OkHttpClient;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogTag:Ljava/lang/String;

.field private mObservableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPingInterval:J

.field private mReconnectInterval:J

.field private mShowLog:Z

.field private mWebSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/WebSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RxWebSocket"

    .line 56
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 57
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    .line 58
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "io.reactivex.Observable"

    .line 69
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "io.reactivex.android.schedulers.AndroidSchedulers"

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    .line 81
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-void

    .line 76
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be dependency rxandroid 2.x"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be dependency rxjava 2.x"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be dependency okhttp3 !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mShowLog:Z

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)Lokhttp3/Request;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
    .locals 1

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    return-object v0
.end method

.method private getRequest(Ljava/lang/String;)Lokhttp3/Request;
    .locals 3

    .line 312
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asyncSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 284
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$10;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$10;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public asyncSend(Ljava/lang/String;Lokio/ByteString;)V
    .locals 2

    .line 301
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 302
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$11;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$11;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Lokio/ByteString;)V

    .line 303
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public client(Lokhttp3/OkHttpClient;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mClient == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close(Ljava/lang/String;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3e8

    const/4 v1, 0x0

    .line 454
    invoke-interface {v0, p1, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/WebSocket;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$9;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 232
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$8;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 238
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getWebSocketByteString(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$7;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 216
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$6;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 222
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getWebSocketInfo(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p2, p3, p4}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;

    invoke-direct {p3, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 148
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->retry(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$2;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p2

    .line 176
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    .line 177
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/WebSocket;

    if-eqz p1, :cond_1

    .line 182
    new-instance p2, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    sget-object p3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->OPEN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    invoke-direct {p2, p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    :cond_1
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getWebSocketString(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 200
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 206
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public pingInterval(J)V
    .locals 2

    .line 130
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public reconnectInterval(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/WebSocket;

    if-eqz p1, :cond_0

    .line 255
    invoke-interface {p1, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    return-void

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WebSocket channel not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/WebSocket;

    if-eqz p1, :cond_0

    .line 270
    invoke-interface {p1, p2}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    return-void

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WebSocket channel not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showLog(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mShowLog:Z

    return-void
.end method

.method public showLog(ZLjava/lang/String;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->showLog(Z)V

    .line 122
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method
