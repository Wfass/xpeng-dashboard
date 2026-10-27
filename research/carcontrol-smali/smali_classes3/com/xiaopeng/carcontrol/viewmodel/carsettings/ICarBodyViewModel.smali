.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;
.super Ljava/lang/Object;
.source "ICarBodyViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract cancelAllControlSteer()V
.end method

.method public abstract controlChargePortByXKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract enterSteerScene()V
.end method

.method public abstract exitSteerScene()V
.end method

.method public abstract getArsWorkMode()I
.end method

.method public abstract getAutoPowerOffConfig()Z
.end method

.method public abstract getChargePortDisableString(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract getChargePortDisableString(ZZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "open"
        }
    .end annotation
.end method

.method public abstract getChargePortUnlock(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation
.end method

.method public abstract getColumnTravelAdjEnableSt()Z
.end method

.method public abstract getCwcChargeErrorSt()Z
.end method

.method public abstract getCwcChargeSt()I
.end method

.method public abstract getCwcFRChargeErrorSt()Z
.end method

.method public abstract getCwcFRChargeSt()I
.end method

.method public abstract getCwcRLChargeErrorSt()Z
.end method

.method public abstract getCwcRLChargeSt()I
.end method

.method public abstract getCwcRRChargeErrorSt()Z
.end method

.method public abstract getCwcRRChargeSt()I
.end method

.method public abstract getDriveAutoLock()Z
.end method

.method public abstract getEnvironmentMode()I
.end method

.method public abstract getInductionLock()Z
.end method

.method public abstract getLeaveAutoLock()Z
.end method

.method public abstract getLockResponseNew()I
.end method

.method public abstract getNearUnlock()Z
.end method

.method public abstract getParkingAutoUnlock()Z
.end method

.method public abstract getPhoneReminderSw()Z
.end method

.method public abstract getRearWiperRepairMode()Z
.end method

.method public abstract getSlideDoorOpenChargePortToast()I
.end method

.method public abstract getStealthMode()Z
.end method

.method public abstract getStopNfcCardSw()Z
.end method

.method public abstract getUnLockResponseNew()I
.end method

.method public abstract getUnlockResponse()I
.end method

.method public abstract getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
.end method

.method public abstract getWiperRepairMode()Z
.end method

.method public abstract isChargeGunUnlinked(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract isChargePortEnable(ZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "showToast"
        }
    .end annotation
.end method

.method public abstract isChargePortEnable(ZZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "open",
            "showToast"
        }
    .end annotation
.end method

.method public abstract isChargePortResetable(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract isChildModeEnable()Z
.end method

.method public abstract isCiuRainSwEnable()Z
.end method

.method public abstract isCwcFRSwEnable()Z
.end method

.method public abstract isCwcRLSwEnable()Z
.end method

.method public abstract isCwcRRSwEnable()Z
.end method

.method public abstract isCwcSwEnable()Z
.end method

.method public abstract isEbwEnabled()Z
.end method

.method public abstract isFWiperActiveSt()Z
.end method

.method public abstract isLeftChildLocked()Z
.end method

.method public abstract isLeftDoorHotKeyEnable()Z
.end method

.method public abstract isRearWiperFault()Z
.end method

.method public abstract isRearWiperSpeedSwitchOff()Z
.end method

.method public abstract isRightChildLocked()Z
.end method

.method public abstract isRightDoorHotKeyEnable()Z
.end method

.method public abstract isWiperFault()Z
.end method

.method public abstract isWiperSpeedSwitchOff()Z
.end method

.method public abstract moveSteerToExhibitionPos()V
.end method

.method public abstract onSteerControl(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract openCarBonnet()V
.end method

.method public abstract resetChargePort(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract setAllChildLock(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lock",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setArsWorkMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAutoPowerOffConfig(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setChargePortUnlock(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "port",
            "unlock"
        }
    .end annotation
.end method

.method public abstract setChildLock(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftSide",
            "lock"
        }
    .end annotation
.end method

.method public abstract setChildLock(ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftSide",
            "lock",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setChildModeEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCiuRainSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setColumnTravelAdjEnableSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcFRSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChecked"
        }
    .end annotation
.end method

.method public abstract setCwcRLSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcRRSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChecked"
        }
    .end annotation
.end method

.method public abstract setCwcSwEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isChecked",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setDriveAutoLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEbwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setInductionLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLeaveAutoLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLeftDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLockResponseNew(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLockResponseNowForAvas(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNearUnlock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setParkingAutoUnlock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPhoneReminderSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setRightDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setStealthMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setStopNfcCardSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNew(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNowForAvas(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setUnlockResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setUnlockResponseForAvas(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation
.end method

.method public abstract setWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method
