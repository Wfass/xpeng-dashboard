.class public Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechACQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;",
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
.method protected getBCMBackDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMBackDefrostMode()Z

    move-result p1

    return p1
.end method

.method protected getBCMBackMirrorHeatMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMBackMirrorHeatMode()Z

    move-result p1

    return p1
.end method

.method protected getBCMSeatBlowLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMSeatBlowLevel()I

    move-result p1

    return p1
.end method

.method protected getBCMSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMSeatHeatLevel()I

    move-result p1

    return p1
.end method

.method protected getHvacAutoMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacAutoMode()Z

    move-result p1

    return p1
.end method

.method protected getHvacAutoModeBlowLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacAutoModeBlowLevel()I

    move-result p1

    return p1
.end method

.method protected getHvacCirculationMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacCirculationMode()I

    move-result p1

    return p1
.end method

.method protected getHvacFrontDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacFrontDefrostMode()Z

    move-result p1

    return p1
.end method

.method protected getHvacInnerTemp(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacInnerTemp()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getHvacOutterTemp(Ljava/lang/String;Ljava/lang/String;)F
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacOutterTemp()F

    move-result p1

    return p1
.end method

.method protected getHvacPowerMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacPowerMode()Z

    move-result p1

    return p1
.end method

.method protected getHvacQualityInnerPM25Value(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityInnerPM25Value()I

    move-result p1

    return p1
.end method

.method protected getHvacQualityOutsideLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityOutsideLevel()I

    move-result p1

    return p1
.end method

.method protected getHvacQualityOutsideStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityOutsideStatus()I

    move-result p1

    return p1
.end method

.method protected getHvacQualityPurgeMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityPurgeMode()Z

    move-result p1

    return p1
.end method

.method protected getHvacTempDriverValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempDriverValue()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getHvacTempPsnValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempPsnValue()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getHvacTempSyncMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempSyncMode()Z

    move-result p1

    return p1
.end method

.method protected getHvacWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacWindBlowMode()I

    move-result p1

    return p1
.end method

.method protected getHvacWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacWindSpeedLevel()I

    move-result p1

    return p1
.end method

.method protected getPsnSeatHeatLv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getPsnSeatHeatLv()I

    move-result p1

    return p1
.end method
