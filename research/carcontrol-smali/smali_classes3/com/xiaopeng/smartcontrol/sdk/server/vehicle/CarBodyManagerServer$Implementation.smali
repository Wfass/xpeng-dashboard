.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;
.super Ljava/lang/Object;
.source "CarBodyManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


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
