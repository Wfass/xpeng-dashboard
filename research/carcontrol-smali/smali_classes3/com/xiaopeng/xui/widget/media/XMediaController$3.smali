.class Lcom/xiaopeng/xui/widget/media/XMediaController$3;
.super Ljava/lang/Object;
.source "XMediaController.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XMediaController;->initEvent()V
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

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-boolean p2, p2, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    if-nez p2, :cond_0

    .line 175
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onDragging(Z)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onSeekTo(I)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$3;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onDragging(Z)V

    :cond_0
    return-void
.end method
