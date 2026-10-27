.class public interface abstract Lcom/xiaopeng/unity/capsule/ICapsuleManager;
.super Ljava/lang/Object;
.source "ICapsuleManager.java"


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract bindService()V
.end method

.method public abstract cancelAlarm()V
.end method

.method public abstract changeAlarmVolume(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation
.end method

.method public abstract changeDay2NightTry()V
.end method

.method public abstract changeMediaVolume(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation
.end method

.method public abstract changeSoundEffectStyleCinema(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation
.end method

.method public abstract controlWindow()V
.end method

.method public abstract enterCapsuleScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleMode"
        }
    .end annotation
.end method

.method public abstract exitCapsuleScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleMode"
        }
    .end annotation
.end method

.method public abstract exitCinemaMode()V
.end method

.method public abstract exitSleepMode()V
.end method

.method public abstract exitVipSeatMode()V
.end method

.method public abstract getAvailableMileage()I
.end method

.method public abstract getCapsuleVipSeatAct()I
.end method

.method public abstract getConnectedBtDeviceName()Ljava/lang/String;
.end method

.method public abstract getDrvVipSeatAct()I
.end method

.method public abstract getElectricityPercent()I
.end method

.method public abstract getEstimateEndurance(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivalTime"
        }
    .end annotation
.end method

.method public abstract getMileageMode()I
.end method

.method public abstract getPsnVipSeatAct()I
.end method

.method public abstract getRearSeatAct()I
.end method

.method public abstract getRlSeatAct()I
.end method

.method public abstract getRrSeatAct()I
.end method

.method public abstract getSleepSecSeatStatus()I
.end method

.method public abstract getSpaceCapsuleSleepMusic()Ljava/lang/String;
.end method

.method public abstract getWindowState()I
.end method

.method public abstract isA2dpConnected()Z
.end method

.method public abstract isBtSource()Z
.end method

.method public abstract isDrvHeadrestNormal()Z
.end method

.method public abstract isDrvSeatOccupied()Z
.end method

.method public abstract isFirstEnterSpaceCapsule()Z
.end method

.method public abstract isInDcCharge()Z
.end method

.method public abstract isProjectorConnected()Z
.end method

.method public abstract isPsnHeadrestNormal()Z
.end method

.method public abstract isPsnSeatOccupied()Z
.end method

.method public abstract isRearSeatOccupied()Z
.end method

.method public abstract isSourceInBt(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract isSwEnabled()Z
.end method

.method public abstract openSfs()V
.end method

.method public abstract pauseMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation
.end method

.method public abstract playMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation
.end method

.method public abstract registerBtDeviceNameObserver()V
.end method

.method public abstract registerBtStatusListener()V
.end method

.method public abstract reqSfsOpen()V
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract restoreAutoPowerOffConfig()V
.end method

.method public abstract restoreCapsuleBrightness()V
.end method

.method public abstract restoreDayNightTry()V
.end method

.method public abstract restoreSfs()V
.end method

.method public abstract resumeMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation
.end method

.method public abstract setAlarmTime(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triggerTime"
        }
    .end annotation
.end method

.method public abstract setAutoPowerOffConfigOff()V
.end method

.method public abstract setBtVolume(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setCapsuleBrightnessLow()V
.end method

.method public abstract setCapsuleVipSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setCurrentSubMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setDrvVipSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setPsnVipSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRearSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRearSeatFold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation
.end method

.method public abstract setRlSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setRrSeatAct(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setSleepMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSleepSecSeatStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation
.end method

.method public abstract setSoundFieldToMiddle(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation
.end method

.method public abstract setSpaceCapsuleSleepMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract setUserScenarioInfo(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scenarioName",
            "scenarioStatus",
            "subPage"
        }
    .end annotation
.end method

.method public abstract startMusicTimer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation
.end method

.method public abstract stopAlarm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alarmSource"
        }
    .end annotation
.end method

.method public abstract stopMusicTimer()V
.end method

.method public abstract switchBluetoothSource()V
.end method

.method public abstract unBindService()V
.end method

.method public abstract unRegisterBtDeviceNameObserver()V
.end method

.method public abstract unregisterBtStatusListener()V
.end method
