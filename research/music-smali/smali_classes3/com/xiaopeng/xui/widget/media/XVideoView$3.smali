.class Lcom/xiaopeng/xui/widget/media/XVideoView$3;
.super Ljava/lang/Object;
.source "XVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "onPlaybackStateChanged playbackState:"

    .line 74
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->stopPlayback()V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    const/4 v0, 0x0

    iput v0, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 77
    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_1
    return-void
.end method
