.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "BmsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController;


# static fields
.field private static final TAG:Ljava/lang/String; = "BmsController"


# instance fields
.field private mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

.field private mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    return-void
.end method


# virtual methods
.method public getAcMaxCurrent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddedElectricity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryCurrent()F
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getBatteryCurrent()F

    move-result v0

    return v0
.end method

.method public getBatteryTotalVolt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBmsFailureLvl()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getBmsFailureLvl()I

    move-result v0

    return v0
.end method

.method public getDCCurrent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDCVolt()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDcChargeStopReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDtcChargeCurrentOver()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDtcErrorStopCurrent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInsulationResistance()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getInsulationResistance()I

    move-result v0

    return v0
.end method

.method public getTempMax()F
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getTempMax()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTempMaxNum()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getTempMaxNum()I

    move-result v0

    return v0
.end method

.method public getTempMinNum()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getTempMinNum()I

    move-result v0

    return v0
.end method

.method public getVoltMax()F
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getVoltMax()F

    move-result v0

    return v0
.end method

.method public getVoltMaxNum()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getVoltMaxNum()I

    move-result v0

    return v0
.end method

.method public getVoltMin()F
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getVoltMin()F

    move-result v0

    return v0
.end method

.method public getVoltMinNum()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/bms/CarBmsManager;->getVoltMinNum()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_bms"

    .line 38
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/bms/CarBmsManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BmsController"

    const-string v0, "Car not connected"

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsFailureLvlEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMaxNumEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMinNumEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMaxNumEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMinNumEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402c09

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMaxEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602c12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMaxEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602c13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMinEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602c08

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryCurrEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/bms/CarBmsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsManager:Landroid/car/hardware/bms/CarBmsManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;->mCarBmsEventCallback:Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/bms/CarBmsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
