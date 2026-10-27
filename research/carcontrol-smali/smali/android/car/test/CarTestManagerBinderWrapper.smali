.class public Landroid/car/test/CarTestManagerBinderWrapper;
.super Landroid/car/CarManagerBase;
.source "CarTestManagerBinderWrapper.java"


# instance fields
.field public binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 38
    iput-object p2, p0, Landroid/car/test/CarTestManagerBinderWrapper;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 32
    iput-object p1, p0, Landroid/car/test/CarTestManagerBinderWrapper;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "car-service-test"

    return-object v0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/car/test/CarTestManagerBinderWrapper;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "car-service-test"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/car/test/CarTestManagerBinderWrapper;->binder:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/car/test/CarTestManagerBinderWrapper;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
