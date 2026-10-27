.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;
.super Ljava/lang/Object;
.source "IMsmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_POS_SET_MEMORY_TYPE_NO_REQ:I = 0x0

.field public static final ALL_POS_SET_MEMORY_TYPE_RECALL_POSITION:I = 0x2

.field public static final ALL_POS_SET_MEMORY_TYPE_SAVE_POSITION:I = 0x1

.field public static final LUMBER_SWITCH_MODE_CUSHION_EXTENSION:I = 0x1

.field public static final LUMBER_SWITCH_MODE_LUMBER:I = 0x0

.field public static final LUMB_CTRL_SW_CTRL_DISABLE:I = 0x0

.field public static final LUMB_CTRL_SW_CTRL_ENABLE:I = 0x1

.field public static final MSMT_STOW_STATE_NOT_STOWED:I = 0x1

.field public static final MSMT_STOW_STATE_STOWED:I = 0x2

.field public static final MSMT_STOW_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STATE_FULLY_FOLED:I = 0x2

.field public static final MSMT_TILT_STATE_HALF_FOLED:I = 0x1

.field public static final MSMT_TILT_STATE_UNKNOWN:I = 0x0

.field public static final MSM_CONTROL_PENDING:I = 0x2

.field public static final MSM_CONTROL_START:I = 0x1

.field public static final MSM_CONTROL_STOP:I = 0x3

.field public static final MSM_EASYENTRY_ENTERED:I = 0x4

.field public static final MSM_EASYENTRY_PENDING:I = 0x3

.field public static final MSM_FUNCTION_INACTIVE:I = 0x0

.field public static final MSM_FUNCTION_STOP:I = 0x5

.field public static final MSM_MODE_CTRL_ENTER:I = 0x1

.field public static final MSM_MODE_CTRL_EXIT:I = 0x2

.field public static final MSM_MODE_CTRL_STOP:I = 0x3

.field public static final MSM_SEAT_MAX_PERCENT:I = 0x62

.field public static final MSM_SEAT_MAX_VALID_PERCENT:I = 0x64

.field public static final MSM_SEAT_MEMORY_POS_DRV:I = 0x0

.field public static final MSM_SEAT_MEMORY_POS_PSN:I = 0x1

.field public static final MSM_SEAT_MEMORY_POS_RL:I = 0x2

.field public static final MSM_SEAT_MEMORY_POS_RR:I = 0x3

.field public static final MSM_SEAT_MIN_PERCENT:I = 0x2

.field public static final MSM_SEAT_MIN_VALID_PERCENT:I = 0x0

.field public static final MSM_SEAT_STOP:I = 0x0

.field public static final MSM_STATE_DEFAULT:I = 0x3

.field public static final MSM_STATE_EASY_ENTRY:I = 0x2

.field public static final MSM_STATE_OTHER:I = 0x0

.field public static final MSM_STATE_ZERO_GRAVITY:I = 0x1

.field public static final MSM_ZEROGRAV_ENTERED:I = 0x2

.field public static final MSM_ZEROGRAV_PENDING:I = 0x1

.field public static final SEAT_CONTROL_LOCUS_BOSS:I = 0x2

.field public static final SEAT_CONTROL_LOCUS_MANUAL:I = 0x1

.field public static final SEAT_CONTROL_LOCUS_SPEECH:I = 0x3

.field public static final SEAT_DRIVER_INDEX:I = 0x0

.field public static final SEAT_DRVREAR_INDEX:I = 0x2

.field public static final SEAT_MEMORY_INDEX_NEW:I = -0x1

.field public static final SEAT_MOVE_DIRECTION_BACKWARD:I = 0x2

.field public static final SEAT_MOVE_DIRECTION_FORWARD:I = 0x1

.field public static final SEAT_MOVE_HORZ:I = 0x1

.field public static final SEAT_MOVE_LEG:I = 0x4

.field public static final SEAT_MOVE_LEG_HORZ:I = 0x7

.field public static final SEAT_MOVE_LUMB_HORZ:I = 0x5

.field public static final SEAT_MOVE_LUMB_VERT:I = 0x6

.field public static final SEAT_MOVE_TILT:I = 0x3

.field public static final SEAT_MOVE_VERT:I = 0x2

.field public static final SEAT_MSG_MODE_OFF:I = 0x0

.field public static final SEAT_MSG_STRENGTH_1:I = 0x1

.field public static final SEAT_MSG_STRENGTH_2:I = 0x2

.field public static final SEAT_MSG_STRENGTH_3:I = 0x3

.field public static final SEAT_PASSENGER_INDEX:I = 0x1

.field public static final SEAT_PSNREAR_INDEX:I = 0x3

.field public static final SEAT_RTM_STRENGTH_1:I = 0x1

.field public static final SEAT_RTM_STRENGTH_2:I = 0x2

.field public static final SEAT_RTM_STRENGTH_3:I = 0x3

.field public static final SEAT_RTM_STRENGTH_4:I = 0x4

.field public static final SEAT_RTM_STRENGTH_5:I = 0x5

.field public static final SRS_NO_WARNING:I = 0x0

.field public static final SRS_WARNING:I = 0x1


# virtual methods
.method public abstract doVibrate(ILjava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId",
            "loop",
            "type"
        }
    .end annotation
.end method

.method public abstract getBackBeltWStatus()Z
.end method

.method public abstract getCurrentSelectedPsnHabit()I
.end method

.method public abstract getCurrentSelectedRLHabit()I
.end method

.method public abstract getCurrentSelectedRRHabit()I
.end method

.method public abstract getDSeatCushionPos()I
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

.method public abstract getDriverSeatLumbControlSwitchEnable()Z
.end method

.method public abstract getDriverSeatLumberSwitchMode()I
.end method

.method public abstract getDriverSeatMoveState()I
.end method

.method public abstract getDrvBeltStatus()I
.end method

.method public abstract getDrvSeatPos(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDrvSeatPosIdx()I
.end method

.method public abstract getDrvTargetSeatPos()[I
.end method

.method public abstract getEsbEnable()Z
.end method

.method public abstract getEsbModeSp()Z
.end method

.method public abstract getHabitConfigs(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "habitId"
        }
    .end annotation
.end method

.method public abstract getMassageMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract getMassagerEffectIDs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMassagerEffectId(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
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

.method public abstract getPSeatHorzPos()I
.end method

.method public abstract getPSeatLegPos()I
.end method

.method public abstract getPSeatTiltPos()I
.end method

.method public abstract getPSeatVerPos()I
.end method

.method public abstract getPassengerSeatLumbControlSwitchEnable()Z
.end method

.method public abstract getPassengerSeatLumberSwitchMode()I
.end method

.method public abstract getPassengerSeatMoveState()I
.end method

.method public abstract getPsnBeltStatus()I
.end method

.method public abstract getPsnSeatDefaultPos()[I
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

.method public abstract getPsnSeatPos()[I
.end method

.method public abstract getPsnSeatPosIdx(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getPsnSeatWelcomeMode()Z
.end method

.method public abstract getPsnSelectSeatPos(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getPsnSrsEnable()Z
.end method

.method public abstract getPsnTargetSeatPos()[I
.end method

.method public abstract getRLSeatHeadHorPos()I
.end method

.method public abstract getRLSeatHeadVerPos()I
.end method

.method public abstract getRLSeatHorPos()I
.end method

.method public abstract getRLSeatLegHorPos()I
.end method

.method public abstract getRLSeatLegPos()I
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

.method public abstract getRLSeatNowPos()[I
.end method

.method public abstract getRLSeatPos()[I
.end method

.method public abstract getRLSeatTiltPos()I
.end method

.method public abstract getRLSeatZeroAngle()I
.end method

.method public abstract getRLSelectSeatPos(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getRRSeatHeadHorPos()I
.end method

.method public abstract getRRSeatHeadVerPos()I
.end method

.method public abstract getRRSeatHorPos()I
.end method

.method public abstract getRRSeatLegHorPos()I
.end method

.method public abstract getRRSeatLegPos()I
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

.method public abstract getRRSeatNowPos()[I
.end method

.method public abstract getRRSeatPos()[I
.end method

.method public abstract getRRSeatTiltPos()I
.end method

.method public abstract getRRSeatZeroAngle()I
.end method

.method public abstract getRRSelectSeatPos(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract getRhythmIntensity(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getRhythmMode()I
.end method

.method public abstract getRlFuncTrigSource()I
.end method

.method public abstract getRrFuncTrigSource()I
.end method

.method public abstract getSeatMemoryConfigs()Ljava/lang/String;
.end method

.method public abstract getSecRowLTFuctionStatus()I
.end method

.method public abstract getSecRowLTMoveStatus()I
.end method

.method public abstract getSecRowLtSeatZeroGrav()I
.end method

.method public abstract getSecRowRTFuctionStatus()I
.end method

.method public abstract getSecRowRTMoveStatus()I
.end method

.method public abstract getSecRowRtSeatZeroGrav()I
.end method

.method public abstract getTlFuncTrigSource()I
.end method

.method public abstract getTrFuncTrigSource()I
.end method

.method public abstract getTrdRowLTHeadStatus()I
.end method

.method public abstract getTrdRowLeftSeatTiltState()I
.end method

.method public abstract getTrdRowLtSeatFol()I
.end method

.method public abstract getTrdRowLtSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowLtSeatTiltPos()I
.end method

.method public abstract getTrdRowMidHeadStatus()I
.end method

.method public abstract getTrdRowMidSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowRTHeadStatus()I
.end method

.method public abstract getTrdRowRightSeatTiltState()I
.end method

.method public abstract getTrdRowRtSeatFol()I
.end method

.method public abstract getTrdRowRtSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowRtSeatTiltPos()I
.end method

.method public abstract getTrdRowSeatStow()I
.end method

.method public abstract getTrdRowSeatStowState()I
.end method

.method public abstract getVibrateEffectIDs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVibrateIntensity(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getWaistReliefMemoryMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract getWaistReliefMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract isDrvHeadrestNormal()Z
.end method

.method public abstract isDrvTiltMovingSafe()Z
.end method

.method public abstract isInSeatMenuShowTime(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drv"
        }
    .end annotation
.end method

.method public abstract isMassagerRunning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract isPsnHeadrestNormal()Z
.end method

.method public abstract isPsnSeatOccupied()Z
.end method

.method public abstract isPsnTiltMovingSafe()Z
.end method

.method public abstract isRhythmRunning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
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

.method public abstract readFollowedVehicleLostConfig()Ljava/lang/String;
.end method

.method public abstract saveDrvSeatPos(I[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "position"
        }
    .end annotation
.end method

.method public abstract saveDrvTargetSeatPos([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract savePsnCurrentHabitId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract savePsnSeatName(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation
.end method

.method public abstract savePsnSeatPos([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract savePsnSeatPos([II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation
.end method

.method public abstract savePsnSeatPos([III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "index",
            "selectId"
        }
    .end annotation
.end method

.method public abstract savePsnTargetSeatPos([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract saveRLSeatName(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveRLSeatPos([II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveRRSeatName(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posName",
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveRRSeatPos([II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "selectId"
        }
    .end annotation
.end method

.method public abstract setBackBeltSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDSeatCushionMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setDSeatCushionPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDSeatHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setDSeatLegMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setDSeatLumbHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setDSeatLumbVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setDSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setDSeatVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setDriverAllPositions(IIIII)V
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

.method public abstract setDriverAllPositions(IIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos",
            "cushionPos"
        }
    .end annotation
.end method

.method public abstract setDriverAllPositionsToMcu(IIIII)V
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
            "Req"
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

.method public abstract setDriverSeatLumbControlSwitchEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDrvSeatLayFlat()V
.end method

.method public abstract setDrvWelcomeModeActiveSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation
.end method

.method public abstract setEsbEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEsbEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "saveEnable"
        }
    .end annotation
.end method

.method public abstract setFollowedVehicleLostConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract setMassageMode(II)V
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

.method public abstract setMassagerEffect(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setMassagerIntensity(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setPSeatHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setPSeatLegMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setPSeatLumbHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setPSeatLumbVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setPSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setPSeatVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setPassengerSeatLumbControlSwitchEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPsnAllPositions(IIII)V
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

.method public abstract setPsnAllPositions(IIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "verticalPos",
            "tiltPos",
            "legPos"
        }
    .end annotation
.end method

.method public abstract setPsnAllPositionsToMcu(IIII)V
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

.method public abstract setPsnSeatWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPsnSeatWelcomeMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
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

.method public abstract setPsnWelcomeModeActiveSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation
.end method

.method public abstract setRLAllPositions(IIIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation
.end method

.method public abstract setRLAllPositions(IIIIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation
.end method

.method public abstract setRLSeaHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRLSeatHeadHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatHeadRestHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRLSeatHeadRestVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRLSeatHeadVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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

.method public abstract setRLSeatLegMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRLSeatLegPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatLegVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRLSeatLumbHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRLSeatLumbVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRLSeatStopMove()V
.end method

.method public abstract setRLSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRRAllPositions(IIIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation
.end method

.method public abstract setRRAllPositions(IIIIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryReq",
            "horizonPos",
            "anglePos",
            "tiltPos",
            "cushionPos",
            "legPos",
            "headVer",
            "headHor"
        }
    .end annotation
.end method

.method public abstract setRRSeaHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRRSeatHeadHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatHeadRestHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRRSeatHeadRestVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRRSeatHeadVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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

.method public abstract setRRSeatLegMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRRSeatLegPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRRSeatLegVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRRSeatLumbHorzMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRRSeatLumbVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setRRSeatStopMove()V
.end method

.method public abstract setRRSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
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

.method public abstract setRhythmEnable(Ljava/util/Set;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setRhythmIntensity(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setRhythmMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
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
            "eZStatus"
        }
    .end annotation
.end method

.method public abstract setSecRowLtSeatZeroGrav(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation
.end method

.method public abstract setSecRowRtSeatEZ(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eZStatus"
        }
    .end annotation
.end method

.method public abstract setSecRowRtSeatZeroGrav(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zeroGravStatus"
        }
    .end annotation
.end method

.method public abstract setTrdRowLeftSeatHeadVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setTrdRowLeftSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setTrdRowLtSeatFol(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowLtSeatFolStatus"
        }
    .end annotation
.end method

.method public abstract setTrdRowLtSeatHeadVerticalPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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

.method public abstract setTrdRowMidSeatHeadVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setTrdRowMidSeatHeadVerticalPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrdRowRightSeatHeadVerMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setTrdRowRightSeatTiltMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setTrdRowRtSeatFol(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trdRowRtSeatFolStatus"
        }
    .end annotation
.end method

.method public abstract setTrdRowRtSeatHeadVerticalPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
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
            "stowStatus"
        }
    .end annotation
.end method

.method public abstract setVibrateIntensity(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation
.end method

.method public abstract setWaistReliefMemoryMode(II)V
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

.method public abstract setWaistReliefMode(II)V
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

.method public abstract startMassager(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract startMassager(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "intensity",
            "effectId"
        }
    .end annotation
.end method

.method public abstract startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "effectId"
        }
    .end annotation
.end method

.method public abstract startMassager(Ljava/util/Set;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ids",
            "intensity",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startMassager(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "effectId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopDrvSeatMove()V
.end method

.method public abstract stopMassager(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopPsnSeatMove()V
.end method

.method public abstract stopSecRowLeftSeatMoving()V
.end method

.method public abstract stopSecRowRightSeatMoving()V
.end method

.method public abstract stopVibrate()V
.end method

.method public abstract stopWaistReliefMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method
