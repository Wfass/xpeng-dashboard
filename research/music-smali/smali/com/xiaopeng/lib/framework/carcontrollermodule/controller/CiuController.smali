.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "CiuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController;


# static fields
.field private static final TAG:Ljava/lang/String; = "CiuController"


# instance fields
.field private mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

.field private mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    return-void
.end method

.method private sendCommand(II)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCiuAutoLockSt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuCarWash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuConfigurationActive()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuDelayOff()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuDeliveryUploadMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuRainSw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCiuValid()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDVRFormatStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDVRStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeleteResult()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDistractionLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDistractionStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDmsState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDvrLockFB()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDvrMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFaceAction()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFaceIdPrimalStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFaceIdStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFaceIdSw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFaceShield()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFatIgStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFatigueLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFatigueStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLightIntensity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSdStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSdcardStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUid()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_ciu"

    .line 34
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CiuController"

    const-string v0, "Car not connected"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 0

    return-void
.end method

.method public isDvrEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public photoProcess()V
    .locals 0

    return-void
.end method

.method public registerCanEventMsg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ciu/CarCiuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Car not connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCiuCarWash(Z)V
    .locals 0

    return-void
.end method

.method public setCiuConfigurationActive(I)V
    .locals 0

    return-void
.end method

.method public setCiuDelayOff(I)V
    .locals 0

    return-void
.end method

.method public setCiuDeliveryUploadMode(I)V
    .locals 0

    return-void
.end method

.method public setCiuRainSw(I)V
    .locals 0

    return-void
.end method

.method public setDeleteFaceId(I)V
    .locals 0

    return-void
.end method

.method public setDeleteMulti(II)V
    .locals 0

    return-void
.end method

.method public setDistractionStatus(I)V
    .locals 0

    return-void
.end method

.method public setDmsMode(I)V
    .locals 0

    return-void
.end method

.method public setDmsStatus(I)V
    .locals 0

    return-void
.end method

.method public setDmsStatus(IIII)V
    .locals 0

    return-void
.end method

.method public setDvrEnable(Z)V
    .locals 0

    return-void
.end method

.method public setDvrLockMode(I)V
    .locals 0

    return-void
.end method

.method public setDvrMode(I)V
    .locals 0

    return-void
.end method

.method public setFaceActionRequest(I)V
    .locals 0

    return-void
.end method

.method public setFaceIdMode(I)V
    .locals 0

    return-void
.end method

.method public setFaceIdSw(I)V
    .locals 0

    return-void
.end method

.method public setFatIgStatus(I)V
    .locals 0

    return-void
.end method

.method public setFatigueStatus(I)V
    .locals 0

    return-void
.end method

.method public setFirmFaceCancel(I)V
    .locals 0

    return-void
.end method

.method public setFormatMode(I)V
    .locals 0

    return-void
.end method

.method public setNotifyCiuAutoLightStatus(Z)V
    .locals 0

    return-void
.end method

.method public setRegHint(I)V
    .locals 0

    return-void
.end method

.method public setRegisterRequestMulti(III)V
    .locals 0

    return-void
.end method

.method public setStartRegFlag(I)V
    .locals 0

    return-void
.end method

.method public setStartRegFlow(I)V
    .locals 0

    return-void
.end method

.method public setUid(I)V
    .locals 0

    return-void
.end method

.method public setVideoOutputMode(I)V
    .locals 0

    return-void
.end method

.method public setVideoTimeLenMode(I)V
    .locals 0

    return-void
.end method

.method public unregisterCanEventMsg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEventMsg;",
            ">;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ciu/CarCiuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
