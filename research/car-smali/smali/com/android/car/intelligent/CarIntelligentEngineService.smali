.class public Lcom/android/car/intelligent/CarIntelligentEngineService;
.super Landroid/car/intelligent/ICarIntelligentEngine$Stub;
.source "CarIntelligentEngineService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;,
        Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_TRANSITION_LOG_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CarIntelligentEngine"


# instance fields
.field private mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

.field private mCacheWelcomeSceneEvent:Landroid/car/intelligent/CarSceneEvent;

.field private final mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

.field private final mCarDrivingSceneClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarDrivingSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

.field private mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mCarWelcomeScene:Lcom/android/car/intelligent/CarWelcomeScene;

.field private final mCarWelcomeSceneClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarWelcomeSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

.field private final mClientDispatchHandler:Landroid/os/Handler;

.field private final mClientDispatchThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private final mTransitionLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Utils$TransitionLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 74
    invoke-direct {p0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mTransitionLogs:Ljava/util/LinkedList;

    .line 70
    new-instance v0, Lcom/android/car/intelligent/-$$Lambda$Z1qFaNeS4G5LEZeoM7K4gY4X0UU;

    invoke-direct {v0, p0}, Lcom/android/car/intelligent/-$$Lambda$Z1qFaNeS4G5LEZeoM7K4gY4X0UU;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    .line 71
    new-instance v0, Lcom/android/car/intelligent/-$$Lambda$F7hKz-VxmizAh8hplg7B7iOZlVs;

    invoke-direct {v0, p0}, Lcom/android/car/intelligent/-$$Lambda$F7hKz-VxmizAh8hplg7B7iOZlVs;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    .line 75
    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntelClientDispatchThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/android/car/intelligent/CarWelcomeScene;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/car/intelligent/CarWelcomeScene;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeScene:Lcom/android/car/intelligent/CarWelcomeScene;

    .line 80
    new-instance v0, Lcom/android/car/intelligent/CarDrivingScene;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/car/intelligent/CarDrivingScene;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

    .line 81
    invoke-static {}, Lcom/android/car/intelligent/CarIntelligentEngineService;->createDefaultCarSceneEvent()Landroid/car/intelligent/CarSceneEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheWelcomeSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    .line 82
    invoke-static {}, Lcom/android/car/intelligent/CarIntelligentEngineService;->createDefaultCarDrivingSceneEvent()Landroid/car/intelligent/CarSceneEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    .line 83
    iput-object p2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/android/car/intelligent/CarIntelligentEngineService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarIntelligentEngineService;

    .line 54
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    return-object v0
.end method

.method private addTransitionLog(Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "timestamp"    # J

    .line 375
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 379
    :cond_0
    new-instance v0, Lcom/android/car/Utils$TransitionLog;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJ)V

    .line 380
    .local v0, "tLog":Lcom/android/car/Utils$TransitionLog;
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method private static createDefaultCarDrivingSceneEvent()Landroid/car/intelligent/CarSceneEvent;
    .locals 7

    .line 388
    new-instance v6, Landroid/car/intelligent/CarSceneEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    return-object v6
.end method

.method private static createDefaultCarSceneEvent()Landroid/car/intelligent/CarSceneEvent;
    .locals 7

    .line 384
    new-instance v6, Landroid/car/intelligent/CarSceneEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/car/intelligent/CarSceneEvent;-><init>(JIII)V

    return-object v6
.end method

.method private findCarSceneClient(Landroid/car/intelligent/ICarSceneListener;)Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/intelligent/ICarSceneListener;

    .line 119
    invoke-interface {p1}, Landroid/car/intelligent/ICarSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    .line 122
    .local v2, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    invoke-virtual {v2, v0}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    return-object v2

    .line 125
    .end local v2    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private initCarBizConfigs()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTING_INTELLIGENT_AUTO_PARKING_SW_CONFIG"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, "intelAutoParkSwitch":I
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x21402707

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 395
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x21402706

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 396
    const-string v1, "CarIntelligentEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCarBizConfigs: intelAutoParkSwitch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public static synthetic lambda$dispatchEventToCarDrivingSceneClients$2(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/car/intelligent/CarSceneEvent;

    .line 272
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 273
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->access$300(Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;)Landroid/car/intelligent/ICarDrivingSceneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    :try_start_0
    invoke-static {v1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->access$300(Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;)Landroid/car/intelligent/ICarDrivingSceneListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/intelligent/ICarDrivingSceneListener;->onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarIntelligentEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchEventToCarDrivingSceneClients to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 280
    .restart local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    :cond_0
    const-string v2, "CarIntelligentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchEventToCarDrivingSceneClients: binder fatal client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    :goto_2
    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method public static synthetic lambda$dispatchEventToCarWelcomeSceneClients$1(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/intelligent/CarSceneEvent;

    .line 260
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    .line 261
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    invoke-virtual {v1, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->dispatchEventToClients(Landroid/car/intelligent/CarSceneEvent;)V

    .line 262
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerCarDrivingSceneListener$0(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/intelligent/ICarDrivingSceneListener;

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    invoke-interface {p1, v0}, Landroid/car/intelligent/ICarDrivingSceneListener;->onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchEventToCarDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/car/intelligent/CarSceneEvent;

    .line 268
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    const-string v3, "CarIntelligentEngine dispatchEventToCarDrivingSceneClients"

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getTimeStamp()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/car/intelligent/CarIntelligentEngineService;->addTransitionLog(Ljava/lang/String;IIJ)V

    .line 270
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEventToCarDrivingSceneClients event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$sg3mUG4hVbWHZB02zUavuk5Iy5U;

    invoke-direct {v1, p0, p1}, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$sg3mUG4hVbWHZB02zUavuk5Iy5U;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/CarSceneEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    .line 285
    return-void
.end method

.method public dispatchEventToCarWelcomeSceneClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/car/intelligent/CarSceneEvent;

    .line 256
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    const-string v3, "CarIntelligentEngine dispatchEventToCarWelcomeSceneClients"

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/car/intelligent/CarSceneEvent;->getTimeStamp()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/car/intelligent/CarIntelligentEngineService;->addTransitionLog(Ljava/lang/String;IIJ)V

    .line 258
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEventToCarWelcomeSceneClients event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$pICLp_KfYh96RNrokeFEU1bUnAE;

    invoke-direct {v1, p0, p1}, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$pICLp_KfYh96RNrokeFEU1bUnAE;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/CarSceneEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheWelcomeSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    .line 265
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 367
    const-string v0, "*IntelligentEngineService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const-string v0, "Scene action change log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Utils$TransitionLog;

    .line 370
    .local v1, "tLog":Lcom/android/car/Utils$TransitionLog;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    .end local v1    # "tLog":Lcom/android/car/Utils$TransitionLog;
    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method public getCarDrivingSceneNRALevel()I
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.car.VALUE_USER_SWITCH_CAR_DRIVING_SCENE_NRA_LEVEL"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, "level":I
    const-string v1, "CarIntelligentEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarDrivingSceneNRALevel: level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v0
.end method

.method public declared-synchronized init()V
    .locals 8

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeScene:Lcom/android/car/intelligent/CarWelcomeScene;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    invoke-virtual {v0, v1}, Lcom/android/car/intelligent/CarWelcomeScene;->init(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;

    invoke-virtual {v0, v1}, Lcom/android/car/intelligent/CarDrivingScene;->init(Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;)V

    .line 91
    const-string v3, "CarIntelligentEngine Boot"

    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheWelcomeSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    invoke-virtual {v0}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v4

    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    invoke-virtual {v0}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v5

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/car/intelligent/CarIntelligentEngineService;->addTransitionLog(Ljava/lang/String;IIJ)V

    .line 93
    invoke-direct {p0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->initCarBizConfigs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarIntelligentEngineService;
    throw v0
.end method

.method public injectCarSceneAction(III)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "action"    # I
    .param p3, "pos"    # I

    .line 222
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectCarSceneAction() called with: type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], action = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], pos = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/android/car/intelligent/CarIntelligentEngineService;->createDefaultCarSceneEvent()Landroid/car/intelligent/CarSceneEvent;

    move-result-object v0

    .line 227
    .local v0, "event":Landroid/car/intelligent/CarSceneEvent;
    invoke-virtual {v0, p1}, Landroid/car/intelligent/CarSceneEvent;->setSceneType(I)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/car/intelligent/CarSceneEvent;->setSceneAction(I)V

    .line 229
    invoke-virtual {v0, p3}, Landroid/car/intelligent/CarSceneEvent;->setScenePosition(I)V

    .line 230
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->getCarDrivingSceneNRALevel()I

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->dispatchEventToCarDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->dispatchEventToCarWelcomeSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    .line 234
    nop

    .line 242
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public injectCarSceneCalibrationData([F[F)V
    .locals 1
    .param p1, "front"    # [F
    .param p2, "rear"    # [F

    .line 249
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/intelligent/CarDrivingScene;->injectCarSceneCalibrationData([F[F)V

    .line 253
    return-void
.end method

.method public registerCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/intelligent/ICarDrivingSceneListener;

    .line 170
    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Landroid/car/intelligent/ICarDrivingSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 174
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 175
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    if-nez v1, :cond_0

    .line 176
    new-instance v2, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    invoke-direct {v2, p0, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V

    move-object v1, v2

    .line 177
    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/car/intelligent/ICarDrivingSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCacheDrivingSceneEvent:Landroid/car/intelligent/CarSceneEvent;

    invoke-virtual {v2}, Landroid/car/intelligent/CarSceneEvent;->getSceneAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;

    invoke-direct {v3, p0, p1}, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    const-string v2, "CarIntelligentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCarDrivingSceneListener(): binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 171
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized registerCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/intelligent/ICarSceneListener;

    monitor-enter p0

    .line 132
    if-eqz p1, :cond_1

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService;->findCarSceneClient(Landroid/car/intelligent/ICarSceneListener;)Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    move-result-object v0

    .line 138
    .local v0, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    if-nez v0, :cond_0

    .line 139
    new-instance v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;-><init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarSceneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 141
    :try_start_1
    invoke-interface {p1}, Landroid/car/intelligent/ICarSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    nop

    .line 146
    :try_start_2
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "CarIntelligentEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCarSceneListener(): listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " client.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarIntelligentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot link death recipient to binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .end local p1    # "listener":Landroid/car/intelligent/ICarSceneListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarIntelligentEngineService;
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeScene:Lcom/android/car/intelligent/CarWelcomeScene;

    invoke-virtual {v0}, Lcom/android/car/intelligent/CarWelcomeScene;->release()V

    .line 99
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

    invoke-virtual {v0}, Lcom/android/car/intelligent/CarDrivingScene;->release()V

    .line 100
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    .line 101
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    invoke-static {v1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->access$000(Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 102
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 104
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    invoke-static {v1}, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->access$100(Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 105
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarIntelligentEngineService;
    throw v0
.end method

.method public setCarDrivingSceneNRALevel(I)V
    .locals 3
    .param p1, "level"    # I

    .line 208
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarDrivingSceneNRALevel: level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.car.VALUE_USER_SWITCH_CAR_DRIVING_SCENE_NRA_LEVEL"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingScene:Lcom/android/car/intelligent/CarDrivingScene;

    invoke-virtual {v0, p1}, Lcom/android/car/intelligent/CarDrivingScene;->setCarDrivingSceneNRALevel(I)V

    .line 211
    return-void
.end method

.method public unregisterCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/intelligent/ICarDrivingSceneListener;

    .line 194
    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Landroid/car/intelligent/ICarDrivingSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 198
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 199
    .local v1, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    if-nez v1, :cond_0

    .line 200
    const-string v2, "CarIntelligentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCarDrivingSceneListener client not exist. binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_0
    const-string v2, "CarIntelligentEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCarDrivingSceneListener: binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarDrivingSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 195
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized unregisterCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/car/intelligent/ICarSceneListener;

    monitor-enter p0

    .line 153
    if-eqz p1, :cond_1

    .line 158
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService;->findCarSceneClient(Landroid/car/intelligent/ICarSceneListener;)Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    move-result-object v0

    .line 159
    .local v0, "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    if-nez v0, :cond_0

    .line 160
    const-string v1, "CarIntelligentEngine"

    const-string v2, "unregisterCarSceneListener(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/intelligent/ICarSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 164
    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "CarIntelligentEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCarSceneListener(): listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " client.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/intelligent/CarIntelligentEngineService;->mCarWelcomeSceneClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 154
    .end local v0    # "client":Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
    :cond_1
    :try_start_2
    const-string v0, "CarIntelligentEngine"

    const-string v1, "unregisterCarSceneListener(): listener null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local p1    # "listener":Landroid/car/intelligent/ICarSceneListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarIntelligentEngineService;
    throw p1
.end method
