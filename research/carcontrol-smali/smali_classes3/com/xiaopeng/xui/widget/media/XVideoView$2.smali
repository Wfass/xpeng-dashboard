.class Lcom/xiaopeng/xui/widget/media/XVideoView$2;
.super Ljava/lang/Object;
.source "XVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->stopPlayback()V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    const/4 p2, 0x3

    iput p2, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
