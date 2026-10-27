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
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "RxWebSocket"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    .line 58
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    .line 64
    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    nop

    .line 69
    :try_start_1
    const-string v0, "io.reactivex.Observable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    nop

    .line 74
    :try_start_2
    const-string v0, "io.reactivex.android.schedulers.AndroidSchedulers"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    nop

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

    .line 82
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must be dependency rxandroid 2.x"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must be dependency rxjava 2.x"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must be dependency okhttp3 !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mShowLog:Z

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)Lokhttp3/Request;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
    .locals 1

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    return-object v0
.end method

.method private getRequest(Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 312
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 314
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 317
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public asyncSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 283
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 284
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$10;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$10;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 292
    return-void
.end method

.method public asyncSend(Ljava/lang/String;Lokio/ByteString;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "byteString"    # Lokio/ByteString;

    .line 301
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 302
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$11;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$11;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Lokio/ByteString;)V

    .line 303
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 309
    return-void
.end method

.method public client(Lokhttp3/OkHttpClient;)V
    .locals 4
    .param p1, "mClient"    # Lokhttp3/OkHttpClient;

    .line 98
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    .line 102
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mClient == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 451
    .local v0, "webSocket":Lokhttp3/WebSocket;
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 456
    :cond_0
    return-void
.end method

.method public getWebSocket(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
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

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$9;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 232
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$8;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 238
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 231
    return-object v0
.end method

.method public getWebSocketByteString(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
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

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$7;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 216
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$6;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
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

    move-result-object v0

    return-object v0
.end method

.method public getWebSocketInfo(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 144
    .local v0, "observable":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;>;"
    if-nez v0, :cond_0

    .line 145
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    .line 147
    invoke-virtual {v1, p2, p3, p4}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 148
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->retry(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object v1

    .line 176
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 177
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mObservableMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocket;

    .line 181
    .local v1, "webSocket":Lokhttp3/WebSocket;
    if-eqz v1, :cond_1

    .line 182
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    sget-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->OPEN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    invoke-direct {v2, v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    .end local v1    # "webSocket":Lokhttp3/WebSocket;
    :cond_1
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public getWebSocketString(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
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

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 200
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V

    .line 206
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public pingInterval(J)V
    .locals 2
    .param p1, "interval"    # J

    .line 130
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mPingInterval:J

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    .line 132
    return-void
.end method

.method public reconnectInterval(J)V
    .locals 0
    .param p1, "interval"    # J

    .line 126
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mReconnectInterval:J

    .line 127
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 254
    .local v0, "webSocket":Lokhttp3/WebSocket;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 259
    return-void

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebSocket channel not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public send(Ljava/lang/String;Lokio/ByteString;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "byteString"    # Lokio/ByteString;

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    .line 269
    .local v0, "webSocket":Lokhttp3/WebSocket;
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p2}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    .line 274
    return-void

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebSocket channel not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showLog(Z)V
    .locals 0
    .param p1, "mShowLog"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mShowLog:Z

    .line 118
    return-void
.end method

.method public showLog(ZLjava/lang/String;)V
    .locals 0
    .param p1, "showLog"    # Z
    .param p2, "logTag"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->showLog(Z)V

    .line 122
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mLogTag:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->mClient:Lokhttp3/OkHttpClient;

    .line 114
    return-void
.end method
