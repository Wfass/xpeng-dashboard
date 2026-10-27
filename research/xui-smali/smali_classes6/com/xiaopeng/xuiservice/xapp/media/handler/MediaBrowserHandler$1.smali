.class Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;
.super Landroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;
.source "MediaBrowserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->executeRequest()V
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

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "resultData"    # Landroid/os/Bundle;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-static {v0, p3}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->access$000(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;Landroid/os/Bundle;)I

    move-result v0

    .line 46
    .local v0, "code":I
    const-string v1, "MediaBrowserHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCallback:Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;)Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCallback:Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/media/Callback;->onResult(I)V

    .line 50
    :cond_0
    return-void
.end method
