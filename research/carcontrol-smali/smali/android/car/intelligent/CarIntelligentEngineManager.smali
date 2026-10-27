.class public final Landroid/car/intelligent/CarIntelligentEngineManager;
.super Landroid/car/CarManagerBase;
.source "CarIntelligentEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarSceneListener;,
        Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;
    }
.end annotation


# static fields
.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_0:I = 0x0

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_1:I = 0x1

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_2:I = 0x2

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_3:I = 0x3

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_4:I = 0x4

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_5:I = 0x5

.field public static final CAR_ARHUD_DRIVING_SCENE_NRA_LEVEL_6:I = 0x6

.field public static final CAR_DRIVING_SCENE_EXIT_REASON_AVH_ACTIVE:I = 0x4

.field public static final CAR_DRIVING_SCENE_EXIT_REASON_GEAR_P_N:I = 0x1

.field public static final CAR_DRIVING_SCENE_EXIT_REASON_NORMAL:I = 0x0

.field public static final CAR_DRIVING_SCENE_EXIT_REASON_RADAR:I = 0x2

.field public static final CAR_DRIVING_SCENE_EXIT_REASON_SPEED:I = 0x3

.field public static final CAR_DRIVING_SCENE_NRA_LEVEL_0:I = 0x0

.field public static final CAR_DRIVING_SCENE_NRA_LEVEL_1:I = 0x1

.field public static final CAR_DRIVING_SCENE_NRA_LEVEL_2:I = 0x2

.field public static final CAR_DRIVING_SCENE_NRA_LEVEL_3:I = 0x3

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarIntelligentEngine"


# instance fields
.field private final mCarArHudDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;

.field private final mCarArHudDrivingSceneListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;

.field private final mCarDrivingSceneListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarWelcomeSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;

.field private final mCarWelcomeSceneListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Landroid/car/intelligent/ICarIntelligentEngine;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 124
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    .line 125
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    .line 126
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    .line 175
    invoke-static {p2}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarIntelligentEngine;

    move-result-object p1

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    .line 176
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mMainHandler:Landroid/os/Handler;

    .line 177
    new-instance p1, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;

    invoke-direct {p1, p0}, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;)V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;

    .line 178
    new-instance p1, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;

    invoke-direct {p1, p0}, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;)V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;

    .line 179
    new-instance p1, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;

    invoke-direct {p1, p0}, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;)V

    iput-object p1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;

    return-void
.end method

.method static synthetic access$000(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->handleWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->handleCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->handleCarArHudDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method private dispatchEventToCarArHudDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToCarArHudDrivingSceneClients: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;

    if-eqz v1, :cond_1

    .line 563
    invoke-interface {v1, p1}, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;->onCarArHudDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchEventToCarDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToCarDrivingSceneClients: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    if-eqz v1, :cond_1

    .line 549
    invoke-interface {v1, p1}, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;->onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchEventToCarWelcomeSceneClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToCarWelcomeSceneClients: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    if-eqz v1, :cond_1

    .line 535
    invoke-interface {v1, p1}, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "intelligent"

    return-object v0
.end method

.method private handleCarArHudDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    .line 494
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$RACLOrRNR8ErYrYfITg56tcxF7Y;

    invoke-direct {v1, p0, p1}, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$RACLOrRNR8ErYrYfITg56tcxF7Y;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    .line 515
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$9hiX8Arm8IjgDBWKW5w7X2eozlM;

    invoke-direct {v1, p0, p1}, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$9hiX8Arm8IjgDBWKW5w7X2eozlM;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    .line 507
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;

    invoke-direct {v1, p0, p1}, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;-><init>(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getCarArHudDrivingSceneNRALevel()I
    .locals 1

    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    invoke-interface {v0}, Landroid/car/intelligent/ICarIntelligentEngine;->getCarArHudDrivingSceneNRALevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 430
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x3

    .line 432
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCarDrivingSceneNRALevel()I
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    invoke-interface {v0}, Landroid/car/intelligent/ICarIntelligentEngine;->getCarDrivingSceneNRALevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    .line 386
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$handleCarArHudDrivingSceneChanged$0$CarIntelligentEngineManager(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->dispatchEventToCarArHudDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method public synthetic lambda$handleCarDrivingSceneChanged$2$CarIntelligentEngineManager(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 516
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->dispatchEventToCarDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method public synthetic lambda$handleWelcomeSceneChanged$1$CarIntelligentEngineManager(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    .line 508
    invoke-direct {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->dispatchEventToCarWelcomeSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 184
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/car/intelligent/CarIntelligentEngineManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "intelligent"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarIntelligentEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {p0, v0}, Landroid/car/intelligent/CarIntelligentEngineManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCarArHudDrivingSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 318
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->registerCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 320
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 323
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "CarIntelligentEngine"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCarArHudDrivingSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 327
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

.method public declared-synchronized registerCarDrivingSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 277
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->registerCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 279
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 282
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "CarIntelligentEngine"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCarDrivingSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 286
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

.method public declared-synchronized registerCarSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarSceneListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->registerCarWelcomeSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCarWelcomeSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 223
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->registerCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 225
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 228
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "CarIntelligentEngine"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCarWelcomeSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 232
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

.method public declared-synchronized setCarArHudDrivingSceneNRALevel(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    invoke-interface {v0, p1}, Landroid/car/intelligent/ICarIntelligentEngine;->setCarArHudDrivingSceneNRALevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "level value invalid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCarDrivingSceneNRALevel(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    invoke-interface {v0, p1}, Landroid/car/intelligent/ICarIntelligentEngine;->setCarDrivingSceneNRALevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :goto_0
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "level value invalid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterCarArHudDrivingSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 340
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->unregisterCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 342
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "CarIntelligentEngine"

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCarArHudDrivingSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarArHudDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 346
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

.method public declared-synchronized unregisterCarDrivingSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 299
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->unregisterCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 301
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "CarIntelligentEngine"

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCarDrivingSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarDrivingSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 305
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

.method public declared-synchronized unregisterCarSceneListener()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    .line 244
    invoke-virtual {p0, v1}, Landroid/car/intelligent/CarIntelligentEngineManager;->unregisterCarWelcomeSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCarWelcomeSceneListener(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V
    .locals 4

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 258
    :try_start_2
    iget-object v1, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mService:Landroid/car/intelligent/ICarIntelligentEngine;

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListenerToService:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/intelligent/ICarIntelligentEngine;->unregisterCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 260
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "CarIntelligentEngine"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCarWelcomeSceneListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/intelligent/CarIntelligentEngineManager;->mCarWelcomeSceneListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 264
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
