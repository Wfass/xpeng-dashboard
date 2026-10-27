.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;
.super Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;
.source "RadioController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioController"


# instance fields
.field private mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

.field private mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AbstractController;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    return-void
.end method


# virtual methods
.method public enableAudioDpsInfoCallback()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setAudioParameters()V

    return-void
.end method

.method public getAudioDspInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioMode()[I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->getAudioMode()[I

    move-result-object v0

    return-object v0
.end method

.method public getRadioBand()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRadioFrequency()[I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->getRadioFrequency()[I

    move-result-object v0

    return-object v0
.end method

.method public getRadioInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioVolumeAutoFocus()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->getRadioVolumeAutoFocus()I

    move-result v0

    return v0
.end method

.method public getRadioVolumePercent()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTunerPowerStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXSoundType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initCarManager(Landroid/car/Car;)V
    .locals 1

    :try_start_0
    const-string v0, "xp_radio"

    .line 36
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/radio/CarRadioManager;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RadioController"

    const-string v0, "Car not connected"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initPropertyTypeMap()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mPropertyTypeMap:Ljava/util/HashMap;

    const v1, 0x70001408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController$RadioInfoEventMsg;

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
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->convertRegisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/radio/CarRadioManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RadioController"

    const-string v0, "Car not connected"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAudioBalanceFader(II)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setAudioBalanceFader(II)V

    return-void
.end method

.method public setAudioGEQParams(IIII)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/radio/CarRadioManager;->setAudioGEQParams(IIII)V

    return-void
.end method

.method public setExhibitionModeVolume(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setCarExhibitionModeVol(I)V

    return-void
.end method

.method public setFmVolume(II)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setFmVolume(II)V

    return-void
.end method

.method public setMainAudioMode(II)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setAudioMode(II)V

    return-void
.end method

.method public setPowerOffTuner()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOffTunner()V

    return-void
.end method

.method public setPowerOnTuner()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOnTunner()V

    return-void
.end method

.method public setRadioBand(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioBand(I)V

    return-void
.end method

.method public setRadioFrequency(II)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioFrequency(II)V

    return-void
.end method

.method public setRadioSearchDown()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationDown()V

    return-void
.end method

.method public setRadioSearchUp()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationUp()V

    return-void
.end method

.method public setRadioVolumeAutoFocus(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumeAutoFocus(I)V

    return-void
.end method

.method public setRadioVolumePercent(II)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumePercent(II)V

    return-void
.end method

.method public setStartFullBandScan()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStartFullBandScan()V

    return-void
.end method

.method public setStopFullBandScan()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStopFullBandScan()V

    return-void
.end method

.method public setXSoundType(I)V
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

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->convertUnregisterPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/radio/CarRadioManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method
