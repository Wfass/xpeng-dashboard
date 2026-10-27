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

    return-void
.end method


# virtual methods
.method protected getACChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACChargingCurrent()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getACChargingVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACChargingVolt()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getACInputStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getACInputStatus()Z

    move-result p1

    return p1
.end method

.method protected getAddedElectricity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAddedElectricity()I

    move-result p1

    return p1
.end method

.method protected getAverageVehConsume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAverageVehConsume()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAverageVehConsume100km(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getAverageVehConsume100km()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getBatteryCoolStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getBatteryCoolStatus()Z

    move-result p1

    return p1
.end method

.method protected getBatteryWarmingStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getBatteryWarmingStatus()Z

    move-result p1

    return p1
.end method

.method protected getChargeGunLockSt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeGunLockSt()Z

    move-result p1

    return p1
.end method

.method protected getChargeLimitSoc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeLimitSoc()I

    move-result p1

    return p1
.end method

.method protected getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargeStatus()I

    move-result p1

    return p1
.end method

.method protected getChargingError(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingError()I

    move-result p1

    return p1
.end method

.method protected getChargingGunStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingGunStatus()I

    move-result p1

    return p1
.end method

.method protected getChargingMaxSoc(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getChargingMaxSoc()[I

    move-result-object p1

    return-object p1
.end method

.method protected getCltcMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getCltcMieageNumber()I

    move-result p1

    return p1
.end method

.method protected getColdWarningTips(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getColdWarningTips()Z

    move-result p1

    return p1
.end method

.method protected getDCChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDCChargingCurrent()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getDCChargingVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDCChargingVolt()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getDynamicMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getDynamicMileageNumber()I

    move-result p1

    return p1
.end method

.method protected getElectricityPercent(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getElectricityPercent()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getEnduranceMileageMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getEnduranceMileageMode()I

    move-result p1

    return p1
.end method

.method protected getHvacConsume(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getHvacConsume()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getMileageNumber()I

    move-result p1

    return p1
.end method

.method protected getSOH(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getSOH()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getWltpMileageNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;->getWltpMileageNumber()I

    move-result p1

    return p1
.end method
