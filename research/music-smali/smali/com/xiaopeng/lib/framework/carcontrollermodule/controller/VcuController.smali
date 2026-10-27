.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "VcuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;


# static fields
.field private static final TAG:Ljava/lang/String; = "VcuController"


# instance fields
.field private mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    return-void
.end method


# virtual methods
.method public getACChargingCurrent()F
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getACChargingVolt()F
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getACInputStatus()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getAcInputStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAverageVehConsume()F
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getAverageVehConsume()F

    move-result v0

    return v0
.end method

.method public getAverageVehConsume100km()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryCoolStatus()Z
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "getBatteryCoolStatus not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBatteryMinTemperature()F
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getBatteryMinTemperature()F

    move-result v0

    return v0
.end method

.method public getBatteryPtcErrorInfo()[I
    .locals 1

    const/4 v0, 0x0

    .line 441
    new-array v0, v0, [I

    return-object v0
.end method

.method public getBatteryWarmingStatus()Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getBatteryWarmingStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBreakTravel()I
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCarSpeed()F
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method public getCcsWorkError()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChargeSpeedLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChargeStatus()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargeStatus()I

    move-result v0

    return v0
.end method

.method public getChargingCompleteTime()F
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargeCompleteTime()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getChargingError()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargingError()I

    move-result v0

    return v0
.end method

.method public getChargingGunStatus()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargingGunStatus()I

    move-result v0

    return v0
.end method

.method public getChargingMaxSoc()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColdWarningTips()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getColdWarningTips()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDCChargingCurrent()F
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDCChargingVolt()F
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDriveMode()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDrivingMode()I

    move-result v0

    return v0
.end method

.method public getDriveTravel()I
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDriverOverride()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEbsBatterySoc()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getEbsBatterySoc()I

    move-result v0

    return v0
.end method

.method public getElectricityPercent()F
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getElectricityPercent()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    return v0
.end method

.method public getEnergyRecycle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGearLever()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    return v0
.end method

.method public getGearWarningInfo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHvacConsume()F
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getHvacConsume()F

    move-result v0

    return v0
.end method

.method public getMaxMileage(I)I
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {p1}, Landroid/car/hardware/vcu/CarVcuManager;->getAvalibleDrivingDistance()I

    move-result p1

    return p1
.end method

.method public getMileageNumber()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getAvalibleDrivingDistance()I

    move-result v0

    return v0
.end method

.method public getPureDriveModeFeedback()I
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getPureDriveModeFeedback()I

    move-result v0

    return v0
.end method

.method public getRawCarSpeed()F
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v0

    return v0
.end method

.method public getSOH()F
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getSoh()F

    move-result v0

    return v0
.end method

.method public getStallState()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    return v0
.end method

.method public getSystemReady()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getEvSysReady()I

    move-result v0

    return v0
.end method

.method public getTcmFailReason()[I
    .locals 1

    const/4 v0, 0x0

    .line 436
    new-array v0, v0, [I

    return-object v0
.end method

.method public getVcuErhDebubInfo()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getVcuErhDebugInfo()I

    move-result v0

    return v0
.end method

.method public getVcuSupDebugInfo()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getVcuSupDebugInfo()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_vcu"

    .line 36
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    const-string v0, "xp_esp"

    .line 37
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/esp/CarEspManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VcuController"

    const-string v0, "Car not connected"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140122a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DrivingModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$EnergyRecycleLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$CarGearLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeErrorEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401228

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeGunEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401229

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeStatusEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401211

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AvailableDrivingDistanceEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ElectriPercentEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401209    # 6.5076E-19f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ColdWarningTipsEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$HvacConsumeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140120a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryWarmmingEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140122c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeCompleteTimeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140121f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AcInputStatusEvnetMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2160121b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AverageVehConusmeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeLimitEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$SohEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryMinTemperatureEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140122b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$SupDebugInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140121e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ErhDebugInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$EbsBatterySocEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$RawCarSpeedEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401227

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$PureDriveModeFeedbackEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAgsError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBatteryOverheadtingWarning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBatteryOverheating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBmsError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBmsScoLow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDcdcError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEbsError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isElectricMotorSystemOverheating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isElectricVacuumPumpError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHvCutoff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHvRelayAdhesion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLowBatteryVoltage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPowerSystemErrorLampOn()Z
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

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/vcu/CarVcuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
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

.method public setBestCharging()V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChargingLimit(I)V
    .locals 1

    .line 174
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support anymore"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnergyRecycle(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setEnergyRecycleLevel(I)V

    return-void
.end method

.method public setFullyCharging()V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startCharge(I)V
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support anymore"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopACCharge(I)V
    .locals 1

    .line 150
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support anymore"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopDCCharging()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/vcu/CarVcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
