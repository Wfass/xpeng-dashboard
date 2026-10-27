.class public Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechCarControlQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getACCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getACCStatus()I

    move-result p1

    return p1
.end method

.method protected getATWSState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getATWSState()I

    move-result p1

    return p1
.end method

.method protected getAbnormalTirePressureState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAbnormalTirePressureState()I

    move-result p1

    return p1
.end method

.method protected getAllTirePressureWarnings(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAllTirePressureWarnings()[I

    move-result-object p1

    return-object p1
.end method

.method protected getAllTireTemperatureWarnings(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAllTireTemperatureWarnings()[I

    move-result-object p1

    return-object p1
.end method

.method protected getBCMIgStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getBCMIgStatus()I

    move-result p1

    return p1
.end method

.method protected getBlindAreaDetectionWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getBlindAreaDetectionWarning()I

    move-result p1

    return p1
.end method

.method protected getCarControlAMPFeature(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCarControlAMPFeature()I

    move-result p1

    return p1
.end method

.method protected getCarSpeed(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCarSpeed()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getChairDirection(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairDirection()[I

    move-result-object p1

    return-object p1
.end method

.method protected getChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairLocationValue()[I

    move-result-object p1

    return-object p1
.end method

.method protected getChairWelcomeMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairWelcomeMode()Z

    move-result p1

    return p1
.end method

.method protected getCruiseControlStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCruiseActive()I

    move-result p1

    return p1
.end method

.method protected getDoorLockState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDoorLockState()Z

    move-result p1

    return p1
.end method

.method protected getDoorsState(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDoorsState()[I

    move-result-object p1

    return-object p1
.end method

.method protected getDriveAutoLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriveAutoLock()Z

    move-result p1

    return p1
.end method

.method protected getDriveTotalMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriveTotalMileage()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getDriverSeatStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriverSeatStatus()I

    move-result p1

    return p1
.end method

.method protected getDrivingMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDrivingMode()I

    move-result p1

    return p1
.end method

.method protected getElectricSeatBelt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getElectricSeatBelt()Z

    move-result p1

    return p1
.end method

.method protected getEmergencyBrakeWarning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getEmergencyBrakeWarning()Z

    move-result p1

    return p1
.end method

.method protected getEnergyRecycleLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getEnergyRecycleLevel()I

    move-result p1

    return p1
.end method

.method protected getFarLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getFarLampState()Z

    move-result p1

    return p1
.end method

.method protected getFrontCollisionSecurity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getFrontCollisionSecurity()I

    move-result p1

    return p1
.end method

.method protected getHeadLampGroup(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getHeadLampGroup()I

    move-result p1

    return p1
.end method

.method protected getICMDriverTempValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMDriverTempValue()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getICMWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMWindBlowMode()I

    move-result p1

    return p1
.end method

.method protected getICMWindLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMWindLevel()I

    move-result p1

    return p1
.end method

.method protected getIcmAlarmVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIcmAlarmVolume()I

    move-result p1

    return p1
.end method

.method protected getIcmConnectionState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIcmConnectionState()Z

    move-result p1

    return p1
.end method

.method protected getIntelligentSpeedLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIntelligentSpeedLimit()I

    move-result p1

    return p1
.end method

.method protected getInternalLight(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getInternalLight()Z

    move-result p1

    return p1
.end method

.method protected getLCCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLCCStatus()I

    move-result p1

    return p1
.end method

.method protected getLaneChangeAssist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLaneChangeAssist()I

    move-result p1

    return p1
.end method

.method protected getLaneDepartureWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLaneDepartureWarning()I

    move-result p1

    return p1
.end method

.method protected getLastChargeMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLastChargeMileage()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getLastStartUpMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLastStartUpMileage()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getLightMeHome(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLightMeHome()I

    move-result p1

    return p1
.end method

.method protected getLocationLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLocationLampState()Z

    move-result p1

    return p1
.end method

.method protected getLowSocStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLowSocStatus()I

    move-result p1

    return p1
.end method

.method protected getMeterMileageA(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getMeterMileageA()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getMeterMileageB(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getMeterMileageB()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getNearLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getNearLampState()Z

    move-result p1

    return p1
.end method

.method protected getNgpMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getNgpMode()I

    move-result p1

    return p1
.end method

.method protected getOled(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getOled()I

    move-result p1

    return p1
.end method

.method protected getParkingAutoUnlock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getParkingAutoUnlock()Z

    move-result p1

    return p1
.end method

.method protected getPassengerChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getPassengerChairLocationValue()[I

    move-result-object p1

    return-object p1
.end method

.method protected getPassengerSeatStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getPassengerSeatStatus()I

    move-result p1

    return p1
.end method

.method protected getRadarWarningVoiceStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRadarWarningVoiceStatus()Z

    move-result p1

    return p1
.end method

.method protected getRearFogLamp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRearFogLamp()Z

    move-result p1

    return p1
.end method

.method protected getRearSeatBeltWarning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRearSeatBeltWarning()Z

    move-result p1

    return p1
.end method

.method protected getRiseSpeakerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRiseSpeakerStatus()I

    move-result p1

    return p1
.end method

.method protected getSeatErrorState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSeatErrorState()Z

    move-result p1

    return p1
.end method

.method protected getShiftStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getShiftStatus()I

    move-result p1

    return p1
.end method

.method protected getSideReversingWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSideReversingWarning()I

    move-result p1

    return p1
.end method

.method protected getSpeedLimitWarningSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSpeedLimitWarningSwitch()Z

    move-result p1

    return p1
.end method

.method protected getSpeedLimitWarningValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSpeedLimitWarningValue()I

    move-result p1

    return p1
.end method

.method protected getSteerWheelRotationAngle(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSteerWheelRotationAngle()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method protected getSteeringWheelEPS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSteeringWheelEPS()I

    move-result p1

    return p1
.end method

.method protected getSystemFaultWarnLampStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSystemFaultWarnLampStatus()I

    move-result p1

    return p1
.end method

.method protected getTirePressureAll(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 0

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTirePressureAll()[F

    move-result-object p1

    return-object p1
.end method

.method protected getTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTrunk()I

    move-result p1

    return p1
.end method

.method protected getTrunkOpennerState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTrunkOpennerStatus()I

    move-result p1

    return p1
.end method

.method protected getUnlockResponse(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getUnlockResponse()I

    move-result p1

    return p1
.end method

.method protected getWelcomeModeBackStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWelcomeModeBackStatus()Z

    move-result p1

    return p1
.end method

.method protected getWindowLockStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWindowLockStatus()I

    move-result p1

    return p1
.end method

.method protected getWindowsState(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWindowsState()[F

    move-result-object p1

    return-object p1
.end method

.method protected getWiperInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWiperInterval()I

    move-result p1

    return p1
.end method

.method protected isCarTrip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->isCarTrip()Z

    move-result p1

    return p1
.end method
