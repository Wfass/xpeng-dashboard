.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "HVACController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController;


# static fields
.field private static final TAG:Ljava/lang/String; = "HVACController"


# instance fields
.field private mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    return-void
.end method


# virtual methods
.method public getCompressorErrorInfo()[I
    .locals 1

    const/4 v0, 0x0

    .line 420
    new-array v0, v0, [I

    return-object v0
.end method

.method public getHVACAutoMode()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacAutoMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACAutoModeBlowLevel()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacAutoModeBlowLevel()I

    move-result v0

    return v0
.end method

.method public getHVACCirculationMode()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacCirculationMode()I

    move-result v0

    return v0
.end method

.method public getHVACEcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHVACFrontDefrostMode()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHVACFrontDefrostMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACInnerTemp()F
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacInnerTemp()F

    move-result v0

    return v0
.end method

.method public getHVACPowerMode()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacPowerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACQualityInnerPM25Value()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityInnerPm25Value()I

    move-result v0

    return v0
.end method

.method public getHVACQualityOutsideLevel()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityOutsideLevel()I

    move-result v0

    return v0
.end method

.method public getHVACQualityOutsideStatus()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityOutsideStatus()I

    move-result v0

    return v0
.end method

.method public getHVACQualityPurgeMode()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityPurgeMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACTempACMode()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempAcMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACTempDriverValue()F
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v0

    return v0
.end method

.method public getHVACTempPsnValue()F
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v0

    return v0
.end method

.method public getHVACTempSyncMode()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempSyncMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getHVACWindBlowMode()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacWindBlowMode()I

    move-result v0

    return v0
.end method

.method public getHVACWindSpeedLevel()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacWindSpeedLevel()I

    move-result v0

    return v0
.end method

.method public getOutsideAirTemp()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPtcError()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTempPTCStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "hvac"

    .line 35
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HVACController"

    const-string v0, "Car not connected"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACPowerModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempACModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x15600503

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempDriverValueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601a02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempPsnValueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACAutoModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a03

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACAutoModeBlowLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x15400508

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACCirculationModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACFrontDefrostModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x15400501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACWindBlowModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x15400500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACWindSpeedLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityPurgeModeEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityOutsideStatusEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401a05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityOutsideLevelEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21601a2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACInnerTempEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isError()Z
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

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/hvac/CarHvacManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HVACController"

    const-string v0, "Car not connected"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHVACAutoMode()V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACAutoMode(Z)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacAutoMode(I)V

    return-void
.end method

.method public setHVACAutoModeBlowLevel(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacAutoModeBlowLevel(I)V

    return-void
.end method

.method public setHVACCirculationMode()V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACCirculationMode(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacCirculationMode(I)V

    return-void
.end method

.method public setHVACEcon(Z)V
    .locals 0

    return-void
.end method

.method public setHVACFrontDefrostMode()V
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACFrontDefrostMode(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacFrontDefrostMode(I)V

    return-void
.end method

.method public setHVACPowerMode()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACPowerMode(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacPowerMode(I)V

    return-void
.end method

.method public setHVACQualityPurgeMode()V
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACQualityPurgeMode(Z)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacQualityPurgeMode(I)V

    return-void
.end method

.method public setHVACTempACMode()V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempACMode(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempAcMode(I)V

    return-void
.end method

.method public setHVACTempDriverDown()V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempDriverDown(F)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverDown(F)V

    return-void
.end method

.method public setHVACTempDriverUp()V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempDriverUp(F)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverUp(F)V

    return-void
.end method

.method public setHVACTempDriverValue(F)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverValue(F)V

    return-void
.end method

.method public setHVACTempPsnDown()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempPsnDown(F)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempPsnDown(F)V

    return-void
.end method

.method public setHVACTempPsnUp()V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempPsnUp(F)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempPsnUp(F)V

    return-void
.end method

.method public setHVACTempPsnValue(F)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempPsnValue(F)V

    return-void
.end method

.method public setHVACTempSyncMode()V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACTempSyncMode(Z)V
    .locals 1

    .line 167
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHVACWindBlowMode(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindBlowMode(I)V

    return-void
.end method

.method public setHVACWindSpeedDown()V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACWindSpeedDown(I)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedDown(I)V

    return-void
.end method

.method public setHVACWindSpeedLevel(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedLevel(I)V

    return-void
.end method

.method public setHVACWindSpeedUp()V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHVACWindSpeedUp(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedUp(I)V

    return-void
.end method

.method public setTempPTCStatus(I)V
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

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/hvac/CarHvacManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
