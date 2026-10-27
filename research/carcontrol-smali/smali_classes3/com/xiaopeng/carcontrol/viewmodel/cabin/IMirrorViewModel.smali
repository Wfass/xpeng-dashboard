.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;
.super Ljava/lang/Object;
.source "IMirrorViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final IMS_MODE_CAMERA:I = 0x1

.field public static final IMS_MODE_MIRROR:I = 0x0

.field public static final IMS_SYSTEM_FAILURE:I = 0x2


# virtual methods
.method public abstract cancelAllControlMirror()V
.end method

.method public abstract checkCurPos()Z
.end method

.method public abstract checkRecoverMirror(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract controlMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation
.end method

.method public abstract controlMirrorMoveOld(ZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "direction",
            "isLongControl"
        }
    .end annotation
.end method

.method public abstract enterScene()V
.end method

.method public abstract exitScene()V
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

.method public abstract getImsVisionAngleLevel()I
.end method

.method public abstract getImsVisionVerticalLevel()I
.end method

.method public abstract getLMReverseSw()Z
.end method

.method public abstract getLeftRearMirrorPosStatus()I
.end method

.method public abstract getLeftRightRearMirrorFoldOutputStatus()[I
.end method

.method public abstract getMirrorFoldOutputState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;
.end method

.method public abstract getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;
.end method

.method public abstract getRMReverseSw()Z
.end method

.method public abstract getReverseMirrorMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;
.end method

.method public abstract getRightRearMirrorPosStatus()I
.end method

.method public abstract isMirrorAutoDown()Z
.end method

.method public abstract isMirrorAutoFoldEnable()Z
.end method

.method public abstract moveToExhibitionPos()V
.end method

.method public abstract onKey(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation
.end method

.method public abstract onKeyIms(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation
.end method

.method public abstract recoverMirror()V
.end method

.method public abstract resetRecoverMirrorFlag()V
.end method

.method public abstract reverseMirror()V
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
            "enable"
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
            "viewAngle"
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

.method public abstract setImsAutoModeReq(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
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

.method public abstract setImsResetReq()V
.end method

.method public abstract setImsVisionCtrl(II)V
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

.method public abstract setMirrorAutoDown(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setReverseMirrorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract shouldReverseMirror()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showMirrorCtrlPanel(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation
.end method

.method public abstract syncAccountMirrorPos(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mirrorPosition",
            "needMoveMirror"
        }
    .end annotation
.end method
