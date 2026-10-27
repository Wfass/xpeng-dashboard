.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;
.super Ljava/lang/Object;
.source "XVideoInsideLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v2}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "XVideoInsideLayout"

    const-string v1, "iVideoView is null"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
