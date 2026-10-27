.class public Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechChargeQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;",
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
.method protected getACChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.ac.charging.current"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACChargingCurrent()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getACChargingVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.ac.charging.volt"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACChargingVolt()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getACInputStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.ac.input.state"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACInputStatus()Z

    move-result v0

    return v0
.end method

.method protected getAddedElectricity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.add.electri"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAddedElectricity()I

    move-result v0

    return v0
.end method

.method protected getAverageVehConsume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.aver.veh.consume"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAverageVehConsume()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAverageVehConsume100km(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.aver.consume.100km"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAverageVehConsume100km()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBatteryCoolStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.battery.cool.state"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getBatteryCoolStatus()Z

    move-result v0

    return v0
.end method

.method protected getBatteryWarmingStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.battery.warm.state"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getBatteryWarmingStatus()Z

    move-result v0

    return v0
.end method

.method protected getChargeGunLockSt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.gun.lock.st"
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeGunLockSt()Z

    move-result v0

    return v0
.end method

.method protected getChargeLimitSoc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.limit.soc"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeLimitSoc()I

    move-result v0

    return v0
.end method

.method protected getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.charging.state"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeStatus()I

    move-result v0

    return v0
.end method

.method protected getChargingError(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.charging.error"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingError()I

    move-result v0

    return v0
.end method

.method protected getChargingGunStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.charging.gun.state"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingGunStatus()I

    move-result v0

    return v0
.end method

.method protected getChargingMaxSoc(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.charging.max.soc"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingMaxSoc()[I

    move-result-object v0

    return-object v0
.end method

.method protected getCltcMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.cltc.mileage.num"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getCltcMieageNumber()I

    move-result v0

    return v0
.end method

.method protected getColdWarningTips(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.cold.warn.tip"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getColdWarningTips()Z

    move-result v0

    return v0
.end method

.method protected getDCChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.dc.charging.current"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDCChargingCurrent()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getDCChargingVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.dc.charging.volt"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDCChargingVolt()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getDynamicMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.dynamic.mileage.num"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDynamicMileageNumber()I

    move-result v0

    return v0
.end method

.method protected getElectricityPercent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.electric.percent"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getElectricityPercent()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getEnduranceMileageMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.endurance.mileage.mode"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getEnduranceMileageMode()I

    move-result v0

    return v0
.end method

.method protected getHvacConsume(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.hvac.consume"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getHvacConsume()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.mileage.num"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getMileageNumber()I

    move-result v0

    return v0
.end method

.method protected getSOH(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.soh"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getSOH()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getWltpMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.wltp.mileage.num"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getWltpMileageNumber()I

    move-result v0

    return v0
.end method
