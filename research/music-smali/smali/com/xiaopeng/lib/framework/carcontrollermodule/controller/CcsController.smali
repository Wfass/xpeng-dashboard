.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "CcsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICcsController;


# static fields
.field private static final TAG:Ljava/lang/String; = "CcsController"


# instance fields
.field private mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

.field private mCarCcsManager:Landroid/car/hardware/ccs/CarCcsManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    return-void
.end method


# virtual methods
.method public getCcsFaultInfo()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsManager:Landroid/car/hardware/ccs/CarCcsManager;

    invoke-virtual {v0}, Landroid/car/hardware/ccs/CarCcsManager;->getCcsFaultInfo()I

    move-result v0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_ccs"

    .line 35
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/ccs/CarCcsManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsManager:Landroid/car/hardware/ccs/CarCcsManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CcsController"

    const-string v0, "Car not connected"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21403003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICcsController$CcsFaultInfoEventMsg;

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

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsManager:Landroid/car/hardware/ccs/CarCcsManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ccs/CarCcsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsManager:Landroid/car/hardware/ccs/CarCcsManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;->mCarCcsEventCallback:Landroid/car/hardware/ccs/CarCcsManager$CarCcsEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/ccs/CarCcsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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
