.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ISettingsManager;
.super Ljava/lang/Object;
.source "ISettingsManager.java"


# virtual methods
.method public abstract getAbsFault()Z
.end method

.method public abstract getAirSuspensionRepairMode()Z
.end method

.method public abstract getAirSuspensionWelcome()Z
.end method

.method public abstract getAsEngineerMode()I
.end method

.method public abstract getAsFault()Z
.end method

.method public abstract getAsRequestEspState()I
.end method

.method public abstract getAutoDoorHandleEnable()Z
.end method

.method public abstract getAutoPowerOffConfig()Z
.end method

.method public abstract getAutoWindowLockSw()Z
.end method

.method public abstract getAvasLowSpdEffect()I
.end method

.method public abstract getAvasLowSpdEffectWithoutOff()I
.end method

.method public abstract getAvasSpeakerSw()Z
.end method

.method public abstract getAvhFault()Z
.end method

.method public abstract getAvhSw()Z
.end method

.method public abstract getAwdSetting()I
.end method

.method public abstract getBackBeltSw()Z
.end method

.method public abstract getBootEffectBeforeSw()I
.end method

.method public abstract getBootSoundEffectValue()I
.end method

.method public abstract getCarpetLightWelcomeMode()Z
.end method

.method public abstract getCdcuTrailerModeStatus()Z
.end method

.method public abstract getCwcFRSwEnable()Z
.end method

.method public abstract getCwcRLSwEnable()Z
.end method

.method public abstract getCwcRRSwEnable()Z
.end method

.method public abstract getCwcSwEnable()Z
.end method

.method public abstract getDoorKeyValue()I
.end method

.method public abstract getDsmStatus()I
.end method

.method public abstract getDtcFaultStatus()Z
.end method

.method public abstract getEasyLoadingSwitch()Z
.end method

.method public abstract getEpbSystemStatus()I
.end method

.method public abstract getEsbMode()Z
.end method

.method public abstract getEspBpfMode()I
.end method

.method public abstract getEspCstSw()Z
.end method

.method public abstract getEspFault()Z
.end method

.method public abstract getEspSw()Z
.end method

.method public abstract getHdc()Z
.end method

.method public abstract getHdcFault()Z
.end method

.method public abstract getHighSpdCloseWin()Z
.end method

.method public abstract getLeaveAutoLock()Z
.end method

.method public abstract getLeftChildLock()Z
.end method

.method public abstract getLeftSlideDoorMode()I
.end method

.method public abstract getLockResponseNew()I
.end method

.method public abstract getMicrophoneMute()Z
.end method

.method public abstract getNGearWarningSwitch()Z
.end method

.method public abstract getNearUnlock()Z
.end method

.method public abstract getNewDriveArchXPedalMode()Z
.end method

.method public abstract getNgpMode()I
.end method

.method public abstract getParkDropdownMenuEnable()Z
.end method

.method public abstract getParkingAutoUnlock()Z
.end method

.method public abstract getPhoneRemindSw()Z
.end method

.method public abstract getPollingLightWelcomeMode()Z
.end method

.method public abstract getPsnWelcomeMode()Z
.end method

.method public abstract getRearLeaveRemindWarningSw()Z
.end method

.method public abstract getRearSeatWelcomeMode()Z
.end method

.method public abstract getRightChildLock()Z
.end method

.method public abstract getRightSlideDoorMode()I
.end method

.method public abstract getSdcBrakeCloseDoorCfg()I
.end method

.method public abstract getSdcKeyCfg()I
.end method

.method public abstract getSdcMaxAutoDoorOpeningAngle()I
.end method

.method public abstract getSdcWinAutoDown()Z
.end method

.method public abstract getSecRowLeftSeatBeltWarning()Z
.end method

.method public abstract getSecRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getSecRowRightSeatBeltWarning()Z
.end method

.method public abstract getSnowMode()Z
.end method

.method public abstract getStopNfcCardSw()Z
.end method

.method public abstract getTorsionBarTorque()F
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getTrdRowLeftSeatBeltWarning()Z
.end method

.method public abstract getTrdRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getTrdRowRightSeatBeltWarning()Z
.end method

.method public abstract getTrunkFullOpenPos()I
.end method

.method public abstract getTrunkSensorEnable()Z
.end method

.method public abstract getTsmFaultStatus()Z
.end method

.method public abstract getTtmDenormalizeStatus()Z
.end method

.method public abstract getTtmLampConnectStatus()Z
.end method

.method public abstract getTtmStatus()I
.end method

.method public abstract getTtmSystemError()Z
.end method

.method public abstract getUnLockResponseNew()I
.end method

.method public abstract getUnlockResponse()I
.end method

.method public abstract getWelcomeMode()Z
.end method

.method public abstract getWiperSensitivity()I
.end method

.method public abstract getXKeyValue()I
.end method

.method public abstract isBreakPedalPressed()Z
.end method

.method public abstract isCngpRunning()Z
.end method

.method public abstract isExhibitionModeOn()Z
.end method

.method public abstract isLccRunning()Z
.end method

.method public abstract isLowSpdSoundEnabled()Z
.end method

.method public abstract isMudDriveMode()Z
.end method

.method public abstract isNgpRunning()Z
.end method

.method public abstract resetTtmSwitch()V
.end method

.method public abstract setAirSuspensionWelcome(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAutoDoorHandleEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setAutoWindowLockSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvasLowSpdEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setAvasSpeakerSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvhSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAwdSetting(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setBackBeltSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setBootEffectBeforeSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setBootSoundEffectValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setCarpetLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCdcuTrailerModeStatus(Z)V
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
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcSwFREnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcSwRLEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcSwRREnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDsmSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setEasyLoadingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setEpbSystemStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEsbMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setEspBpfMode(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setEspCstSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setHdc(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setHighSpdCloseWin(Z)V
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

.method public abstract setLeftChildLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setLeftSlideDoorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method

.method public abstract setLowSpdSoundEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMicrophoneMute(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract setNGearWarningSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
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

.method public abstract setParkDropdownMenuEnable(Z)V
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

.method public abstract setPhoneRemindSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPollingLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPsnWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearLeaveRemindWarningSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setRearSeatWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRightChildLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setRightSlideDoorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSdcBrakeCloseDoorCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract setSdcKeyCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract setSdcMaxAutoDoorOpeningAngle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation
.end method

.method public abstract setSdcWinAutoDown(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract setSecRowLeftSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSecRowMiddleSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSecRowRightSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSnowMode(Z)V
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

.method public abstract setTrdRowLeftSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrdRowMiddleSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrdRowRightSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrunkFullOpenPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrunkSensorEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setTtmSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method

.method public abstract setUnlockResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method

.method public abstract setWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWiperSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract showMicrophoneConfirmDialog()V
.end method

.method public abstract showTrailerModePanel()V
.end method

.method public abstract startRescueMode()V
.end method

.method public abstract stopSoundPreview()V
.end method
