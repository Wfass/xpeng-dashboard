.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;
.super Ljava/lang/Object;
.source "XVideoInsideLayout.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initEvent()V
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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 2
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "i"    # I
    .param p3, "isFromUser"    # Z

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    if-eqz p3, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 2
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 4
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    goto :goto_0

    .line 275
    :cond_0
    const-string v0, "XVideoInsideLayout"

    const-string v1, "finishGestureDrag: iVideoView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method
