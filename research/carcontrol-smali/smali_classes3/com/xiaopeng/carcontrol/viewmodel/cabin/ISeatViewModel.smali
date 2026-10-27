.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;
.super Ljava/lang/Object;
.source "ISeatViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final MASSAGER_ALL_INDEX:I = 0x4

.field public static final MASSAGER_DRIVER_INDEX:I = 0x0

.field public static final MASSAGER_DRVREAR_INDEX:I = 0x2

.field public static final MASSAGER_PASSENGER_INDEX:I = 0x1

.field public static final MASSAGER_PSNREAR_INDEX:I = 0x3

.field public static final MSMT_STOW_STATE_NOT_STOWED:I = 0x1

.field public static final MSMT_STOW_STATE_STOWED:I = 0x2

.field public static final MSMT_STOW_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STATE_FULLY_FOLED:I = 0x2

.field public static final MSMT_TILT_STATE_HALF_FOLED:I = 0x1

.field public static final MSMT_TILT_STATE_UNKNOWN:I = 0x0

.field public static final MSM_EASYENTRY_ENTERED:I = 0x4

.field public static final MSM_EASYENTRY_PENDING:I = 0x3

.field public static final MSM_FUNCTION_INACTIVE:I = 0x0

.field public static final MSM_FUNCTION_STOP:I = 0x5

.field public static final MSM_STATE_DEFAULT:I = 0x3

.field public static final MSM_STATE_EASY_ENTRY:I = 0x2

.field public static final MSM_STATE_OTHER:I = 0x0

.field public static final MSM_STATE_ZERO_GRAVITY:I = 0x1

.field public static final MSM_ZEROGRAV_ENTERED:I = 0x2

.field public static final MSM_ZEROGRAV_PENDING:I = 0x1

.field public static final RHYTHM_ALL_INDEX:I = 0x2

.field public static final RHYTHM_DRIVER_INDEX:I = 0x0

.field public static final RHYTHM_PASSENGER_INDEX:I = 0x1

.field public static final SEAT_MSG_STRENGTH_1:I = 0x1

.field public static final SEAT_MSG_STRENGTH_2:I = 0x2

.field public static final SEAT_MSG_STRENGTH_3:I = 0x3

.field public static final SEAT_RTM_PATTERN_1:I = 0x0

.field public static final SEAT_RTM_PATTERN_2:I = 0x1

.field public static final SEAT_RTM_PATTERN_3:I = 0x2

.field public static final SEAT_RTM_STRENGTH_1:I = 0x1

.field public static final SEAT_RTM_STRENGTH_2:I = 0x2

.field public static final SEAT_RTM_STRENGTH_3:I = 0x3

.field public static final SEAT_RTM_STRENGTH_4:I = 0x4

.field public static final SEAT_RTM_STRENGTH_5:I = 0x5


# virtual methods
.method public abstract cancelAllControlDrvLumbar()V
.end method

.method public abstract cancelRlZeroRunnable()V
.end method

.method public abstract cancelRrZeroRunnable()V
.end method

.method public abstract checkChairMovable()Z
.end method

.method public abstract controlDriverSeatStart(III)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation
.end method

.method public abstract controlPsnSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlPsnSeatStart(III)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction",
            "controlLocus"
        }
    .end annotation
.end method

.method public abstract doVibrate(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effect",
            "intensity"
        }
    .end annotation
.end method

.method public abstract enterDrvLumbarScene()V
.end method

.method public abstract enterMeditationState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tiltPos"
        }
    .end annotation
.end method

.method public abstract exitDrvLumbarScene()V
.end method

.method public abstract exitMeditationState()V
.end method

.method public abstract getBackBeltSw()Z
.end method

.method public abstract getCarSpeed()F
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

.method public abstract getDriverSeatMoveState()Z
.end method

.method public abstract getDrvLumbControlSw()Z
.end method

.method public abstract getDrvSeatPosIdx()I
.end method

.method public abstract getEsbConfigMode()Ljava/lang/String;
.end method

.method public abstract getEsbMode()Z
.end method

.method public abstract getMassageEffect(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
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

.method public abstract getPassengerSeatMoveState()Z
.end method

.method public abstract getPsnLumbControlSw()Z
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

.method public abstract getPsnSrsEnable()Z
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

.method public abstract getRLSeatTiltPos()I
.end method

.method public abstract getRLSeatZeroAngle()I
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

.method public abstract getRRSeatTiltPos()I
.end method

.method public abstract getRRSeatZeroAngle()I
.end method

.method public abstract getRearLeaveRemindWarningSw()Z
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

.method public abstract getSecRowLTFuctionStatus()I
.end method

.method public abstract getSecRowLTMoveStatus()I
.end method

.method public abstract getSecRowLeftSeatBeltWarning()Z
.end method

.method public abstract getSecRowLtSeatZeroGrav()I
.end method

.method public abstract getSecRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getSecRowRTFuctionStatus()I
.end method

.method public abstract getSecRowRTMoveStatus()I
.end method

.method public abstract getSecRowRightSeatBeltWarning()Z
.end method

.method public abstract getSecRowRtSeatZeroGrav()I
.end method

.method public abstract getTlFuncTrigSource()I
.end method

.method public abstract getTrFuncTrigSource()I
.end method

.method public abstract getTrdRowLTHeadStatus()I
.end method

.method public abstract getTrdRowLeftSeatBeltWarning()Z
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

.method public abstract getTrdRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getTrdRowRTHeadStatus()I
.end method

.method public abstract getTrdRowRightSeatBeltWarning()Z
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

.method public abstract haveDefaultSeat(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract isCapsuleSeatLieFlat()Z
.end method

.method public abstract isDrvBeltUnbuckled()Z
.end method

.method public abstract isDrvHeadrestNormal()Z
.end method

.method public abstract isDrvSeatCorrectForRearFold()Z
.end method

.method public abstract isDrvSeatEqualMemory()Z
.end method

.method public abstract isDrvSeatEqualTargetPos()Z
.end method

.method public abstract isDrvSeatLieFlat()Z
.end method

.method public abstract isDrvSeatSbrSt()Z
.end method

.method public abstract isDrvTiltMovingSafe()Z
.end method

.method public abstract isLocalIgOn()Z
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

.method public abstract isPsnBeltUnbuckled()Z
.end method

.method public abstract isPsnHeadrestNormal()Z
.end method

.method public abstract isPsnSeatCorrectForRearFold()Z
.end method

.method public abstract isPsnSeatEqualMemory()Z
.end method

.method public abstract isPsnSeatEqualTargetPos()Z
.end method

.method public abstract isPsnSeatLieFlat()Z
.end method

.method public abstract isPsnSeatOccupied()Z
.end method

.method public abstract isPsnSeatSbrSt()Z
.end method

.method public abstract isPsnTiltMovingSafe()Z
.end method

.method public abstract isPsnWelcomeEnabled()Z
.end method

.method public abstract isRLSeatEqualMemory()Z
.end method

.method public abstract isRLSeatLieFlat()Z
.end method

.method public abstract isRRSeatEqualMemory()Z
.end method

.method public abstract isRRSeatLieFlat()Z
.end method

.method public abstract isRearSeatOccupied()Z
.end method

.method public abstract isRearSeatSbrSt()Z
.end method

.method public abstract isRearSeatWelcomeEnabled()Z
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

.method public abstract isSupportMSMP()Z
.end method

.method public abstract isSupportMsm()Z
.end method

.method public abstract isTlSeatOccupied()Z
.end method

.method public abstract isTmSeatOccupied()Z
.end method

.method public abstract isTrSeatOccupied()Z
.end method

.method public abstract isWaistReliefRunning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation
.end method

.method public abstract isWelcomeModeEnabled()Z
.end method

.method public abstract memoryDrvSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract memoryPsnSeatData()Z
.end method

.method public abstract memorySelectPsnSeatData(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "selectId"
        }
    .end annotation
.end method

.method public abstract memorySelectRLSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract memorySelectRRSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract moveDrvSeatToSafeForRearSleep()V
.end method

.method public abstract movePsnSeatToSafeForRearSleep()V
.end method

.method public abstract moveToExhibitionPos()V
.end method

.method public abstract onDrvLumbarControl(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract onFollowedVehicleLostConfigChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUpdate"
        }
    .end annotation
.end method

.method public abstract previewDrvSeatAntiFatigue()V
.end method

.method public abstract removeDropDownRun()V
.end method

.method public abstract restoreDrvSeatPos()Z
.end method

.method public abstract restoreDrvSeatPos(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract restoreDrvSeatPos(IZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "ignoreDrvDoorState",
            "ignoreDrvState"
        }
    .end annotation
.end method

.method public abstract restoreDrvSeatPos(IZZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "ignoreDrvDoorState",
            "ignoreDrvState",
            "ignoreSpeed"
        }
    .end annotation
.end method

.method public abstract restoreDrvSeatPos(ZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ignoreDrvDoorState",
            "ignoreDrvState"
        }
    .end annotation
.end method

.method public abstract restorePsnSeatPos()Z
.end method

.method public abstract restorePsnSeatPos(IIZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "selectId",
            "isSelected"
        }
    .end annotation
.end method

.method public abstract restorePsnSelectSeatPos(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
        }
    .end annotation
.end method

.method public abstract restoreRLSeatPos(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelected"
        }
    .end annotation
.end method

.method public abstract restoreRLSelectSeatPos(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
        }
    .end annotation
.end method

.method public abstract restoreRRSeatPos(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelected"
        }
    .end annotation
.end method

.method public abstract restoreRRSelectSeatPos(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectId",
            "isSelect"
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

.method public abstract saveSelectPsnSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveSelectRLSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveSelectRRSeatData(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract seatSaveOutMode()Z
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

.method public abstract setBleDisconnectRequest(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
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

.method public abstract setDriverAllPositionsToDomain()V
.end method

.method public abstract setDriverAllPositionsToMcu()V
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

.method public abstract setDrvLumbControlSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setEsbMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setLtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation
.end method

.method public abstract setLtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
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

.method public abstract setMassagerEffect(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
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

.method public abstract setMassagerIntensity(II)V
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

.method public abstract setPsnAllPositionsToDomain()V
.end method

.method public abstract setPsnLumbControlSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setPsnSeatAllPositionsToMcu()V
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

.method public abstract setPsnWelcomeMode(ZZ)V
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

.method public abstract setRLAllPositionsToDomain()V
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

.method public abstract setRLSeatAllPositions(IIIIIII)V
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

.method public abstract setRLSeatAllPositionsToMcu()V
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

.method public abstract setRRAllPositionsToDomain()V
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

.method public abstract setRRSeatAllPositions(IIIIIII)V
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

.method public abstract setRRSeatAllPositionsToMcu()V
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

.method public abstract setRearSeatBeltWarningPopUpSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setRearSeatWelcomeMode(ZZ)V
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

.method public abstract setRhythmIntensity(II)V
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

.method public abstract setRtSeatEasyEntryErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation
.end method

.method public abstract setRtSeatZeroGravErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
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

.method public abstract setSeatUiCtrlResume(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resume"
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

.method public abstract setSecRowLtSeatZeroGrav(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zeroGravStatus",
            "screenId"
        }
    .end annotation
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

.method public abstract setSecRowLtSeatZeroGrav(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenId"
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

.method public abstract setSecRowRtSeatZeroGrav(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zeroGravStatus",
            "screenId"
        }
    .end annotation
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

.method public abstract setSecRowRtSeatZeroGrav(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "screenId"
        }
    .end annotation
.end method

.method public abstract setTlSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
        }
    .end annotation
.end method

.method public abstract setTrSeatFolErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
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

.method public abstract setTrdRowSeatStowErrorCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "callback"
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

.method public abstract setWelcomeMode(ZZ)V
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

.method public abstract showPsnSrsCloseDialog()V
.end method

.method public abstract startMassager(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
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
            "index",
            "intensity",
            "effectId"
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
            "index",
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

.method public abstract startRhythm(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "mode"
        }
    .end annotation
.end method

.method public abstract startRhythm(IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "playEffect"
        }
    .end annotation
.end method

.method public abstract stopCapsuleSeatMove()V
.end method

.method public abstract stopDrvSeatMove()V
.end method

.method public abstract stopMassager(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract stopPsnSeatMove()V
.end method

.method public abstract stopRhythm(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract stopSeatControl()V
.end method

.method public abstract stopSecRowLeftSeatMoving()V
.end method

.method public abstract stopSecRowRightSeatMoving()V
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
