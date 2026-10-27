.class public interface abstract Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;
.super Ljava/lang/Object;
.source "MusicRecognizeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
.end method

.method public abstract onVolumeChanged(D)V
.end method
