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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoView;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 74
    const-string v0, "onPlaybackStateChanged playbackState:"

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->stopPlayback()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    .line 83
    :cond_1
    return-void
.end method
