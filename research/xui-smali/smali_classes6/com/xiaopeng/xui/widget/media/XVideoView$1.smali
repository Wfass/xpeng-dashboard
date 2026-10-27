.class Lcom/xiaopeng/xui/widget/media/XVideoView$1;
.super Ljava/lang/Object;
.source "XVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->start()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    .line 48
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoView$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XVideoView$1$1;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoView$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 54
    return-void
.end method
