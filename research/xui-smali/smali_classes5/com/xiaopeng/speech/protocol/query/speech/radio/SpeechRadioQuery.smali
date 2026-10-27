.class public Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechRadioQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected getAudioDspStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radio.dsp"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getAudioDspStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioMode(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radio.mode"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getAudioMode()[I

    move-result-object v0

    return-object v0
.end method

.method protected getRadioFrequency(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radio.frequency"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioFrequency()[I

    move-result-object v0

    return-object v0
.end method

.method protected getRadioStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radio.state"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRadioVolumeAutoFocus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "radio.volume.focus"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioVolumeAutoFocus()I

    move-result v0

    return v0
.end method
