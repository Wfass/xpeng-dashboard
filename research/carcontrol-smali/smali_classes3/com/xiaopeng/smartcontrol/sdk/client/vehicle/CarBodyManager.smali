.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager;
.super Ljava/lang/Object;
.source "CarBodyManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarBodyManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final ARS_FOLDED:I = 0x0

.field public static final ARS_FOLDING:I = 0x1

.field public static final ARS_FOLD_DURG:I = 0x2

.field public static final ARS_INITING:I = 0x6

.field public static final ARS_MOVING:I = 0x1

.field public static final ARS_STOP:I = 0x0

.field public static final ARS_UNFOLDED:I = 0x2

.field public static final ARS_UNFOLDING:I = 0x3

.field public static final ARS_UNFOLD_DURG:I = 0x4

.field public static final ARS_ZERO_POS_LRN:I = 0x5

.field public static final CHARGE_PORT_STATE_CLOSED:I = 0x0

.field public static final CHARGE_PORT_STATE_FAULT:I = 0x3

.field public static final CHARGE_PORT_STATE_OPENED:I = 0x2

.field public static final CHARGE_PORT_STATE_RUNNING:I = 0x1

.field public static final CHARGE_PORT_STATE_UNKNOWN:I = 0x4

.field public static final CWC_CHARGE_STATE_CHARGE_DONE:I = 0x2

.field public static final CWC_CHARGE_STATE_CHARGING:I = 0x1

.field public static final CWC_CHARGE_STATE_NO_COMMAND:I = 0x0

.field public static final DOOR_FL:I = 0x0

.field public static final DOOR_FR:I = 0x1

.field public static final DOOR_RL:I = 0x2

.field public static final DOOR_RR:I = 0x3

.field public static final SDC_SW_CLOSE:I = 0x1

.field public static final SDC_SW_OPEN:I = 0x2

.field public static final SDC_SW_STOP:I = 0x3

.field public static final SDC_SYSTEM_RUNNING_STATUS_CLOSED:I = 0x1

.field public static final SDC_SYSTEM_RUNNING_STATUS_CLOSING:I = 0x3

.field public static final SDC_SYSTEM_RUNNING_STATUS_INITIAL:I = 0x0

.field public static final SDC_SYSTEM_RUNNING_STATUS_LOCK_STATUS_ERROR:I = 0x7

.field public static final SDC_SYSTEM_RUNNING_STATUS_OPENING:I = 0x2

.field public static final SDC_SYSTEM_RUNNING_STATUS_OPEN_FINISHED:I = 0x5

.field public static final SDC_SYSTEM_RUNNING_STATUS_PAUSE:I = 0x4

.field public static final SDC_SYSTEM_RUNNING_STATUS_PREVENT_PLAYING_MODE:I = 0x6

.field public static final SLIDER_DOOR_CONTROL_CLOSE:I = 0x2

.field public static final SLIDER_DOOR_CONTROL_OPEN:I = 0x1

.field public static final SLIDER_DOOR_CONTROL_STOP:I = 0x3

.field public static final SLIDER_DOOR_STATE_BRAKE_MODE:I = 0x7

.field public static final SLIDER_DOOR_STATE_CLOSED:I = 0x2

.field public static final SLIDER_DOOR_STATE_CLOSING:I = 0x4

.field public static final SLIDER_DOOR_STATE_DOOR_FREE:I = 0x6

.field public static final SLIDER_DOOR_STATE_FULL_OPEN:I = 0x1

.field public static final SLIDER_DOOR_STATE_OPENING:I = 0x3

.field public static final SLIDER_DOOR_STATE_STOPPED:I = 0x5

.field public static final SLIDER_DOOR_STATE_UNKNOWN:I = 0x0

.field public static final TPMS_FL:I = 0x1

.field public static final TPMS_FR:I = 0x2

.field public static final TPMS_RL:I = 0x3

.field public static final TPMS_RR:I = 0x4

.field public static final TRUNK_CONTROL_CLOSE:I = 0x3

.field public static final TRUNK_CONTROL_OPEN:I = 0x1

.field public static final TRUNK_CONTROL_PAUSE:I = 0x2

.field public static final TRUNK_POS_0:I = 0x0

.field public static final TRUNK_POS_10:I = 0x1

.field public static final TRUNK_POS_100:I = 0xa

.field public static final TRUNK_POS_20:I = 0x2

.field public static final TRUNK_POS_30:I = 0x3

.field public static final TRUNK_POS_40:I = 0x4

.field public static final TRUNK_POS_50:I = 0x5

.field public static final TRUNK_POS_60:I = 0x6

.field public static final TRUNK_POS_70:I = 0x7

.field public static final TRUNK_POS_80:I = 0x8

.field public static final TRUNK_POS_90:I = 0x9

.field public static final TRUNK_STATE_CLOSED:I = 0x0

.field public static final TRUNK_STATE_CLOSING:I = 0x2

.field public static final TRUNK_STATE_CLOSING_PAUSED:I = 0x4

.field public static final TRUNK_STATE_FULL_OPENED:I = 0x5

.field public static final TRUNK_STATE_OPENING:I = 0x1

.field public static final TRUNK_STATE_OPENING_PAUSED:I = 0x3

.field public static final WIPER_SENSITIVITY_HIGH:I = 0x3

.field public static final WIPER_SENSITIVITY_LOW:I = 0x1

.field public static final WIPER_SENSITIVITY_MID:I = 0x2

.field public static final WIPER_SENSITIVITY_SUPER:I = 0x3


# virtual methods
.method public abstract controlLeftSdc(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
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

.method public abstract controlRightSdc(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
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

.method public abstract controlSmartRestore()V
.end method

.method public abstract exeSmartRestore()V
.end method

.method public abstract foldArs()V
.end method

.method public abstract foldMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation
.end method

.method public abstract getArsFoldState()I
.end method

.method public abstract getArsPosition()I
.end method

.method public abstract getArsWorkState()I
.end method

.method public abstract getChargePort(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract getCwcChargeErrorSt()Z
.end method

.method public abstract getCwcChargeSt()I
.end method

.method public abstract getCwcFRChargeErrorSt()Z
.end method

.method public abstract getCwcFRChargeSt()I
.end method

.method public abstract getCwcFRSwEnable()Z
.end method

.method public abstract getCwcRLChargeErrorSt()Z
.end method

.method public abstract getCwcRLChargeSt()I
.end method

.method public abstract getCwcRLSwEnable()Z
.end method

.method public abstract getCwcRRChargeErrorSt()Z
.end method

.method public abstract getCwcRRChargeSt()I
.end method

.method public abstract getCwcRRSwEnable()Z
.end method

.method public abstract getCwcSwEnable()Z
.end method

.method public abstract getEasyLoadingSwitch()Z
.end method

.method public abstract getElcTrunkPos()I
.end method

.method public abstract getLeftChildLock()Z
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

.method public abstract getRightChildLock()Z
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

.method public abstract getTpmsWarningStates(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getTrunkState()I
.end method

.method public abstract getTyrePressure(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getTyreTemp(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getWiperSensitivity()I
.end method

.method public abstract isCentralLocked()Z
.end method

.method public abstract isDoorClosed(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract isTpmsTempWarning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
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

.method public abstract setCentralLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation
.end method

.method public abstract setChargePort(ZZ)V
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

.method public abstract setTrunk(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
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

.method public abstract unfoldArs()V
.end method
