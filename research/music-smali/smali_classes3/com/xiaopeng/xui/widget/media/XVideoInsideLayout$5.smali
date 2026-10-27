.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;
.super Ljava/lang/Object;
.source "XVideoInsideLayout.java"

# interfaces
.implements Lcjb$b;


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

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcjb;IZ)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$000(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcjb;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onStopTrackingTouch(Lcjb;)V
    .locals 3

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    goto :goto_0

    :cond_0
    const-string p1, "XVideoInsideLayout"

    const-string v0, "finishGestureDrag: iVideoView is null"

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
