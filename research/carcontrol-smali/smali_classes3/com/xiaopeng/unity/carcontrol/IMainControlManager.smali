.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IMainControlManager;
.super Ljava/lang/Object;
.source "IMainControlManager.java"


# virtual methods
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

.method public abstract controlCarSmartRestore()V
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

.method public abstract executeSdcCmd(ZI)V
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

.method public abstract getAsFault()Z
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

.method public abstract getEspFault()Z
.end method

.method public abstract getLeftSdcSysRunningState()I
.end method

.method public abstract getLeftSlideDoorMode()I
.end method

.method public abstract getLeftSlideDoorState()I
.end method

.method public abstract getRightSdcSysRunningState()I
.end method

.method public abstract getRightSlideDoorMode()I
.end method

.method public abstract getRightSlideDoorState()I
.end method

.method public abstract getTrunkState()I
.end method

.method public abstract isTestDriveModeOn()Z
.end method

.method public abstract isTtmOpen()Z
.end method

.method public abstract isXPedalMode()Z
.end method

.method public abstract openRearTrunk()V
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

.method public abstract setDriveMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setTrunk(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation
.end method

.method public abstract setXPedalMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
