.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "TpmsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TpmsController"


# instance fields
.field private mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

.field private mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    return-void
.end method


# virtual methods
.method public calibrateTirePressure()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->calibrateTirePressure()V

    return-void
.end method

.method public getAllTirePerssureSensorStatus()[I
    .locals 1

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [I

    return-object v0
.end method

.method public getAllTirePressureWarnings()[I
    .locals 1

    const/4 v0, 0x0

    .line 119
    new-array v0, v0, [I

    return-object v0
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1

    const/4 v0, 0x0

    .line 125
    new-array v0, v0, [I

    return-object v0
.end method

.method public getTirePressure()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTirePressureAll()[F
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_tpms"

    .line 38
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/tpms/CarTpmsManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TpmsController"

    const-string v0, "Car not connected"

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21401e01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController$TirePressureEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAbnormalTirePressure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTirePressureSystemFault()Z
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

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/tpms/CarTpmsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
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

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/tpms/CarTpmsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
