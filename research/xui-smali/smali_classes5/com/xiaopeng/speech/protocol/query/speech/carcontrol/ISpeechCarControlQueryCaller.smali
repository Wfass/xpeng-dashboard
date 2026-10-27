.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/ISpeechCarControlQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechCarControlQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getACCStatus()I
.end method

.method public abstract getATWSState()I
.end method

.method public getAbnormalTirePressureState()I
    .locals 1

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAllTirePressureWarnings()[I
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1

    .line 430
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public abstract getBCMIgStatus()I
.end method

.method public abstract getBlindAreaDetectionWarning()I
.end method

.method public getCarControlAMPFeature()I
    .locals 1

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCarSpeed()F
.end method

.method public abstract getChairDirection()[I
.end method

.method public abstract getChairLocationValue()[I
.end method

.method public abstract getChairWelcomeMode()Z
.end method

.method public abstract getCruiseActive()I
.end method

.method public abstract getDoorLockState()Z
.end method

.method public abstract getDoorsState()[I
.end method

.method public abstract getDriveAutoLock()Z
.end method

.method public abstract getDriveTotalMileage()F
.end method

.method public abstract getDriverSeatStatus()I
.end method

.method public abstract getDrivingMode()I
.end method

.method public abstract getElectricSeatBelt()Z
.end method

.method public abstract getEmergencyBrakeWarning()Z
.end method

.method public abstract getEnergyRecycleLevel()I
.end method

.method public abstract getFarLampState()Z
.end method

.method public abstract getFrontCollisionSecurity()I
.end method

.method public abstract getHeadLampGroup()I
.end method

.method public abstract getICMDriverTempValue()F
.end method

.method public abstract getICMWindBlowMode()I
.end method

.method public abstract getICMWindLevel()I
.end method

.method public abstract getIcmAlarmVolume()I
.end method

.method public abstract getIcmConnectionState()Z
.end method

.method public abstract getIntelligentSpeedLimit()I
.end method

.method public abstract getInternalLight()Z
.end method

.method public abstract getLCCStatus()I
.end method

.method public abstract getLaneChangeAssist()I
.end method

.method public abstract getLaneDepartureWarning()I
.end method

.method public abstract getLastChargeMileage()F
.end method

.method public abstract getLastStartUpMileage()F
.end method

.method public abstract getLightMeHome()I
.end method

.method public abstract getLocationLampState()Z
.end method

.method public abstract getLowSocStatus()I
.end method

.method public abstract getMeterMileageA()F
.end method

.method public abstract getMeterMileageB()F
.end method

.method public abstract getNearLampState()Z
.end method

.method public abstract getOled()I
.end method

.method public abstract getParkingAutoUnlock()Z
.end method

.method public getPassengerChairLocationValue()[I
    .locals 1

    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public getPassengerSeatStatus()I
    .locals 1

    .line 343
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getRadarWarningVoiceStatus()Z
.end method

.method public abstract getRearFogLamp()Z
.end method

.method public abstract getRearSeatBeltWarning()Z
.end method

.method public abstract getRiseSpeakerStatus()I
.end method

.method public abstract getSeatErrorState()Z
.end method

.method public abstract getShiftStatus()I
.end method

.method public abstract getSideReversingWarning()I
.end method

.method public abstract getSpeedLimitWarningSwitch()Z
.end method

.method public abstract getSpeedLimitWarningValue()I
.end method

.method public abstract getSteerWheelRotationAngle()F
.end method

.method public abstract getSteeringWheelEPS()I
.end method

.method public getSystemFaultWarnLampStatus()I
    .locals 1

    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTirePressureAll()[F
.end method

.method public abstract getTrunk()I
.end method

.method public getTrunkOpennerStatus()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUnlockResponse()I
.end method

.method public abstract getWelcomeModeBackStatus()Z
.end method

.method public abstract getWindowLockStatus()I
.end method

.method public abstract getWindowsState()[F
.end method

.method public abstract getWiperInterval()I
.end method

.method public abstract isCarTrip()Z
.end method
