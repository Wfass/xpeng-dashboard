.class public interface abstract Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioStatusListener"
.end annotation


# virtual methods
.method public onAudioStop(ILjava/lang/String;)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 435
    return-void
.end method

.method public abstract onNewAudioStart(IILjava/lang/String;)V
.end method
