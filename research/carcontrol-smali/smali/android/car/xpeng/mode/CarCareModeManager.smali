.class public Landroid/car/xpeng/mode/CarCareModeManager;
.super Landroid/car/CarManagerBase;
.source "CarCareModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;
    }
.end annotation


# static fields
.field public static final CAR_CARE_MODE_ENABLE_LEVEL_0:I = 0x0

.field public static final CAR_CARE_MODE_ENABLE_LEVEL_1:I = 0x1

.field public static final CAR_CARE_MODE_EXIT_REASON_DRVGMILTEST_MODE:I = 0x4

.field public static final CAR_CARE_MODE_EXIT_REASON_NORMAL:I = 0x0

.field public static final CAR_CARE_MODE_EXIT_REASON_N_GEAR_REQ:I = 0x3

.field public static final CAR_CARE_MODE_EXIT_REASON_TICK_OVER_TIME_OFF:I = 0x5

.field public static final CAR_CARE_MODE_EXIT_REASON_TRAILER_MODE:I = 0x2

.field public static final CAR_CARE_MODE_EXIT_REASON_VEHENGINMODE:I = 0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarCareModeManager"


# instance fields
.field private final mCarCareModeListenerToService:Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;

.field private mCareModeHandler:Landroid/os/Handler;

.field private final mClientListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/mode/CarCareModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/xpeng/mode/ICarCareModeSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCareModeHandler:Landroid/os/Handler;

    .line 66
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    .line 72
    invoke-static {p2}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarCareModeSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    .line 73
    new-instance p1, Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;-><init>(Landroid/car/xpeng/mode/CarCareModeManager;)V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCarCareModeListenerToService:Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCareModeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/mode/CarCareModeManager;Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/car/xpeng/mode/CarCareModeManager;->handleCarCareModeEventChanged(Landroid/car/xpeng/mode/CarCareModeEvent;)V

    return-void
.end method

.method private dispatchCarCareModeToClients(Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/mode/CarCareModeListener;

    .line 141
    invoke-interface {v2, p1}, Landroid/car/xpeng/mode/CarCareModeListener;->onCareModeEventChange(Landroid/car/xpeng/mode/CarCareModeEvent;)V

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

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_care_mode_service"

    return-object v0
.end method

.method private handleCarCareModeEventChanged(Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCareModeHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;-><init>(Landroid/car/xpeng/mode/CarCareModeManager;Landroid/car/xpeng/mode/CarCareModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getCarCareModeEnable()I
    .locals 1

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    invoke-interface {v0}, Landroid/car/xpeng/mode/ICarCareModeSvc;->getCarCareModeEnable()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$handleCarCareModeEventChanged$0$CarCareModeManager(Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Landroid/car/xpeng/mode/CarCareModeManager;->dispatchCarCareModeToClients(Landroid/car/xpeng/mode/CarCareModeEvent;)V

    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/mode/CarCareModeManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_care_mode_service"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarCareModeSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p0, v0}, Landroid/car/xpeng/mode/CarCareModeManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCareModeListener(Landroid/car/xpeng/mode/CarCareModeListener;)V
    .locals 5

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 91
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCarCareModeListenerToService:Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/mode/ICarCareModeSvc;->registerCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarCareModeManager"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCareModeListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :try_start_4
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "CarCareModeManager"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCareModeListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mClientListenerList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 97
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

.method public sendCareModeTick(I)V
    .locals 1

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc;->sendCareModeTick(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCarCareModeEnable(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc;->setCarCareModeEnable(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "level value invalid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized unregisterCareModeListener(Landroid/car/xpeng/mode/CarCareModeListener;)V
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 109
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mService:Landroid/car/xpeng/mode/ICarCareModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mCarCareModeListenerToService:Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/mode/ICarCareModeSvc;->unregisterCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarCareModeManager"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterCareModeListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "CarCareModeManager"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCareModeListener listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", mClientListenerList = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/mode/CarCareModeManager;->mClientListenerList:Ljava/util/List;

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
