.class public interface abstract Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;
.super Ljava/lang/Object;
.source "IMediaController.java"


# virtual methods
.method public abstract getCurrentPlayState()Landroid/media/session/PlaybackState;
.end method

.method public abstract getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
.end method

.method public abstract getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
.end method

.method public abstract getMediaStyle()I
.end method

.method public abstract getPlayStatus()I
.end method

.method public abstract getPositions()[J
.end method

.method public abstract playbackControl(III)Z
.end method

.method public abstract sendCustomAction(ILandroid/os/Bundle;)Z
.end method

.method public abstract setFavorite(ZLjava/lang/String;)V
.end method

.method public abstract switchSource(I)V
.end method

.method public abstract updateMediaController(Landroid/media/session/MediaController;)V
.end method
