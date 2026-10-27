.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;
.super Ljava/lang/Object;
.source "IWindowDoorViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_1:I = 0x3c

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_2:I = 0x46

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_3:I = 0x50

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_4:I = 0x5a

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_5:I = 0x64

.field public static final BCM_TRUNK_WORK_MODE_ST_ANTI_PLAY_MODE:I = 0x2

.field public static final BCM_TRUNK_WORK_MODE_ST_MANUAL_MODE:I = 0x3

.field public static final BCM_TRUNK_WORK_MODE_ST_NORMAL:I = 0x0

.field public static final BCM_TRUNK_WORK_MODE_ST_OTA_PROBITY_MODE:I = 0x4

.field public static final BCM_TRUNK_WORK_MODE_ST_SYSTEM_ERROR:I = 0x1

.field public static final BCM_TRUNK_WORK_MODE_ST_VEHICLE_SPEED_PROBITY_MODE:I = 0x5

.field public static final BCM_WINDOW_ALL:I = 0x4

.field public static final BCM_WINDOW_FRONT:I = 0x5

.field public static final BCM_WINDOW_FRONT_LEFT:I = 0x0

.field public static final BCM_WINDOW_FRONT_RIGHT:I = 0x1

.field public static final BCM_WINDOW_LEFT:I = 0x7

.field public static final BCM_WINDOW_REAR:I = 0x6

.field public static final BCM_WINDOW_REAR_LEFT:I = 0x2

.field public static final BCM_WINDOW_REAR_RIGHT:I = 0x3

.field public static final BCM_WINDOW_RIGHT:I = 0x8

.field public static final DOOR_FL:I = 0x0

.field public static final DOOR_FR:I = 0x1

.field public static final DOOR_RL:I = 0x2

.field public static final DOOR_RR:I = 0x3

.field public static final SDC_CONTROL_CLOSE:I = 0x1

.field public static final SDC_CONTROL_OPEN:I = 0x2

.field public static final SDC_CONTROL_PAUSE:I = 0x3

.field public static final SDC_KEY_CTRL_CFG_DRIVER_DOOR:I = 0x0

.field public static final SDC_KEY_CTRL_CFG_FRONT_DOOR:I = 0x1

.field public static final SDC_SYSTEM_RUNNING_STATUS_CLOSED:I = 0x1

.field public static final SDC_SYS_RUNNING_STATUS_CLOSING:I = 0x3

.field public static final SDC_SYS_RUNNING_STATUS_OPENING:I = 0x2

.field public static final SDC_SYS_RUNNING_STATUS_OPEN_FINISHED:I = 0x5

.field public static final SDC_SYS_RUNNING_STATUS_PAUSE:I = 0x4

.field public static final SDC_SYS_RUNNING_STATUS_PREVENT_PLAYING_MODE:I = 0x6

.field public static final SLIDE_DOOR_CONTROL_CLOSE:I = 0x2

.field public static final SLIDE_DOOR_CONTROL_OPEN:I = 0x1

.field public static final SLIDE_DOOR_CONTROL_STATUS_ALREADY_DONE:I = 0x8

.field public static final SLIDE_DOOR_CONTROL_STATUS_CHARGE_PORT:I = 0x3

.field public static final SLIDE_DOOR_CONTROL_STATUS_FAULT:I = 0x4

.field public static final SLIDE_DOOR_CONTROL_STATUS_LOCKED:I = 0x7

.field public static final SLIDE_DOOR_CONTROL_STATUS_MANUAL:I = 0x6

.field public static final SLIDE_DOOR_CONTROL_STATUS_READY:I = 0x1

.field public static final SLIDE_DOOR_CONTROL_STATUS_RUNNING:I = 0x2

.field public static final SLIDE_DOOR_CONTROL_STATUS_THERMAL_PROTECT:I = 0x5

.field public static final SLIDE_DOOR_CONTROL_STOP:I = 0x3

.field public static final SLIDE_DOOR_MODE_MANUAL_MODE:I = 0x1

.field public static final SLIDE_DOOR_MODE_POWER_MODE:I = 0x0

.field public static final SLIDE_DOOR_STATE_BRAKEMODE:I = 0x7

.field public static final SLIDE_DOOR_STATE_CLOSED:I = 0x2

.field public static final SLIDE_DOOR_STATE_CLOSING:I = 0x4

.field public static final SLIDE_DOOR_STATE_DOORFREE:I = 0x6

.field public static final SLIDE_DOOR_STATE_FULL_OPEN:I = 0x1

.field public static final SLIDE_DOOR_STATE_OPENING:I = 0x3

.field public static final SLIDE_DOOR_STATE_STOPPED:I = 0x5

.field public static final SLIDE_DOOR_STATE_UNKNOWN:I = 0x0

.field public static final WINDOW_CLOSE_THRESHOLD:F = 95.0f

.field public static final WINDOW_FL:I = 0x1

.field public static final WINDOW_FR:I = 0x2

.field public static final WINDOW_OPEN_THRESHOLD:F = 3.0f

.field public static final WINDOW_RL:I = 0x3

.field public static final WINDOW_RR:I = 0x4


# direct methods
.method public static convertTrunkFullOpenPosLevel2Pos(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 p0, 0x3c

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0x50

    return p0

    :cond_3
    const/16 p0, 0x46

    return p0
.end method


# virtual methods
.method public abstract checkLeftSlideDoorCloseAvailability()I
.end method

.method public abstract checkLeftSlideDoorOpenAvailability(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation
.end method

.method public abstract checkLeftSlideDoorStopAvailability()I
.end method

.method public abstract checkRightSlideDoorCloseAvailability()I
.end method

.method public abstract checkRightSlideDoorOpenAvailability(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation
.end method

.method public abstract checkRightSlideDoorStopAvailability()I
.end method

.method public abstract closeSunShade()V
.end method

.method public abstract controlFLWin(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract controlFRWin(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract controlLeftSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlLeftSlideDoorByXKey()V
.end method

.method public abstract controlRLWin(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract controlRRWin(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract controlRearTrunk(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlRightSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlRightSlideDoorByXKey()V
.end method

.method public abstract controlSdc(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlSdc(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "open"
        }
    .end annotation
.end method

.method public abstract controlSdcByXKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation
.end method

.method public abstract controlWindowAuto(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract controlWindowVent()V
.end method

.method public abstract directControlLeftSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract directControlRightSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract getAutoWindowLockSw()Z
.end method

.method public abstract getBonnetState()Z
.end method

.method public abstract getDoorLockState()Z
.end method

.method public abstract getElcTrunkPos()I
.end method

.method public abstract getElcTrunkState()I
.end method

.method public abstract getFLWinPos()F
.end method

.method public abstract getFRWinPos()F
.end method

.method public abstract getLeftSdcDoorPos()I
.end method

.method public abstract getLeftSdcSysRunningState()I
.end method

.method public abstract getLeftSlideDoorMode()I
.end method

.method public abstract getLeftSlideDoorPos()I
.end method

.method public abstract getLeftSlideDoorState()I
.end method

.method public abstract getMixedDoorState()Ljava/lang/String;
.end method

.method public abstract getRLWinPos()F
.end method

.method public abstract getRRWinPos()F
.end method

.method public abstract getRearTrunkState()I
.end method

.method public abstract getRightSdcDoorPos()I
.end method

.method public abstract getRightSdcSysRunningState()I
.end method

.method public abstract getRightSlideDoorMode()I
.end method

.method public abstract getRightSlideDoorPos()I
.end method

.method public abstract getRightSlideDoorState()I
.end method

.method public abstract getSdcBrakeCloseDoorCfg()I
.end method

.method public abstract getSdcKeyCfg()I
.end method

.method public getSdcMaxAutoDoorOpeningAngle()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public abstract getSdcWinAutoDown()Z
.end method

.method public abstract getSunShadePos()I
.end method

.method public abstract getTrunkFullOpenPos()I
.end method

.method public abstract getTrunkWorkStatus()I
.end method

.method public abstract getWindowStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;
.end method

.method public abstract getWindowsPos()[F
.end method

.method public abstract getWindowsState()[Z
.end method

.method public initTrunkState()V
    .locals 0

    return-void
.end method

.method public abstract isAllDoorsClosed()Z
.end method

.method public abstract isAutoDoorHandleEnabled()Z
.end method

.method public abstract isCentralLocked()Z
.end method

.method public abstract isDoorClosed(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorIdx"
        }
    .end annotation
.end method

.method public abstract isHighSpdCloseWinEnabled()Z
.end method

.method public abstract isLeftSlideDoorFault()Z
.end method

.method public abstract isLeftSlideDoorLocked()Z
.end method

.method public abstract isLeftSlideDoorThermalProtect()Z
.end method

.method public abstract isRightSlideDoorBeyondOpeningLimit()Z
.end method

.method public abstract isRightSlideDoorFault()Z
.end method

.method public abstract isRightSlideDoorLocked()Z
.end method

.method public abstract isRightSlideDoorThermalProtect()Z
.end method

.method public abstract isSunShadeBlocked()Z
.end method

.method public abstract isSunShadeHotProtect()Z
.end method

.method public abstract isSunShadeInitialized()Z
.end method

.method public abstract isTrunkClosed()Z
.end method

.method public abstract isTrunkSensorEnable()Z
.end method

.method public abstract isWindowInitFailed(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract isWindowInitFailed(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "tts"
        }
    .end annotation
.end method

.method public abstract isWindowLockActive()Z
.end method

.method public abstract isWindowOpened()Z
.end method

.method public abstract openRearTrunk()V
.end method

.method public abstract openSunShade()V
.end method

.method public abstract resetSunShade()V
.end method

.method public abstract setAllWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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

.method public abstract setCentralLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setFLWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setFRWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setFrontWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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

.method public abstract setLeftWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setRLWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setRRWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setRearWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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

.method public abstract setRightWinPos(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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

.method public setSdcMaxAutoDoorOpeningAngle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    return-void
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

.method public abstract setSunShadePos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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
            "enable"
        }
    .end annotation
.end method

.method public abstract setWindowLockActive(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract stopSunShade()V
.end method
