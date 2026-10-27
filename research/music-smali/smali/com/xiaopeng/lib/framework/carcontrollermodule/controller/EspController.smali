.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "EspController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController;


# static fields
.field private static final TAG:Ljava/lang/String; = "EspController"


# instance fields
.field private mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mCarEspManager:Landroid/car/hardware/esp/CarEspManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    return-void
.end method


# virtual methods
.method public getAVH()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getAvh()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAvhFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getESP()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getEsp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getEspFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHDC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHdcFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarApiClient:Landroid/car/Car;

    :try_start_0
    const-string v0, "xp_esp"

    .line 36
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/esp/CarEspManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EspController"

    const-string v0, "Car not connected"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$AVHEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$ESPEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21402408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$HDCEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x21602401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$CarSpeedEventMsg;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAbsFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvhFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEpbWarningLampOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEpsWarningLampOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEspFault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHdcFault()Z
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

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/esp/CarEspManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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

.method public setAVH(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setAvh(I)V

    return-void
.end method

.method public setESP(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setEsp(I)V

    return-void
.end method

.method public setHDC(Z)V
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

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/esp/CarEspManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
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
