.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;
.super Ljava/lang/Object;
.source "RxWebSocketImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IRxWebSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->close(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;-><init>()V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 47
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;J)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IRxWebSocket;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object p0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public send(Ljava/lang/String;Lokio/ByteString;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->send(Ljava/lang/String;Lokio/ByteString;)V

    .line 82
    return-void
.end method
