.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "CanController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICanController;


# static fields
.field private static final TAG:Ljava/lang/String; = "CanController"


# instance fields
.field private mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

.field private mCarCanManager:Landroid/car/hardware/can/CarCanManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    return-void
.end method


# virtual methods
.method public getCanRawData()[B
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_can"

    .line 35
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/can/CarCanManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CanController"

    const-string v0, "Car not connected"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 0

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

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/can/CarCanManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendCanDataSync()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "not support any more!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdasMeta([B)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasMeta([B)V

    return-void
.end method

.method public setAdasPosition([B)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasPosition([B)V

    return-void
.end method

.method public setAdasProfLong([B)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasProfLong([B)V

    return-void
.end method

.method public setAdasProfShort([B)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasProfShort([B)V

    return-void
.end method

.method public setAdasSegment([B)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasSegment([B)V

    return-void
.end method

.method public setAdasStub([B)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/can/CarCanManager;->setAdasStub([B)V

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

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanManager:Landroid/car/hardware/can/CarCanManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;->mCarCanEventCallback:Landroid/car/hardware/can/CarCanManager$CarCanEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/can/CarCanManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
