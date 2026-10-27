.class public final Landroid/car/CarBluetoothManager;
.super Landroid/car/CarManagerBase;
.source "CarBluetoothManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBluetoothManager"


# instance fields
.field private mService:Landroid/car/ICarBluetooth;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 62
    invoke-static {p2}, Landroid/car/ICarBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBluetooth;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarBluetoothManager;->mService:Landroid/car/ICarBluetooth;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "car_bluetooth"

    return-object v0
.end method


# virtual methods
.method public connectDevices()V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/car/CarBluetoothManager;->mService:Landroid/car/ICarBluetooth;

    invoke-interface {v0}, Landroid/car/ICarBluetooth;->connectDevices()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {p0, v0}, Landroid/car/CarBluetoothManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarBluetoothManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "car_bluetooth"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/ICarBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/car/CarBluetoothManager;->mService:Landroid/car/ICarBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/car/CarBluetoothManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
