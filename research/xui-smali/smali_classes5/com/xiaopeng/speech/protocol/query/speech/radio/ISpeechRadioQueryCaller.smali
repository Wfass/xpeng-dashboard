.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechRadioQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getAudioDspStatus()Ljava/lang/String;
.end method

.method public abstract getAudioMode()[I
.end method

.method public abstract getRadioFrequency()[I
.end method

.method public abstract getRadioStatus()Ljava/lang/String;
.end method

.method public abstract getRadioVolumeAutoFocus()I
.end method
