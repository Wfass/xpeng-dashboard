.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;->test(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/lang/Throwable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "predicate retry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_2

    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
