.class Lcom/xiaopeng/xui/widget/media/XMediaController$2;
.super Ljava/lang/Object;
.source "XMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XMediaController;

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$2;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v2}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :cond_0
    return-void
.end method
