.class public interface abstract Lcom/xiaopeng/speech/protocol/node/record/RecordListener;
.super Ljava/lang/Object;
.source "RecordListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onAsrResult(Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;)V
.end method

.method public abstract onRecordBegin()V
.end method

.method public abstract onRecordEnd(Z)V
.end method

.method public abstract onRecordError(Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;)V
.end method

.method public abstract onRecordMaxLength()V
.end method

.method public abstract onSpeechBegin()V
.end method

.method public abstract onSpeechEnd()V
.end method

.method public abstract onSpeechVolume(Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;)V
.end method
