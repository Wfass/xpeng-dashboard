.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"

# interfaces
.implements Lio/reactivex/functions/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelableInternal"
.end annotation


# instance fields
.field private showLog:Z

.field private tag:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Lokhttp3/WebSocket;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->webSocket:Lokhttp3/WebSocket;

    .line 361
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->url:Ljava/lang/String;

    .line 362
    iput-boolean p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->showLog:Z

    .line 363
    iput-object p4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->webSocket:Lokhttp3/WebSocket;

    const/16 v1, 0xbb8

    const-string v2, "close WebSocket from rx cancel"

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 369
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->showLog:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$CancelableInternal;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> cancel for rx cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
