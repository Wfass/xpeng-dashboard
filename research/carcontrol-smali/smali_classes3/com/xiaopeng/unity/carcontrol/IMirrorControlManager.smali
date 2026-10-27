.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IMirrorControlManager;
.super Ljava/lang/Object;
.source "IMirrorControlManager.java"


# virtual methods
.method public abstract enterDrvLumbarScene()V
.end method

.method public abstract exitDrvLumbarScene()V
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

.method public abstract getCmsAutoBrightSw()Z
.end method

.method public abstract getCmsBright()I
.end method

.method public abstract getCmsHighSpdAssistSw()Z
.end method

.method public abstract getCmsLowSpdAssistSw()Z
.end method

.method public abstract getCmsObjectRecognizeSw()Z
.end method

.method public abstract getCmsReverseAssistSw()Z
.end method

.method public abstract getCmsTurnAssistSw()Z
.end method

.method public abstract getCmsViewAngle()I
.end method

.method public abstract getImsAutoVisionSw()Z
.end method

.method public abstract getImsBrightLevel()I
.end method

.method public abstract getImsHighSpeedAutoVisionSw()Z
.end method

.method public abstract getImsMode()I
.end method

.method public abstract getImsSystemSt()I
.end method

.method public abstract getLMReverseSw()Z
.end method

.method public abstract getLeftRearMirrorPosStatus()I
.end method

.method public abstract getMirrorFoldOutputState()I
.end method

.method public abstract getMirrorFoldState()I
.end method

.method public abstract getRMReverseSw()Z
.end method

.method public abstract getRightRearMirrorPosStatus()I
.end method

.method public abstract isAccActive()Z
.end method

.method public abstract isCruiseActive()Z
.end method

.method public abstract isMirrorAutoFoldEnable()Z
.end method

.method public abstract onImsControl(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keycode",
            "action"
        }
    .end annotation
.end method

.method public abstract onMirrorControl(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keycode",
            "action"
        }
    .end annotation
.end method

.method public abstract setCmsAutoBrightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsBright(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract setCmsHighSpdAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsLowSpdAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsObjectRecognizeSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setCmsReverseAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsTurnAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsViewAngle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation
.end method

.method public abstract setCmsViewRecovery(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setImsAutoVisionSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation
.end method

.method public abstract setImsBrightLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setImsHighSpeedAutoVisionSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation
.end method

.method public abstract setImsMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLMReverseSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setMirrorAutoFoldEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRMReverseSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method
