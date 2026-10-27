.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getWebSocketString(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$4;->apply(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "webSocketInfo"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
