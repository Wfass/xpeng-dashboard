.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;
.super Ljava/lang/Object;
.source "WebSocketSubscriber2.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    .line 51
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;, "Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;"
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;, "Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;->apply(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;, "Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;"
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->access$000()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->access$000()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
