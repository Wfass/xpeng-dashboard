.class final Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebSocketOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

.field private url:Ljava/lang/String;

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->url:Ljava/lang/String;

    return-void
.end method

.method private initWebSocket(Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    new-instance v8, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Z

    move-result v6

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;-><init>(Lio/reactivex/ObservableEmitter;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->webSocket:Lokhttp3/WebSocket;

    .line 348
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->webSocket:Lokhttp3/WebSocket;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Z

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;-><init>(Lokhttp3/WebSocket;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;)V"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_1

    .line 334
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x3e8

    .line 339
    :cond_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 340
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->createReconnect()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 343
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketOnSubscribe;->initWebSocket(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
