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

    return-void
.end method


# virtual methods
.method protected getAudioDspStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getAudioDspStatus()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAudioMode(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getAudioMode()[I

    move-result-object p1

    return-object p1
.end method

.method protected getRadioFrequency(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioFrequency()[I

    move-result-object p1

    return-object p1
.end method

.method protected getRadioStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioStatus()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getRadioVolumeAutoFocus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/radio/ISpeechRadioQueryCaller;->getRadioVolumeAutoFocus()I

    move-result p1

    return p1
.end method
