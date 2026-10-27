.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;
.super Lokhttp3/WebSocketListener;
.source "RxWebSocketInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSocketListenerInternal"
.end annotation


# instance fields
.field private emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private showLog:Z

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webSocketMap:Ljava/util/Map;
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
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "showLog"    # Z
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/WebSocket;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 387
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;>;"
    .local p2, "webSocketMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lokhttp3/WebSocket;>;"
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    .line 389
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->webSocketMap:Ljava/util/Map;

    .line 390
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->url:Ljava/lang/String;

    .line 391
    iput-boolean p4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->showLog:Z

    .line 392
    iput-object p5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->tag:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 437
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->showLog:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> onClosed:code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->CLOSED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;)V

    .line 443
    .local v0, "info":Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;
    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->setClosedReason(ILjava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 446
    .end local v0    # "info":Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;
    :cond_1
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 432
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 433
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 3
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lokhttp3/Response;

    .line 422
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->showLog:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/WebSocket;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 428
    :cond_1
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 411
    :cond_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "bytes"    # Lokio/ByteString;

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Lokio/ByteString;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 3
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "response"    # Lokhttp3/Response;

    .line 397
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->showLog:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> onOpen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->webSocketMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$WebSocketListenerInternal;->emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    sget-object v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->OPEN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    invoke-direct {v1, p1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>(Lokhttp3/WebSocket;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 404
    :cond_1
    return-void
.end method
