.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)Z
    .locals 0
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 203
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;->stringMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 200
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$5;->test(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;)Z

    move-result p1

    return p1
.end method
