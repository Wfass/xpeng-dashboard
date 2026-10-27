.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "BcmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;


# static fields
.field private static final INTERVAL_SEND_WINDOWS_COMMAND:I = 0x12c

.field private static final STATE_SEAT:I = 0x1

.field private static final STATE_UNSEAT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BcmController"


# instance fields
.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    return-void
.end method


# virtual methods
.method public getATWSState()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getAtwsState()I

    move-result v0

    return v0
.end method

.method public getBCMBackDefrostMode()Z
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmBackDefrostMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBCMBackMirrorHeatMode()Z
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmBackMirrorHeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBCMIgStatus()I
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBCMSeatBlowLevel()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmSeatBlowLevel()I

    move-result v0

    return v0
.end method

.method public getBCMSeatHeatLevel()I
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method public getBcmFrontWiperOutputStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChairDirection()[I
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChairLocationValue()[I
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChairWelcomeMode()Z
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getChairWelcomeMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getChargeGunLockSt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChargePortStatus()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getChargePortStatus(I)I

    return v1
.end method

.method public getDoorLockState()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDoorsState()[I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v0

    return-object v0
.end method

.method public getDriveAutoLock()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriveAutoLock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriveSeatState()I
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v0

    return v0
.end method

.method public getDriverBeltWarning()Z
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverBeltWarning()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getElectricSeatBelt()Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getElectricSeatBelt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getEmergencyBrakeWarning()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getEmergencyBrakeWarning()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFarLampState()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getFarLampState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFrontBonnetStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeadLampGroup()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v0

    return v0
.end method

.method public getInternalLight()Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getInternalLight()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getLightMeHome()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getLightMeHome()I

    move-result v0

    return v0
.end method

.method public getLocationLampState()Z
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getLocationLampState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getMsmErrorInfo()[I
    .locals 1

    const/4 v0, 0x0

    .line 688
    new-array v0, v0, [I

    return-object v0
.end method

.method public getNearLampState()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getNearLampState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getOled()I
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParkingAutoUnlock()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getParkingAutoUnlock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPollingOpenCfg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRearFogLamp()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getRearFogLamp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRearSeatBeltWarning()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getRearSeatBeltWarning()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRearViewAutoDownCfg()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeatErrorState()Z
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getSeatErrorState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSeatFrHeatLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrunk()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getTrunk()I

    move-result v0

    return v0
.end method

.method public getUnlockResponse()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getUnlockResponse()I

    move-result v0

    return v0
.end method

.method public getWelcomeModeBackStatus()Z
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getWelcomeModeBackStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getWinLockStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWindowsState()[F
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowsState()[F

    move-result-object v0

    return-object v0
.end method

.method public getWiperIntermittentMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_bcm"

    .line 51
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BcmController"

    const-string v0, "Car not connected"

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$LightMeHomeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$RearFogLampEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x11400e01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$FarLampEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$InternalLightEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$EmergencyBrakeWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$AtwsStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DriveAutoLockEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ParkingAutoUnlockEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c09

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DoorLockStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c0a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$TrunkStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChairWelcomeModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ElectricSeatBeltEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$RearSeatBeltWarningEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$UnlockResponseEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21411c19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DoorsStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21611c20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WindowsStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$NearLampStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$LocationLampStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMBackDefrostModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMBackMirrorHeatModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMSeatHeatLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x15400513

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMSeatBlowLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c07

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DriveSeatStateEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WelcomeModeBackStatusEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c29    # 6.50894E-19f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$FrontBonnetStatusEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401c30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IBcmController$DriverBeltWarningEventMsgV2;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAirbagFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHighBeamFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeftTurnLampFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLowBeamFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRightTurnLampFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSystemError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWasherFluidWarning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAllWindowManualOrAuto(I)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setAllWindowManualOrAuto(I)V

    return-void
.end method

.method public setBCMBackDefrostMode()V
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBCMBackDefrostMode(Z)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmBackDefrostMode(I)V

    return-void
.end method

.method public setBCMBackMirrorHeatMode()V
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBCMBackMirrorHeatMode(Z)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmBackMirrorHeatMode(I)V

    return-void
.end method

.method public setBCMSeatBlowLevel()V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBCMSeatBlowLevel(I)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatBlowLevel(I)V

    return-void
.end method

.method public setBCMSeatHeatLevel()V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBCMSeatHeatLevel(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatHeatLevel(I)V

    return-void
.end method

.method public setBackWindows(Z)V
    .locals 0

    return-void
.end method

.method public setChairPositionEnd()V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChairPositionStart(III)V
    .locals 0

    .line 352
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "not support any more!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChairSlowlyAhead(I)V
    .locals 1

    .line 333
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChairSlowlyBack(I)V
    .locals 1

    .line 339
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChairSlowlyEnd(I)V
    .locals 1

    .line 345
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChairWelcomeMode(Z)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setChairWelcomeMode(I)V

    return-void
.end method

.method public setChargeGunLock()V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChargingPortUnlock()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setChargePortUnlock(II)V

    return-void
.end method

.method public setCopilotWindowAuto(Z)V
    .locals 1

    .line 266
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDoorLock()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setDoorLock(I)V

    return-void
.end method

.method public setDoorUnlocked()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setDoorLock(I)V

    return-void
.end method

.method public setDriveAutoLock(Z)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setDriveAutoLock(I)V

    return-void
.end method

.method public setDriverWindowAuto(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElectricSeatBelt(Z)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setElectricSeatBelt(I)V

    return-void
.end method

.method public setEmergencyBrakeWarning(Z)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setEmergencyBrakeWarning(I)V

    return-void
.end method

.method public setFactoryOledData([B)V
    .locals 1

    .line 515
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFactoryOledDisplayMode(I)V
    .locals 1

    .line 521
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFrontWindows(Z)V
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController$2;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 581
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setHazardLight(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHazardLight(I)V

    return-void
.end method

.method public setHeadLampGroup(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampGroup(I)V

    return-void
.end method

.method public setInternalLight(Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setInternalLight(I)V

    return-void
.end method

.method public setLeftBackWindow(Z)V
    .locals 0

    return-void
.end method

.method public setLightMeHome(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setLightMeHome(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setLightMeHome(I)V

    :goto_0
    return-void
.end method

.method public setOled(I)V
    .locals 1

    .line 253
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParkingAutoUnlock(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setParkingAutoUnlock(I)V

    return-void
.end method

.method public setPollingOpenCfg(Z)V
    .locals 0

    return-void
.end method

.method public setRearFogLamp(Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRearFogLamp(I)V

    return-void
.end method

.method public setRearSeatBeltWarning(Z)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRearSeatBeltWarning(I)V

    return-void
.end method

.method public setRearViewAutoDownCfg(I)V
    .locals 0

    return-void
.end method

.method public setRearViewMirror(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRearViewMirror(I)V

    return-void
.end method

.method public setRightBackWindow(Z)V
    .locals 0

    return-void
.end method

.method public setSeatFrHeatLevel(I)V
    .locals 0

    return-void
.end method

.method public setTrunk(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setTrunk(I)V

    return-void
.end method

.method public setUnlockResponse(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setUnlockResponse(I)V

    return-void
.end method

.method public setVentilate()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->setVentilate()V

    return-void
.end method

.method public setWheelDefinedButton(I)V
    .locals 1

    .line 407
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support any more!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWiperInterval(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setWiperInterval(I)V

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

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
