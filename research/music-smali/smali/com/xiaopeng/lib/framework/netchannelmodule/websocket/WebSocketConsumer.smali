.class abstract Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;
.super Ljava/lang/Object;
.source "WebSocketConsumer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->isOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->getWebSocket()Lokhttp3/WebSocket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;->onOpen(Lokhttp3/WebSocket;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->getWebSocket()Lokhttp3/WebSocket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;->onClosed(Lokhttp3/WebSocket;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->byteStringMessage()Lokio/ByteString;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->byteStringMessage()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;->onMessage(Lokio/ByteString;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConsumer;->accept(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;)V

    return-void
.end method

.method public abstract onClosed(Lokhttp3/WebSocket;)V
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMessage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMessage(Lokio/ByteString;)V
    .param p1    # Lokio/ByteString;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onOpen(Lokhttp3/WebSocket;)V
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method
