.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "IpuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController;


# static fields
.field private static final TAG:Ljava/lang/String; = "IpuController"


# instance fields
.field private mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

.field private mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    return-void
.end method


# virtual methods
.method public getCtrlCurr()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getCtrlCurr()I

    move-result v0

    return v0
.end method

.method public getCtrlTemp()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getCtrlTemp()I

    move-result v0

    return v0
.end method

.method public getCtrlVolt()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getCtrlVolt()I

    move-result v0

    return v0
.end method

.method public getIpuFailStInfo()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getIpuFailStInfo()I

    move-result v0

    return v0
.end method

.method public getMotorStatus()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getMotorStatus()I

    move-result v0

    return v0
.end method

.method public getMotorTemp()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getMotorTemp()I

    move-result v0

    return v0
.end method

.method public getRollSpeed()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getRollSpeed()I

    move-result v0

    return v0
.end method

.method public getTorque()F
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ipu/CarIpuManager;->getTorque()F

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_ipu"

    .line 35
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/ipu/CarIpuManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "IpuController"

    const-string v0, "Car not connected"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x2140123f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$IpuFailStInfoEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a07

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlVoltEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlCurrEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlTempEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a04

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$MotorTempEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602a05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$TorqueEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a03

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$RollSpeedEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402a02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$MotorStatusEventMsg;

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

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ipu/CarIpuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
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

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuManager:Landroid/car/hardware/ipu/CarIpuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;->mCarIpuEventCallback:Landroid/car/hardware/ipu/CarIpuManager$CarIpuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ipu/CarIpuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
