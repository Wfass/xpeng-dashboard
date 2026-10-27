.class public abstract Lcom/xiaopeng/speech/protocol/node/record/AbsRecordListener;
.super Ljava/lang/Object;
.source "AbsRecordListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/record/RecordListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsrResult(Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;)V
    .locals 0

    return-void
.end method

.method public onRecordBegin()V
    .locals 0

    return-void
.end method

.method public onRecordEnd(Z)V
    .locals 0

    return-void
.end method

.method public onRecordError(Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;)V
    .locals 0

    return-void
.end method

.method public onRecordMaxLength()V
    .locals 0

    return-void
.end method

.method public onSpeechBegin()V
    .locals 0

    return-void
.end method

.method public onSpeechEnd()V
    .locals 0

    return-void
.end method

.method public onSpeechVolume(Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;)V
    .locals 0

    return-void
.end method
