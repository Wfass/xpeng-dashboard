.class public Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;
.super Landroid/car/CarManagerBase;
.source "CarAIVehicleManager.java"


# static fields
.field public static final CAR_AI_VEHICLE_SERVICE:Ljava/lang/String; = "ai_vehicle"

.field public static final TAG:Ljava/lang/String; = "CarAIVehicleManager"


# instance fields
.field private mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 23
    invoke-static {p2}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    return-void
.end method


# virtual methods
.method protected onCarDisconnected()V
    .locals 0

    .line 463
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 28
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "ai_vehicle"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setAqsMode(I)V
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a18

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDeodorizeSwitch(I)V
    .locals 2

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a3a

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacAutoMode(I)V
    .locals 2

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a29

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacCirculationMode(I)V
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x15400508

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacFrontDefrostMode(I)V
    .locals 2

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a26

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacPowerMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->setHvacPowerMode(II)V

    return-void
.end method

.method public setHvacPowerMode(II)V
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    invoke-interface {v0, p1, p2}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setHvacPowerModeByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacQualityPurgeMode(I)V
    .locals 2

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a01

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacRearAutoMode(I)V
    .locals 2

    .line 455
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a52

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempAcMode(I)V
    .locals 2

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a27

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempDriverDown(F)V
    .locals 1

    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setHvacTempDriverDown(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempDriverUp(F)V
    .locals 1

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setHvacTempDriverUp(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempDriverValue(F)V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x15600503

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setFloatPropertyByACMachine(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempLeftSyncMode(I)V
    .locals 2

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a0e

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 367
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempPsnDown(F)V
    .locals 1

    .line 417
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setHvacTempPsnDown(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 419
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempPsnUp(F)V
    .locals 1

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setHvacTempPsnUp(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 406
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacTempPsnValue(F)V
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21601a02

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setFloatPropertyByACMachine(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHvacWindSpeedLevel(I)V
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x15400500

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRearHvacPowerMode(I)V
    .locals 2

    .line 436
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a4b

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSfsChannel(I)V
    .locals 2

    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a39

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSfsConcentration(I)V
    .locals 2

    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a3e

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSfsSwitch(I)V
    .locals 2

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a37

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWarpSpeedCoolingSwitch(I)V
    .locals 2

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a3c

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWarpSpeedWarmingSwitch(I)V
    .locals 2

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;->mService:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    const v1, 0x21401a3b

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;->setIntPropertyByACMachine(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
