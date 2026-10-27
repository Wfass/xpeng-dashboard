.class public interface abstract Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;
.super Ljava/lang/Object;
.source "MusicRecognizeHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicRecognizeHalListener"
.end annotation


# virtual methods
.method public abstract onError(II)V
.end method

.method public abstract onFindCoverEvent(Ljava/lang/String;)V
.end method

.method public abstract onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
.end method
