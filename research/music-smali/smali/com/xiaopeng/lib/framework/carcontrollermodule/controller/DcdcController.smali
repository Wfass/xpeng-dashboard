.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "DcdcController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController;


# static fields
.field private static final TAG:Ljava/lang/String; = "DcdcController"


# instance fields
.field private mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

.field private mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    return-void
.end method


# virtual methods
.method public getDcdcFailStInfo()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;

    invoke-virtual {v0}, Landroid/car/hardware/dcdc/CarDcdcManager;->getDcdcFailStInfo()I

    move-result v0

    return v0
.end method

.method public getDcdcStatus()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;

    invoke-virtual {v0}, Landroid/car/hardware/dcdc/CarDcdcManager;->getDcdcStatus()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_dcdc"

    .line 35
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/dcdc/CarDcdcManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DcdcController"

    const-string v0, "Car not connected"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcFailStInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcStatusEventMsg;

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

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/dcdc/CarDcdcManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcManager:Landroid/car/hardware/dcdc/CarDcdcManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;->mCarDcdcEventCallback:Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/dcdc/CarDcdcManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
