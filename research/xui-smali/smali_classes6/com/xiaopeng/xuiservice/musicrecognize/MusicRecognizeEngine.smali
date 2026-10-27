.class public interface abstract Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;
.super Ljava/lang/Object;
.source "MusicRecognizeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;
    }
.end annotation


# static fields
.field public static final MODE_HUMMING:I = 0x2

.field public static final MODE_ORIGINAL_SOUND:I = 0x1


# virtual methods
.method public abstract getMinScore()F
.end method

.method public abstract getMode()I
.end method

.method public abstract setCallback(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;)V
.end method

.method public abstract setMinScore(F)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopAndRecognize()V
.end method
