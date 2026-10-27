.class public interface abstract Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;
.super Ljava/lang/Object;
.source "ICarControlCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getAtmosphereBrightnessStatus()I
.end method

.method public abstract getAtmosphereColorStatus()I
.end method

.method public getCapsuleCurrentMode()I
    .locals 1

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getControlComfortableDrivingModeSupport()I
    .locals 1

    .line 343
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getControlElectricCurtainSupport()I
.end method

.method public getControlLampSignalSupport()I
    .locals 1

    .line 354
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getControlLowSpeedAnalogSoundSupport()I
.end method

.method public abstract getControlScissorDoorLeftCloseSupport()I
.end method

.method public abstract getControlScissorDoorLeftOpenSupport()I
.end method

.method public abstract getControlScissorDoorLeftRunningSupport()I
.end method

.method public abstract getControlScissorDoorRightCloseSupport()I
.end method

.method public abstract getControlScissorDoorRightOpenSupport()I
.end method

.method public abstract getControlScissorDoorRightRunningSupport()I
.end method

.method public abstract getControlSupportEnergyRecycleReason()I
.end method

.method public getControlWindowsStateSupport()[F
    .locals 1

    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getControlXpedalSupport()I
.end method

.method public abstract getDoorKeyValue()I
.end method

.method public abstract getExtraTrunkStatus()I
.end method

.method public abstract getGuiPageOpenState(Ljava/lang/String;)I
.end method

.method public abstract getLegHeight()I
.end method

.method public abstract getMirrorStatus()I
.end method

.method public getNgpStatus()I
    .locals 1

    .line 368
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getStatusChargePortControl(II)I
.end method

.method public abstract getSupportCloseTrunk()I
.end method

.method public abstract getSupportOpenTrunk()I
.end method

.method public abstract getSupportPsnSeat()I
.end method

.method public abstract getSupportSeat()I
.end method

.method public abstract getTrunkStatus()I
.end method

.method public getVipChairStatus()I
    .locals 1

    .line 376
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getWindowStatus()I
.end method

.method public abstract getWiperInterval()I
.end method

.method public abstract isSteeringModeAdjustable()I
.end method

.method public abstract isSupportAtmosphere()Z
.end method

.method public abstract isSupportCloseMirror()Z
.end method

.method public abstract isSupportControlChargePort(II)Z
.end method

.method public abstract isSupportControlMirror()Z
.end method

.method public abstract isSupportDrivingMode()Z
.end method

.method public abstract isSupportEnergyRecycle()Z
.end method

.method public abstract isSupportUnlockTrunk()Z
.end method

.method public abstract isTirePressureNormal()Z
.end method
