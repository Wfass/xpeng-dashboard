.class public Landroid/car/xpeng/energy/CarEnergyConspManager;
.super Landroid/car/CarManagerBase;
.source "CarEnergyConspManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final INDEX_DRIVE_ENERGY_CONSP_RATIO:I = 0x0

.field public static final INDEX_ELECTIC_EQUIPMENT_CONSP_RATIO:I = 0x2

.field public static final INDEX_OTHER_CONSP_RATIO:I = 0x4

.field public static final INDEX_POWER_SUPPLY_CONSP_RATIO:I = 0x3

.field public static final INDEX_TEMP_CONTROL_CONSP_RATIO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarEnergyConspManager"


# instance fields
.field private final mCarEnergyConspListenerToService:Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;

.field private final mClientListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/energy/CarEnergyConspListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnergyHandler:Landroid/os/Handler;

.field private mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mEnergyHandler:Landroid/os/Handler;

    .line 67
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    .line 72
    invoke-static {p2}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    .line 73
    new-instance p1, Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;-><init>(Landroid/car/xpeng/energy/CarEnergyConspManager;)V

    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mCarEnergyConspListenerToService:Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mEnergyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/energy/CarEnergyConspManager;Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/car/xpeng/energy/CarEnergyConspManager;->handleCarEnergyConspEventChanged(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    return-void
.end method

.method private dispatchCarEnergyConspToClients(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/energy/CarEnergyConspListener;

    .line 141
    invoke-interface {v2, p1}, Landroid/car/xpeng/energy/CarEnergyConspListener;->onEnergyConspEventChange(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    goto :goto_0

    .line 144
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleCarEnergyConspEventChanged(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mEnergyHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;-><init>(Landroid/car/xpeng/energy/CarEnergyConspManager;Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getCarElectriEnergyDistribution()[F
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    invoke-interface {v0}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->getCarElectriEnergyDistribution()[F

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_energy_consp_service"

    return-object v0
.end method

.method public synthetic lambda$handleCarEnergyConspEventChanged$0$CarEnergyConspManager(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Landroid/car/xpeng/energy/CarEnergyConspManager;->dispatchCarEnergyConspToClients(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    return-void
.end method

.method protected onCarDisconnected()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/energy/CarEnergyConspManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_energy_consp_service"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p0, v0}, Landroid/car/xpeng/energy/CarEnergyConspManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerEnergyConspListener(Landroid/car/xpeng/energy/CarEnergyConspListener;)V
    .locals 5

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 91
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    iget-object v2, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mCarEnergyConspListenerToService:Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->registerEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarEnergyConspManager"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerEnergyConspListener failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "CarEnergyConspManager"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerEnergyConspListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",mClientListenerList ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterEnergyConspListener(Landroid/car/xpeng/energy/CarEnergyConspListener;)V
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 109
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mService:Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    iget-object v2, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mCarEnergyConspListenerToService:Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->unregisterEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarEnergyConspManager"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterEnergyConspListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "CarEnergyConspManager"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterEnergyConspListener listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", mClientListenerList = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/energy/CarEnergyConspManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 115
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
