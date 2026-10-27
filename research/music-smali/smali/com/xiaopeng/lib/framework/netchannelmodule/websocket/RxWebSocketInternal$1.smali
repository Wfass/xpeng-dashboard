.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketInfo(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)V
    .locals 2

    .line 170
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->isOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;->val$url:Ljava/lang/String;

    check-cast p1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->getWebSocket()Lokhttp3/WebSocket;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;->accept(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)V

    return-void
.end method
