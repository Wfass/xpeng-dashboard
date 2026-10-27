.class public Lcom/xiaopeng/xui/widget/media/XVideoView;
.super Landroid/widget/VideoView;
.source "XVideoView.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/media/IVideoView;


# instance fields
.field currentState:I

.field onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

.field xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

.field xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    .line 37
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XVideoView$1;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 56
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XVideoView$2;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 71
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoView$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XVideoView$3;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x2

    .line 111
    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 133
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public setMediaController(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    return-void
.end method

.method public setOnMediaCallBack(Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    return-void
.end method

.method public setPlayState(I)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->pause()V

    goto :goto_1

    .line 154
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->start()V

    goto :goto_1

    .line 156
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->stopPlayback()V

    :goto_1
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1

    .line 180
    new-instance v0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;-><init>()V

    .line 181
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->setPath(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    return-void
.end method

.method public setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setVideoPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->xMediaController:Lcom/xiaopeng/xui/widget/media/XMediaController;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_1
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->currentState:I

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoView;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getPlayState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_0
    return-void
.end method
