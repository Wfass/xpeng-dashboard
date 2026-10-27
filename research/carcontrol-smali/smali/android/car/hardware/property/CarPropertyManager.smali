.class public Landroid/car/hardware/property/CarPropertyManager;
.super Landroid/car/CarManagerBase;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;,
        Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;,
        Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_RECEIVE_PROPERTY_FROM_CARSERVICE_INTERVAL_MS:J

.field private static final MAX_RECEIVE_PROPERTY_FROM_HANDLER_INTERVAL_MS:J

.field private static final MSG_GENERIC_EVENT:I = 0x0

.field public static final SENSOR_RATE_FAST:F = 10.0f

.field public static final SENSOR_RATE_FASTEST:F = 100.0f

.field public static final SENSOR_RATE_NORMAL:F = 1.0f

.field public static final SENSOR_RATE_ONCHANGE:F = 0.0f

.field public static final SENSOR_RATE_UI:F = 5.0f

.field public static final SUBSCRIBE_FLAG_EVENTS_FROM_ANDROID:I = 0x2

.field public static final SUBSCRIBE_FLAG_EVENTS_FROM_CAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarPropertyManager"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile sConfigFetch:Z

.field private static final sConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivePropertyListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

.field private final mDbg:Z

.field private final mHandler:Lcom/android/car/internal/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleMessageHandler<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/hardware/property/ICarProperty;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    .line 87
    invoke-static {}, Landroid/car/builtin/os/BuildHelper;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 88
    :goto_0
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/car/hardware/property/CarPropertyManager;->MAX_RECEIVE_PROPERTY_FROM_CARSERVICE_INTERVAL_MS:J

    .line 89
    invoke-static {}, Landroid/car/builtin/os/BuildHelper;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x9c4

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x4e2

    .line 90
    :goto_1
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/car/hardware/property/CarPropertyManager;->MAX_RECEIVE_PROPERTY_FROM_HANDLER_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CarPropertyManager"

    .line 152
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;ZLjava/lang/String;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 80
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 165
    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    .line 166
    iput-boolean p3, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    .line 167
    iput-object p4, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    .line 168
    sget-boolean p1, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-nez p1, :cond_0

    .line 169
    sget-object p1, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 171
    :try_start_0
    invoke-direct {p0}, Landroid/car/hardware/property/CarPropertyManager;->fetchPropertyListFromCarServiceLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 173
    :try_start_1
    iget-object p3, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPropertyList exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 177
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void

    .line 182
    :cond_1
    new-instance p2, Landroid/car/hardware/property/CarPropertyManager$1;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Landroid/car/hardware/property/CarPropertyManager$1;-><init>(Landroid/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V

    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 64
    sget-wide v0, Landroid/car/hardware/property/CarPropertyManager;->MAX_RECEIVE_PROPERTY_FROM_CARSERVICE_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/car/hardware/property/CarPropertyManager;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/car/hardware/property/CarPropertyManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 64
    sget-wide v0, Landroid/car/hardware/property/CarPropertyManager;->MAX_RECEIVE_PROPERTY_FROM_HANDLER_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/car/hardware/property/CarPropertyManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    return p0
.end method

.method private doUnregisterListenerLocked(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V
    .locals 3

    .line 428
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-interface {p1, p2, v0}, Landroid/car/hardware/property/ICarProperty;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 441
    :goto_0
    iget-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 444
    :try_start_1
    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getRate()F

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(IFI)Z
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_1
    return-void
.end method

.method private fetchPropertyListFromCarServiceLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 471
    sget-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-nez v0, :cond_1

    .line 473
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0}, Landroid/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 482
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPropertyList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 484
    sget-object v2, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 486
    sput-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 475
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    const-string v2, "getPropertyList exception "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    new-instance v1, Landroid/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "property"

    return-object v0
.end method

.method private handleEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p1}, Lcom/android/car/internal/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private registerOrUpdatePropertyListener(IFI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/car/hardware/property/ICarProperty;->registerListenerWithFlag(IFILandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 348
    iget-object p3, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call registerListener failed with RemoteException for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catch_1
    move-exception p2

    .line 344
    iget-object p3, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call registerListener failed with IllegalStateException for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-static {p2}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static toFloatArray([Ljava/lang/Float;)[F
    .locals 4

    .line 772
    array-length v0, p0

    .line 773
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 775
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static toIntArray([Ljava/lang/Integer;)[I
    .locals 4

    .line 690
    array-length v0, p0

    .line 691
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 693
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static toLongArray([Ljava/lang/Long;)[J
    .locals 5

    .line 731
    array-length v0, p0

    .line 732
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 734
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBooleanProperty(II)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 601
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 603
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getByteVectorProperty(II)[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 748
    const-class v0, [B

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 750
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getFloatProperty(II)F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 617
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 619
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getFloatVectorProperty(II)[F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 764
    const-class v0, [Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Float;

    invoke-static {p1}, Landroid/car/hardware/property/CarPropertyManager;->toFloatArray([Ljava/lang/Float;)[F

    move-result-object p1

    return-object p1

    .line 766
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getIntArrayProperty(II)[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 682
    const-class v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p1}, Landroid/car/hardware/property/CarPropertyManager;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object p1

    return-object p1

    .line 684
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getIntProperty(II)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 633
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 635
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getIntVectorProperty(II)[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 707
    const-class v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p1}, Landroid/car/hardware/property/CarPropertyManager;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object p1

    return-object p1

    .line 709
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getLongProperty(II)J
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 649
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 651
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getLongVectorProperty(II)[J
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 723
    const-class v0, [Ljava/lang/Long;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 727
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p1}, Landroid/car/hardware/property/CarPropertyManager;->toLongArray([Ljava/lang/Long;)[J

    move-result-object p1

    return-object p1

    .line 725
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getProperty(II)Landroid/car/hardware/CarPropertyValue;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(II)",
            "Landroid/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/property/ICarProperty;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 833
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 834
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", area: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 835
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance p1, Landroid/car/CarNotConnectedException;

    invoke-direct {p1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)",
            "Landroid/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 795
    iget-boolean v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    const-string v1, ", area: 0x"

    const-string v2, "getProperty "

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 797
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0, p2, p3}, Landroid/car/hardware/property/ICarProperty;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 801
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 802
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .line 804
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid property type. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", but was: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 810
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 811
    invoke-static {p2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 812
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " failed with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 810
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 458
    sget-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-direct {p0}, Landroid/car/hardware/property/CarPropertyManager;->fetchPropertyListFromCarServiceLocked()V

    .line 461
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 463
    :cond_0
    :goto_0
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_1
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    sget-boolean v1, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-nez v1, :cond_0

    .line 502
    sget-object v1, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    invoke-direct {p0}, Landroid/car/hardware/property/CarPropertyManager;->fetchPropertyListFromCarServiceLocked()V

    .line 504
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 507
    :cond_0
    :goto_0
    sget-boolean v1, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 509
    sget-object v2, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    if-eqz v1, :cond_1

    .line 511
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getReadPermission(I)Ljava/lang/String;
    .locals 3

    .line 541
    iget-boolean v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReadPermission, propId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1}, Landroid/car/hardware/property/ICarProperty;->getReadPermission(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 547
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringProperty(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 665
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 667
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 3

    .line 560
    iget-boolean v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWritePermission, propId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1}, Landroid/car/hardware/property/ICarProperty;->getWritePermission(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 566
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isPropertyAvailable(II)Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 582
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/property/ICarProperty;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception v0

    .line 586
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPropertyAvailable failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", propId: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", area: 0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    new-instance p1, Landroid/car/CarNotConnectedException;

    invoke-direct {p1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public isPropertySupported(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 524
    sget-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    if-nez v0, :cond_0

    .line 525
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-direct {p0}, Landroid/car/hardware/property/CarPropertyManager;->fetchPropertyListFromCarServiceLocked()V

    .line 527
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 529
    :cond_0
    :goto_0
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCarDisconnected()V
    .locals 3

    .line 1088
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 1090
    iput-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    .line 1091
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1093
    sget-object v2, Landroid/car/hardware/property/CarPropertyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .line 1094
    :try_start_1
    sput-boolean v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigFetch:Z

    .line 1095
    sput-object v1, Landroid/car/hardware/property/CarPropertyManager;->sPropertyList:Ljava/util/List;

    .line 1096
    sget-object v0, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1097
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1091
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onConnected()V
    .locals 2

    .line 217
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "property"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Landroid/car/hardware/property/CarPropertyManager;->isPropertySupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 220
    invoke-virtual {p0, v0}, Landroid/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    .locals 1

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IFI)Z

    move-result p1

    return p1
.end method

.method public registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IFI)Z
    .locals 5

    .line 297
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-static {p2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subscribeFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-direct {v1, p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    iput-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    .line 305
    :cond_1
    sget-object v1, Landroid/car/hardware/property/CarPropertyManager;->sConfigMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 307
    iget-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "registerListener:  propId is not in config list:  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "(0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return v2

    .line 311
    :cond_2
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    cmpl-float v1, p3, v3

    if-lez v1, :cond_3

    move p3, v3

    .line 316
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    if-nez v1, :cond_4

    .line 318
    new-instance v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-direct {v1, p0, p3}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;-><init>(Landroid/car/hardware/property/CarPropertyManager;F)V

    .line 319
    iget-object v3, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v2

    .line 322
    :goto_0
    invoke-virtual {v1, p1, p3}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->addAndUpdateRate(Ljava/lang/Object;F)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    if-eqz v3, :cond_6

    .line 327
    :try_start_1
    invoke-direct {p0, p2, p3, p4}, Landroid/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(IFI)Z

    move-result p1
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_6

    .line 328
    :try_start_2
    monitor-exit v0

    return v2

    .line 334
    :catch_0
    :cond_6
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setBooleanProperty(IIZ)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 894
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setByteVectorProperty(II[B)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 962
    const-class v0, [B

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setFloatProperty(IIF)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 907
    const-class v0, Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setFloatVectorProperty(II[F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 990
    const-class v0, [F

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setIntProperty(III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 920
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setIntVectorProperty(II[I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 976
    const-class v0, [I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setLongProperty(IIJ)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 934
    const-class v0, Ljava/lang/Long;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setLongVectorProperty(II[J)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 1004
    const-class v0, [J

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setMultiProperties(Ljava/util/List;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/car/hardware/property/ICarProperty;->setMultiProperties(Ljava/util/List;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 877
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    new-instance v0, Landroid/car/CarNotConnectedException;

    invoke-direct {v0, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 854
    iget-boolean v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mDbg:Z

    const-string v1, ", val: "

    const-string v2, ", class: "

    const-string v3, ", area: 0x"

    const-string/jumbo v4, "setProperty "

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 856
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 855
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    new-instance v5, Landroid/car/hardware/CarPropertyValue;

    invoke-direct {v5, p2, p3, p4}, Landroid/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Landroid/car/hardware/property/ICarProperty;->setProperty(Landroid/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 861
    iget-object v5, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 862
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 863
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 861
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance p1, Landroid/car/CarNotConnectedException;

    invoke-direct {p1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setStringProperty(IILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 948
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 6

    .line 400
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregister listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    .line 405
    :goto_0
    iget-object v5, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 406
    iget-object v5, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    .line 408
    aget v4, v2, v3

    .line 409
    invoke-direct {p0, p1, v4}, Landroid/car/hardware/property/CarPropertyManager;->doUnregisterListenerLocked(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->doUnregisterListenerLocked(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    .line 424
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateIBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 211
    invoke-static {p1}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager;->mService:Landroid/car/hardware/property/ICarProperty;

    return-void
.end method
