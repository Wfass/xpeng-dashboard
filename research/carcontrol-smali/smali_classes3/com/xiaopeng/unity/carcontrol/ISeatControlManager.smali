.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ISeatControlManager;
.super Ljava/lang/Object;
.source "ISeatControlManager.java"


# virtual methods
.method public abstract cancelAllControlDrvLumbar()V
.end method

.method public abstract cancelShowDrvRestoreIcon()V
.end method

.method public abstract controlDriverSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlDriverSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
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

.method public abstract controlPsnSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlRearLeftSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlRearLeftSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlRearRightSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlRearRightSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlTrdRowLeftSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlTrdRowLeftSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlTrdRowMidSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlTrdRowMidSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlTrdRowRightSeatEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract controlTrdRowRightSeatStart(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation
.end method

.method public abstract dismissSeatNotify()V
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

.method public abstract getDrvLumbControlSw()Z
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getPSeatHorzPos()I
.end method

.method public abstract getPSeatLegPos()I
.end method

.method public abstract getPSeatTiltPos()I
.end method

.method public abstract getPSeatVerPos()I
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

.method public abstract getSecRowLtSeatZeroGrav()I
.end method

.method public abstract getSecRowRtSeatZeroGrav()I
.end method

.method public abstract getTrdRowLtSeatFol()I
.end method

.method public abstract getTrdRowLtSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowLtSeatTiltPos()I
.end method

.method public abstract getTrdRowMidSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowRtSeatFol()I
.end method

.method public abstract getTrdRowRtSeatHeadVerticalPos()I
.end method

.method public abstract getTrdRowRtSeatTiltPos()I
.end method

.method public abstract getTrdRowSeatStow()I
.end method

.method public abstract isDrvSeatEqualMemory()Z
.end method

.method public abstract isLogin()Z
.end method

.method public abstract isPsnSeatEqualMemory()Z
.end method

.method public abstract isRLSeatEqualMemory()Z
.end method

.method public abstract isRRSeatEqualMemory()Z
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

.method public abstract previewDrvSeatAntiFatigue()V
.end method

.method public abstract requestCreateNewSyncGroup()V
.end method

.method public abstract restoreDrvSeatPos()Z
.end method

.method public abstract restorePsnSeatPos()Z
.end method

.method public abstract restoreSelectPsnSeatPos(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract restoreSelectRLSeatPos(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract restoreSelectRRSeatPos(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectId"
        }
    .end annotation
.end method

.method public abstract saveDrvSeatData()Z
.end method

.method public abstract savePsnSeatData()Z
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

.method public abstract selectPsnHabit(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract selectRLHabit(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract selectRRHabit(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
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

.method public abstract setDrvSeatHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setDrvSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
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

.method public abstract setPsnSeatHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatLegHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatTiltPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setPsnSeatVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setRLSeatAllPositions(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posStr"
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

.method public abstract setRRSeatAllPositions(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posStr"
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

.method public abstract setRlLayFlat()V
.end method

.method public abstract setRlRestore()V
.end method

.method public abstract setRrLayFlat()V
.end method

.method public abstract setRrRestore()V
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

.method public abstract setTrdRowLtFoldInPause(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation
.end method

.method public abstract setTrdRowLtSeatFol(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
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

.method public abstract setTrdRowRtFoldInPause(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation
.end method

.method public abstract setTrdRowRtSeatFol(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInt"
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

.method public abstract setTrdRowSeatStowInPause(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPause"
        }
    .end annotation
.end method

.method public abstract showDrvLumberControlPanel()V
.end method

.method public abstract startVipSeatMode()V
.end method

.method public abstract stopSeatControl()V
.end method

.method public abstract stopSecRowLeftSeatMoving()V
.end method

.method public abstract stopSecRowRightSeatMoving()V
.end method
