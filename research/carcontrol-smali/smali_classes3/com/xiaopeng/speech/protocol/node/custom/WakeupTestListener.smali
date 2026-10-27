.class public interface abstract Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;
.super Ljava/lang/Object;
.source "WakeupTestListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onVADBeginSpeech()V
.end method

.method public abstract onVADEndSpeech()V
.end method

.method public abstract onWakeupFailed(Ljava/lang/String;)V
.end method

.method public abstract onWakeupSucced(Ljava/lang/String;)V
.end method
