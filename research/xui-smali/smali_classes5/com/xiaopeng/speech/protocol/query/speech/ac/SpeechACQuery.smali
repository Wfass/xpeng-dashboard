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

    .line 15
    return-void
.end method


# virtual methods
.method protected getBCMBackDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.back.defrost.state"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMBackDefrostMode()Z

    move-result v0

    return v0
.end method

.method protected getBCMBackMirrorHeatMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.back.mirror.heat.state"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMBackMirrorHeatMode()Z

    move-result v0

    return v0
.end method

.method protected getBCMSeatBlowLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.seat.blow.lv"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMSeatBlowLevel()I

    move-result v0

    return v0
.end method

.method protected getBCMSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.seat.heat.lv"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getBCMSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method protected getHvacAutoMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.auto.mode"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacAutoMode()Z

    move-result v0

    return v0
.end method

.method protected getHvacAutoModeBlowLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.auto.mode.lv"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacAutoModeBlowLevel()I

    move-result v0

    return v0
.end method

.method protected getHvacCirculationMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.circulation.mode"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacCirculationMode()I

    move-result v0

    return v0
.end method

.method protected getHvacFrontDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.front.defrost"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacFrontDefrostMode()Z

    move-result v0

    return v0
.end method

.method protected getHvacInnerTemp(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.inner.temp"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacInnerTemp()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getHvacOutterTemp(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.outter.temp"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacOutterTemp()F

    move-result v0

    return v0
.end method

.method protected getHvacPowerMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.power"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacPowerMode()Z

    move-result v0

    return v0
.end method

.method protected getHvacQualityInnerPM25Value(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.pm25.value"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityInnerPM25Value()I

    move-result v0

    return v0
.end method

.method protected getHvacQualityOutsideLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.quality.outside.lv"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityOutsideLevel()I

    move-result v0

    return v0
.end method

.method protected getHvacQualityOutsideStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.quality.outside.state"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityOutsideStatus()I

    move-result v0

    return v0
.end method

.method protected getHvacQualityPurgeMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.quality.state"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacQualityPurgeMode()Z

    move-result v0

    return v0
.end method

.method protected getHvacTempDriverValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.driver.temp"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempDriverValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getHvacTempPsnValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.driver.psn"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempPsnValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getHvacTempSyncMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.sync.state"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacTempSyncMode()Z

    move-result v0

    return v0
.end method

.method protected getHvacWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.wind.mode"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacWindBlowMode()I

    move-result v0

    return v0
.end method

.method protected getHvacWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.wind.speed.lv"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getHvacWindSpeedLevel()I

    move-result v0

    return v0
.end method

.method protected getPsnSeatHeatLv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.psn.seat.heat.lv"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;->getPsnSeatHeatLv()I

    move-result v0

    return v0
.end method
