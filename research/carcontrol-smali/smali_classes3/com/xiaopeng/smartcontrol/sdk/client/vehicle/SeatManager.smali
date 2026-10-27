.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager;
.super Ljava/lang/Object;
.source "SeatManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/SeatManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final MSMT_CTRL_FOLD:I = 0x1

.field public static final MSMT_CTRL_STOP:I = 0x3

.field public static final MSMT_CTRL_STOW_ENTER:I = 0x1

.field public static final MSMT_CTRL_STOW_RESTORE:I = 0x2

.field public static final MSMT_CTRL_STOW_STOP:I = 0x3

.field public static final MSMT_CTRL_UNFOLD:I = 0x2

.field public static final MSMT_STOW_STATE_FULLY_STOWED:I = 0x2

.field public static final MSMT_STOW_STATE_NOT_FULLY_STOWED:I = 0x1

.field public static final MSMT_STOW_STATE_STOW_PENDING:I = 0x3

.field public static final MSMT_STOW_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_STOW_STATE_UNSTOW_PENDING:I = 0x4

.field public static final MSMT_TILT_STATE_FOLD_PENDING:I = 0x3

.field public static final MSMT_TILT_STATE_FULLY_FOLED:I = 0x2

.field public static final MSMT_TILT_STATE_HALF_FOLED:I = 0x1

.field public static final MSMT_TILT_STATE_UNFOLD_PENDING:I = 0x4

.field public static final MSMT_TILT_STATE_UNKNOWN:I = 0x0

.field public static final MSM_ANTI_FATIGUE_MODE_BACKWARD:I = 0x2

.field public static final MSM_ANTI_FATIGUE_MODE_FORWARD:I = 0x1

.field public static final MSM_ANTI_FATIGUE_NO_REQ:I = 0x0

.field public static final MSM_ANTI_FATIGUE_START:I = 0x1

.field public static final MSM_ANTI_FATIGUE_STATE_ACTIVE:I = 0x2

.field public static final MSM_ANTI_FATIGUE_STATE_INACTIVE:I = 0x0

.field public static final MSM_ANTI_FATIGUE_STATE_READY:I = 0x1

.field public static final MSM_ANTI_FATIGUE_STOP:I = 0x2

.field public static final MSM_EASYENTRY_ENTERED:I = 0x2

.field public static final MSM_EASYENTRY_INACTIVE:I = 0x0

.field public static final MSM_EASYENTRY_PENDING:I = 0x1

.field public static final MSM_FRONTSEAT_AVOIDANCE_ADJ:I = 0x4

.field public static final MSM_MODE_CTRL_ENTER:I = 0x1

.field public static final MSM_MODE_CTRL_EXIT:I = 0x2

.field public static final MSM_MODE_CTRL_STOP:I = 0x3

.field public static final MSM_SEAT_AUTO_ADJ:I = 0x2

.field public static final MSM_SEAT_INITAL_ADJ:I = 0x3

.field public static final MSM_SEAT_MANUAL_ADJ:I = 0x1

.field public static final MSM_SEAT_STOP:I = 0x0

.field public static final MSM_ZEROGRAV_ENTERED:I = 0x2

.field public static final MSM_ZEROGRAV_INACTIVE:I = 0x0

.field public static final MSM_ZEROGRAV_PENDING:I = 0x1

.field public static final SEAT_FL:I = 0x0

.field public static final SEAT_FR:I = 0x1

.field public static final SEAT_RL:I = 0x2

.field public static final SEAT_RR:I = 0x3


# virtual methods
.method public abstract getDSeatCushionExtPos()I
.end method

.method public abstract getDSeatHorzPos()I
.end method

.method public abstract getDSeatLegPos()I
.end method

.method public abstract getDSeatTiltPos()I
.end method

.method public abstract getDSeatVerPos()I
.end method

.method public abstract getDriverAntiFatigueStatus()I
.end method

.method public abstract getDriverSeatAntiFatigueSw()Z
.end method

.method public abstract getDrvSeatMoveState()Z
.end method

.method public abstract getMassageMemoryMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract getMassagerIntensity(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getMassagerRunningEffectId(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract getPSeatHorzPos()I
.end method

.method public abstract getPSeatLegPos()I
.end method

.method public abstract getPSeatTiltPos()I
.end method

.method public abstract getPSeatVerPos()I
.end method

.method public abstract getParkDropdownMenuEnable()Z
.end method

.method public abstract getPsnSeatEqualMemory()Z
.end method

.method public abstract getPsnSeatMoveState()Z
.end method

.method public abstract getPsnSeatName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getPsnSeatSelectId()I
.end method

.method public abstract getPsnSrsEnable()Z
.end method

.method public abstract getRLSeatHorPos()I
.end method

.method public abstract getRLSeatLegHorPos()I
.end method

.method public abstract getRLSeatLegVerPos()I
.end method

.method public abstract getRLSeatName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getRLSeatSelectId()I
.end method

.method public abstract getRLSeatTiltPos()I
.end method

.method public abstract getRRSeatHorPos()I
.end method

.method public abstract getRRSeatLegHorPos()I
.end method

.method public abstract getRRSeatLegVerPos()I
.end method

.method public abstract getRRSeatName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getRRSeatSelectId()I
.end method

.method public abstract getRRSeatTiltPos()I
.end method

.method public abstract getRlSeatEqualMemory()Z
.end method

.method public abstract getRrSeatEqualMemory()Z
.end method

.method public abstract getSecRowLtSeatEZ()I
.end method

.method public abstract getSecRowLtSeatZeroGrav()I
.end method

.method public abstract getSecRowRtSeatEZ()I
.end method

.method public abstract getSecRowRtSeatZeroGrav()I
.end method

.method public abstract getTrdRowLtSeatFold()I
.end method

.method public abstract getTrdRowLtSeatTiltPos()I
.end method

.method public abstract getTrdRowRtSeatFold()I
.end method

.method public abstract getTrdRowRtSeatTiltPos()I
.end method

.method public abstract getTrdRowSeatStowState()I
.end method

.method public abstract isDrvBeltUnbuckled()Z
.end method

.method public abstract isDrvHeadrestNormal()Z
.end method

.method public abstract isDrvSeatOccupied()Z
.end method

.method public abstract isDrvSeatSbrSt()Z
.end method

.method public abstract isMassagerRunning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract isPsnBeltUnbuckled()Z
.end method

.method public abstract isPsnHeadrestNormal()Z
.end method

.method public abstract isPsnSeatOccupied()Z
.end method

.method public abstract isPsnSeatSbrSt()Z
.end method

.method public abstract isRearSeatSbrSt()Z
.end method

.method public abstract isRlSeatOccupied()Z
.end method

.method public abstract isRmSeatOccupied()Z
.end method

.method public abstract isRrSeatOccupied()Z
.end method

.method public abstract isTlSeatOccupied()Z
.end method

.method public abstract isTmSeatOccupied()Z
.end method

.method public abstract isTrSeatOccupied()Z
.end method

.method public abstract restoreDrvSeatPos()Z
.end method

.method public abstract restorePsnSeatPos()Z
.end method

.method public abstract setDSeatCushionExtPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDSeatHorzPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDSeatLegPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDSeatVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDriverAntiFatigueMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setDriverAntiFatigueReq(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract setDriverSeatAntiFatigueSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setDrvSeatAllPositions(IIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation
.end method

.method public abstract setDrvSeatAllPositionsWithoutSave(IIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation
.end method

.method public abstract setDrvSeatLayFlat()V
.end method

.method public abstract setMassageMemoryMode(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation
.end method

.method public abstract setMassagerIntensity(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "intensity"
        }
    .end annotation
.end method

.method public abstract setPSeatHorzPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPSeatLegPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPSeatVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatAllPositions(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatAllPositionsWithoutSave(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatLayFlat()V
.end method

.method public abstract setPsnSrsEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRLSeatFold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation
.end method

.method public abstract setRLSeatHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatLegHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatLegVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatFold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation
.end method

.method public abstract setRRSeatHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatLegHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatLegVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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

.method public abstract setSeatMenuNotShowKeepTime(ZJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drv",
            "keepTime"
        }
    .end annotation
.end method

.method public abstract setSecRowLtSeatEZ(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setSecRowLtSeatOneKeyRestore()V
.end method

.method public abstract setSecRowLtSeatZeroGrav(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setSecRowLtSeatZeroGravWithScreen(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenType"
        }
    .end annotation
.end method

.method public abstract setSecRowRtSeatEZ(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setSecRowRtSeatOneKeyRestore()V
.end method

.method public abstract setSecRowRtSeatZeroGrav(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setSecRowRtSeatZeroGravWithScreen(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenType"
        }
    .end annotation
.end method

.method public abstract setTrdRowLtSeatFold(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setTrdRowLtSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrdRowRtSeatFold(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setTrdRowRtSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrdRowSeatStow(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract startMassager(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "effectId"
        }
    .end annotation
.end method

.method public abstract startMassagerWithIntensity(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatId",
            "intensity",
            "effectId"
        }
    .end annotation
.end method

.method public abstract stopDrvSeatMove()V
.end method

.method public abstract stopMassager(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract stopPsnSeatMove()V
.end method

.method public abstract switchPsnSeatId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract switchRLSeatId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract switchRRSeatId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method
