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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCameraDisplayMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCameraFailInfo()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCameraHeight()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getFrontRadarData()[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHasPanoCamera()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHasRoofCamera()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRoofCameraPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRoofCameraState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRoofMoveCameraState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSteerWheelRotationAngle()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTailRadarData()[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCameraAngle(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCameraDisplayMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCameraHeight(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
