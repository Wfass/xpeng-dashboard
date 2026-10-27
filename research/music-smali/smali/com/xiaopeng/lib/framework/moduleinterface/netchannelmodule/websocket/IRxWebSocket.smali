.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IRxWebSocket;
.super Ljava/lang/Object;
.source "IRxWebSocket.java"


# virtual methods
.method public abstract close(Ljava/lang/String;)V
.end method

.method public abstract config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
.end method

.method public abstract get(Ljava/lang/String;)Lio/reactivex/Observable;
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
.end method

.method public abstract get(Ljava/lang/String;J)Lio/reactivex/Observable;
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
.end method

.method public abstract header(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IRxWebSocket;
.end method

.method public abstract send(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;Lokio/ByteString;)V
.end method
