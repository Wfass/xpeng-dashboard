.class Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaBrowserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 93
    const-string v0, "MediaBrowserHandler"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->access$200(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->access$300(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 101
    const-string v0, "MediaBrowserHandler"

    const-string v1, "onConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
