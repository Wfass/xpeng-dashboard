.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "EpsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController;


# static fields
.field private static final TAG:Ljava/lang/String; = "EpsController"


# instance fields
.field private mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

.field private mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    return-void
.end method


# virtual methods
.method public getSteeringAngle()F
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-virtual {v0}, Landroid/car/hardware/eps/CarEpsManager;->getSteeringAngle()F

    move-result v0

    return v0
.end method

.method public getSteeringAngleSpd()F
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-virtual {v0}, Landroid/car/hardware/eps/CarEpsManager;->getSteeringAngleSpd()F

    move-result v0

    return v0
.end method

.method public getSteeringWheelEPS()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-virtual {v0}, Landroid/car/hardware/eps/CarEpsManager;->getSteeringWheelEPS()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_eps"

    .line 36
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/eps/CarEpsManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EpsController"

    const-string v0, "Car not connected"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringWheelEPSEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringAngleEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringAngleSpdEventMsg;

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

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/eps/CarEpsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSteeringWheelEPS(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/eps/CarEpsManager;->setSteeringWheelEPS(I)V

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
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/eps/CarEpsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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
