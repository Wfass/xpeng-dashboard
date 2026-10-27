.class public interface abstract Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListener;
.super Ljava/lang/Object;
.source "MusicRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicRecognizeEventListener"
.end annotation


# virtual methods
.method public abstract onErrorEvent(II)V
.end method

.method public abstract onFindCoverEvent(Ljava/lang/String;)V
.end method

.method public abstract onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
.end method
