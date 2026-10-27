.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;
.super Ljava/lang/Object;
.source "WebSocketSubscriber.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private disposable:Lio/reactivex/disposables/Disposable;

.field private hasOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected onClose()V
    .locals 0

    return-void
.end method

.method protected onClosed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->hasOpened:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onClose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected onMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onMessage(Lokio/ByteString;)V
    .locals 0
    .param p1    # Lokio/ByteString;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onNext(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->isOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->hasOpened:Z

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onOpen()V

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->hasOpened:Z

    .line 23
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->closedReasonCode()I

    move-result v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->closedReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onClosed(ILjava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->byteStringMessage()Lokio/ByteString;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->byteStringMessage()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onMessage(Lokio/ByteString;)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->isOnReconnect()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onReconnect()V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 12
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->onNext(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)V

    return-void
.end method

.method protected onOpen()V
    .locals 0

    return-void
.end method

.method protected onReconnect()V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
