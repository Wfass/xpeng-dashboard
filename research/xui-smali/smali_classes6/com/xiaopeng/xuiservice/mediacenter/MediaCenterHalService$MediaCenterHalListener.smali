.class public interface abstract Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaCenterHalListener"
.end annotation


# virtual methods
.method public abstract onBtStatusChanged(I)V
.end method

.method public abstract onFftDataCapture(ILjava/lang/String;[BI)V
.end method

.method public abstract onFftDataCapture([BI)V
.end method

.method public abstract onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
.end method

.method public abstract onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
.end method

.method public abstract onPlayControlIpc(II)V
.end method

.method public abstract onPlayStatusChanged(II)V
.end method

.method public abstract onPositionChanged(I[J)V
.end method

.method public abstract onRatioData(FF)V
.end method

.method public abstract onRatioData(ILjava/lang/String;FF)V
.end method

.method public abstract onSetFavorite(ZLjava/lang/String;)V
.end method

.method public abstract onSwitchSource(I)V
.end method
