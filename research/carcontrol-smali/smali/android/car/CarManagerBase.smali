.class public abstract Landroid/car/CarManagerBase;
.super Ljava/lang/Object;
.source "CarManagerBase.java"


# instance fields
.field private haveDbgInfo:Z

.field protected mCar:Landroid/car/Car;

.field protected mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

.field protected mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

.field private mDbg:Z

.field protected mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/car/CarManagerBase;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    .line 50
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    .line 51
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z

    .line 53
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->mDbg:Z

    const-string v0, "CarManagerBase"

    .line 54
    iput-object v0, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/car/CarManagerBase;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    .line 50
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    .line 51
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z

    .line 53
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->mDbg:Z

    const-string v0, "CarManagerBase"

    .line 54
    iput-object v0, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;ZLjava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/car/CarManagerBase;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    .line 50
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    .line 51
    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z

    .line 53
    iput-boolean v0, p0, Landroid/car/CarManagerBase;->mDbg:Z

    const-string v0, "CarManagerBase"

    .line 54
    iput-object v0, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z

    .line 65
    iput-boolean p2, p0, Landroid/car/CarManagerBase;->mDbg:Z

    .line 66
    iput-object p3, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getEventHandler()Landroid/os/Handler;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected getICarOrThrow()Landroid/car/ICar;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedMemoryIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleExceptionFromCarService(Ljava/lang/Exception;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            "TT;)TT;"
        }
    .end annotation

    .line 93
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Landroid/os/RemoteException;

    invoke-virtual {p0, p1, p2}, Landroid/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    instance-of v0, p1, Ljava/lang/RuntimeException;

    const-string v1, "CAR.L"

    if-eqz v0, :cond_1

    const-string v0, "Car service threw Runtime Exception."

    .line 98
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2

    :cond_1
    const-string v0, "Car service threw Exception."

    .line 103
    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method protected handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {v0, p1, p2}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-void
.end method

.method protected onCarDisconnected()V
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->onCarDisconnected()V

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->onCarDisconnected()V

    :cond_1
    return-void
.end method

.method protected onConnected()V
    .locals 5

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_vehicle"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object v0

    iput-object v0, p0, Landroid/car/CarManagerBase;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    .line 136
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->onConnected()V

    goto :goto_0

    .line 139
    :cond_0
    iget-boolean v0, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "property"

    if-eqz v0, :cond_1

    .line 140
    :try_start_1
    new-instance v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object v1

    iget-boolean v3, p0, Landroid/car/CarManagerBase;->mDbg:Z

    iget-object v4, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;ZLjava/lang/String;)V

    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V

    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    .line 146
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->supportSharedMemoryManager()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->onConnected()V

    goto :goto_2

    .line 153
    :cond_3
    iget-boolean v0, p0, Landroid/car/CarManagerBase;->haveDbgInfo:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "xp_shared_memory"

    if-eqz v0, :cond_4

    .line 154
    :try_start_2
    new-instance v0, Landroid/car/hardware/shm/CarSharedMemoryManager;

    iget-object v2, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/car/CarManagerBase;->mDbg:Z

    iget-object v4, p0, Landroid/car/CarManagerBase;->mTag:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/car/hardware/shm/CarSharedMemoryManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    .line 155
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getSharedMemoryIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->setSharedMemoryPropertyIds(Ljava/util/Set;)V

    goto :goto_2

    .line 157
    :cond_4
    new-instance v0, Landroid/car/hardware/shm/CarSharedMemoryManager;

    iget-object v2, p0, Landroid/car/CarManagerBase;->mCar:Landroid/car/Car;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/car/hardware/shm/CarSharedMemoryManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/car/CarManagerBase;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    .line 158
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getSharedMemoryIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->setSharedMemoryPropertyIds(Ljava/util/Set;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 162
    invoke-virtual {p0, v0}, Landroid/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_2
    return-void
.end method

.method protected supportSharedMemoryManager()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
