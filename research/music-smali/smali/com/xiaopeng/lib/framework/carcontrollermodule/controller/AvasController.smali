.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "AvasController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvasController;


# static fields
.field private static final TAG:Ljava/lang/String; = "BcmController"


# instance fields
.field private mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

.field private mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    return-void
.end method


# virtual methods
.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_avas"

    .line 33
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/avas/CarAvasManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BcmController"

    const-string v0, "Car not connected"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 0

    return-void
.end method

.method public isFault()Z
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
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/avas/CarAvasManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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

.method public setAnalogSoundEffect(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasLowSpeedSound(I)V

    return-void
.end method

.method public setAnalogSoundEnable(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasLowSpeedSoundSwitch(I)V

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

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/avas/CarAvasManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
