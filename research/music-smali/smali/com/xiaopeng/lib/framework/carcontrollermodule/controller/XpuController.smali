.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "XpuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IXpuController;


# static fields
.field private static final TAG:Ljava/lang/String; = "XpuController"


# instance fields
.field private mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    return-void
.end method


# virtual methods
.method public getNedcSwitchStatus()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getNedcSwitchStatus()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_xpu"

    .line 33
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/CarXpuManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "XpuController"

    const-string v0, "Car not connected"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403807

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IXpuController$NedcSwitchEventMsg;

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

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/xpu/CarXpuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "XpuController"

    const-string v0, "Car not connected"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNedcSwitch(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNedcSwitch(I)V

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

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/xpu/CarXpuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
