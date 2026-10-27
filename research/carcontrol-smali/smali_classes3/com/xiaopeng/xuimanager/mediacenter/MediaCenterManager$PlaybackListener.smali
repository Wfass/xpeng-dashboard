.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackListener"
.end annotation


# virtual methods
.method public abstract OnMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
.end method

.method public abstract OnPlaybackChanged(I)V
.end method

.method public abstract OnUpdatePosition(JJ)V
.end method
