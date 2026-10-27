.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController;
.super Ljava/lang/Object;
.source "IAvmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IAvmController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofPosEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofMoveStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraSteerAngleEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraTailRadarEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraFrontRadarEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraRoofEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraPanoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraDisplayModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraHeightEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController$CameraAngleEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getCameraAngle()I
.end method

.method public abstract getCameraDisplayMode()I
.end method

.method public abstract getCameraFailInfo()[I
.end method

.method public abstract getCameraHeight()Z
.end method

.method public abstract getFrontRadarData()[F
.end method

.method public abstract getHasPanoCamera()Z
.end method

.method public abstract getHasRoofCamera()Z
.end method

.method public abstract getRoofCameraPosition()I
.end method

.method public abstract getRoofCameraState()I
.end method

.method public abstract getRoofMoveCameraState()I
.end method

.method public abstract getSteerWheelRotationAngle()F
.end method

.method public abstract getTailRadarData()[F
.end method

.method public abstract setCameraAngle(I)V
.end method

.method public abstract setCameraDisplayMode(I)V
.end method

.method public abstract setCameraHeight(Z)V
.end method
