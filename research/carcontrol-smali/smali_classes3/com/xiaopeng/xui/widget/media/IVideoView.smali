.class public interface abstract Lcom/xiaopeng/xui/widget/media/IVideoView;
.super Ljava/lang/Object;
.source "IVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;
    }
.end annotation


# static fields
.field public static final PLAY_STATE_ERROR:I = 0x3

.field public static final PLAY_STATE_PAUSE:I = 0x2

.field public static final PLAY_STATE_PLAY:I = 0x1

.field public static final PLAY_STATE_STOP:I


# virtual methods
.method public abstract getDuration()I
.end method

.method public abstract getPlayState()I
.end method

.method public abstract getProgress()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setMediaController(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
.end method

.method public abstract setOnMediaCallBack(Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;)V
.end method

.method public abstract setPlayState(I)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method
