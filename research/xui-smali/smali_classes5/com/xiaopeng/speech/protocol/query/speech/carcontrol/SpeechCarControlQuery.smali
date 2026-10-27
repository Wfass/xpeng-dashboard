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

    .line 15
    return-void
.end method


# virtual methods
.method protected getACCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.acc.state"
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getACCStatus()I

    move-result v0

    return v0
.end method

.method protected getATWSState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.atws.state"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getATWSState()I

    move-result v0

    return v0
.end method

.method protected getAbnormalTirePressureState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.tpm.pressure.warn.status"
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAbnormalTirePressureState()I

    move-result v0

    return v0
.end method

.method protected getAllTirePressureWarnings(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.tire.pressure.warnings"
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAllTirePressureWarnings()[I

    move-result-object v0

    return-object v0
.end method

.method protected getAllTireTemperatureWarnings(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.tire.temperature.warnings"
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getAllTireTemperatureWarnings()[I

    move-result-object v0

    return-object v0
.end method

.method protected getBCMIgStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.ig.state"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getBCMIgStatus()I

    move-result v0

    return v0
.end method

.method protected getBlindAreaDetectionWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.warn.blind.area.state"
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getBlindAreaDetectionWarning()I

    move-result v0

    return v0
.end method

.method protected getCarControlAMPFeature(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.amp.feature"
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCarControlAMPFeature()I

    move-result v0

    return v0
.end method

.method protected getCarSpeed(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.speed.car"
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCarSpeed()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getChairDirection(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.direction"
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairDirection()[I

    move-result-object v0

    return-object v0
.end method

.method protected getChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.position"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairLocationValue()[I

    move-result-object v0

    return-object v0
.end method

.method protected getChairWelcomeMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.mode.welcome.state"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getChairWelcomeMode()Z

    move-result v0

    return v0
.end method

.method protected getCruiseControlStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.cruise.status"
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getCruiseActive()I

    move-result v0

    return v0
.end method

.method protected getDoorLockState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lock.state"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDoorLockState()Z

    move-result v0

    return v0
.end method

.method protected getDoorsState(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.door.sate"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDoorsState()[I

    move-result-object v0

    return-object v0
.end method

.method protected getDriveAutoLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lock.drive.auto"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriveAutoLock()Z

    move-result v0

    return v0
.end method

.method protected getDriveTotalMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.total"
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriveTotalMileage()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getDriverSeatStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.main.human.state"
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDriverSeatStatus()I

    move-result v0

    return v0
.end method

.method protected getDrivingMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.drive.mode"
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getDrivingMode()I

    move-result v0

    return v0
.end method

.method protected getElectricSeatBelt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.belt.electric.state"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getElectricSeatBelt()Z

    move-result v0

    return v0
.end method

.method protected getEmergencyBrakeWarning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.brake.emergency.warn"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getEmergencyBrakeWarning()Z

    move-result v0

    return v0
.end method

.method protected getEnergyRecycleLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.recycle.lv"
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getEnergyRecycleLevel()I

    move-result v0

    return v0
.end method

.method protected getFarLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.far"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getFarLampState()Z

    move-result v0

    return v0
.end method

.method protected getFrontCollisionSecurity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.front.collision.state"
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getFrontCollisionSecurity()I

    move-result v0

    return v0
.end method

.method protected getHeadLampGroup(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.headgroup"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getHeadLampGroup()I

    move-result v0

    return v0
.end method

.method protected getICMDriverTempValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.icm.driver.temp"
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMDriverTempValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getICMWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.icm.wind.mode"
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMWindBlowMode()I

    move-result v0

    return v0
.end method

.method protected getICMWindLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.icm.wind.lv"
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getICMWindLevel()I

    move-result v0

    return v0
.end method

.method protected getIcmAlarmVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.icm.volume.warn"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIcmAlarmVolume()I

    move-result v0

    return v0
.end method

.method protected getIcmConnectionState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.icm.state"
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIcmConnectionState()Z

    move-result v0

    return v0
.end method

.method protected getIntelligentSpeedLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.limit.intel"
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getIntelligentSpeedLimit()I

    move-result v0

    return v0
.end method

.method protected getInternalLight(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.inner"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getInternalLight()Z

    move-result v0

    return v0
.end method

.method protected getLCCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lcc.state"
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLCCStatus()I

    move-result v0

    return v0
.end method

.method protected getLaneChangeAssist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lane.change.assist.state"
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLaneChangeAssist()I

    move-result v0

    return v0
.end method

.method protected getLaneDepartureWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.warn.lane.departure.state"
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLaneDepartureWarning()I

    move-result v0

    return v0
.end method

.method protected getLastChargeMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.last.charge"
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLastChargeMileage()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getLastStartUpMileage(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.last.start"
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLastStartUpMileage()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getLightMeHome(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lightmehome.state"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLightMeHome()I

    move-result v0

    return v0
.end method

.method protected getLocationLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.location"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLocationLampState()Z

    move-result v0

    return v0
.end method

.method protected getLowSocStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.charge.power.status"
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getLowSocStatus()I

    move-result v0

    return v0
.end method

.method protected getMeterMileageA(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.a"
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getMeterMileageA()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getMeterMileageB(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.meter.b"
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getMeterMileageB()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getNearLampState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.near"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getNearLampState()Z

    move-result v0

    return v0
.end method

.method protected getOled(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.oled.state"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getOled()I

    move-result v0

    return v0
.end method

.method protected getParkingAutoUnlock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lock.parking.auto"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getParkingAutoUnlock()Z

    move-result v0

    return v0
.end method

.method protected getPassengerChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.passenger.seat.position"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getPassengerChairLocationValue()[I

    move-result-object v0

    return-object v0
.end method

.method protected getPassengerSeatStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.passenger.human.state"
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getPassengerSeatStatus()I

    move-result v0

    return v0
.end method

.method protected getRadarWarningVoiceStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.warn.radar.slow.state"
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRadarWarningVoiceStatus()Z

    move-result v0

    return v0
.end method

.method protected getRearFogLamp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lamp.rearfog"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRearFogLamp()Z

    move-result v0

    return v0
.end method

.method protected getRearSeatBeltWarning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.belt.rearseat.state"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRearSeatBeltWarning()Z

    move-result v0

    return v0
.end method

.method protected getRiseSpeakerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getRiseSpeakerStatus()I

    move-result v0

    return v0
.end method

.method protected getSeatErrorState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.error"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSeatErrorState()Z

    move-result v0

    return v0
.end method

.method protected getShiftStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.shift.state"
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getShiftStatus()I

    move-result v0

    return v0
.end method

.method protected getSideReversingWarning(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.warn.side.rever.state"
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSideReversingWarning()I

    move-result v0

    return v0
.end method

.method protected getSpeedLimitWarningSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.speed.limit.state"
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSpeedLimitWarningSwitch()Z

    move-result v0

    return v0
.end method

.method protected getSpeedLimitWarningValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.speed.limit.value"
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSpeedLimitWarningValue()I

    move-result v0

    return v0
.end method

.method protected getSteerWheelRotationAngle(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.rotation.steer"
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSteerWheelRotationAngle()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getSteeringWheelEPS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.steer.eps"
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSteeringWheelEPS()I

    move-result v0

    return v0
.end method

.method protected getSystemFaultWarnLampStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.tpm.system.warn.status"
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getSystemFaultWarnLampStatus()I

    move-result v0

    return v0
.end method

.method protected getTirePressureAll(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.tire.pressure"
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTirePressureAll()[F

    move-result-object v0

    return-object v0
.end method

.method protected getTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.trunk.state"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTrunk()I

    move-result v0

    return v0
.end method

.method protected getTrunkOpennerState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.trunk.openner.state"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getTrunkOpennerStatus()I

    move-result v0

    return v0
.end method

.method protected getUnlockResponse(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.lock.unlock.response"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getUnlockResponse()I

    move-result v0

    return v0
.end method

.method protected getWelcomeModeBackStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.seat.welcome.mode.state"
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWelcomeModeBackStatus()Z

    move-result v0

    return v0
.end method

.method protected getWindowLockStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.window.lock_state"
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWindowLockStatus()I

    move-result v0

    return v0
.end method

.method protected getWindowsState(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.window.sate"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWindowsState()[F

    move-result-object v0

    return-object v0
.end method

.method protected getWiperInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.wiper.level"
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->getWiperInterval()I

    move-result v0

    return v0
.end method

.method protected isCarTrip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.is.car.trip"
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;->isCarTrip()Z

    move-result v0

    return v0
.end method
