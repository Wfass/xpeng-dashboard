.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$1;
.super Ljava/lang/Object;
.source "WebSocketSubscriber2.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->onMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->onMessage(Ljava/lang/Object;)V

    return-void
.end method
