.class public Landroid/car/hardware/shm/CarSharedMemoryManager;
.super Landroid/car/CarManagerBase;
.source "CarSharedMemoryManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_DATA_SIZE:I = 0xa00000

.field private static final MAX_INTERVAL_MS:Ljava/time/Duration;

.field private static final MAX_INTERVAL_MS_IN_HANDLER:Ljava/time/Duration;

.field private static final MSG_GENERIC_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSharedMemoryManager"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mDbg:Z

.field private mHandler:Lcom/android/car/internal/SingleRawMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleRawMessageHandler<",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIdToCallbackCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdToCallbacksMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

.field private mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

.field private mSharedMemoryPropertyIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSupportedPropConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 493
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x28

    .line 80
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->MAX_INTERVAL_MS:Ljava/time/Duration;

    const-wide/16 v0, 0x14

    .line 81
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->MAX_INTERVAL_MS_IN_HANDLER:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 89
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbackCountMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mDbg:Z

    const-string p1, "CarSharedMemoryManager"

    .line 113
    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    .line 114
    invoke-static {p2}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 115
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "shared memory callback"

    const/16 v0, -0x13

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 117
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getHandler(Landroid/os/Looper;)Lcom/android/car/internal/SingleRawMessageHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandler:Lcom/android/car/internal/SingleRawMessageHandler;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 89
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbackCountMap:Ljava/util/Map;

    .line 102
    iput-boolean p3, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mDbg:Z

    .line 103
    iput-object p4, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 105
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "shared memory callback"

    const/16 p3, -0x13

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 106
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getHandler(Landroid/os/Looper;)Lcom/android/car/internal/SingleRawMessageHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandler:Lcom/android/car/internal/SingleRawMessageHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/time/Duration;
    .locals 1

    .line 75
    sget-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->MAX_INTERVAL_MS_IN_HANDLER:Ljava/time/Duration;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/hardware/shm/CarSharedMemoryManager;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->logCallbackCount(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/shm/CarSharedMemoryManager;)Landroid/util/SparseArray;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Landroid/car/hardware/shm/CarSharedMemoryManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->handleEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$500()Ljava/time/Duration;
    .locals 1

    .line 75
    sget-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->MAX_INTERVAL_MS:Ljava/time/Duration;

    return-object v0
.end method

.method private getHandler(Landroid/os/Looper;)Lcom/android/car/internal/SingleRawMessageHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")",
            "Lcom/android/car/internal/SingleRawMessageHandler<",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/hardware/shm/CarSharedMemoryManager$1;-><init>(Landroid/car/hardware/shm/CarSharedMemoryManager;Landroid/os/Looper;I)V

    return-object v0
.end method

.method private getPropertyConfigs(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 260
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    invoke-interface {v0}, Landroid/car/xpsharedmemory/IXpSharedMemory;->getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 262
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 263
    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 269
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string v1, "getPropertyList exception "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    new-instance v0, Landroid/car/CarNotConnectedException;

    invoke-direct {v0, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_shared_memory"

    return-object v0
.end method

.method private getSupportedPropIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 275
    sget-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 279
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandler:Lcom/android/car/internal/SingleRawMessageHandler;

    invoke-virtual {v0, p1}, Lcom/android/car/internal/SingleRawMessageHandler;->sendEvents(Ljava/lang/Object;)V

    return-void
.end method

.method private initSupportedPropConfigs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 238
    sget-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryPropertyIds:Ljava/util/Set;

    .line 241
    invoke-direct {p0, v1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getPropertyConfigs(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    new-instance v2, Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 244
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig;

    .line 245
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    iput-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    .line 250
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;)Z"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getAccess()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$logCallbackCount$0(Ljava/lang/Integer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 225
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object p0
.end method

.method private logCallbackCount(I)V
    .locals 6

    .line 224
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbackCountMap:Ljava/util/Map;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;->INSTANCE:Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "callback for "

    if-gez v2, :cond_0

    .line 227
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbackCountMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", new count = 1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 230
    invoke-static {v2}, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", count = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 4

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    :try_start_1
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :try_start_2
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "CarSharedMemoryManager"

    const-string v2, "mHandlerThread join timed out"

    .line 456
    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 452
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :try_start_4
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "CarSharedMemoryManager"

    const-string v2, "mHandlerThread join timed out"

    goto :goto_0

    .line 459
    :cond_0
    :goto_1
    iput-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    goto :goto_3

    .line 454
    :goto_2
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const-string v1, "CarSharedMemoryManager"

    const-string v2, "mHandlerThread join timed out"

    .line 456
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v0

    .line 461
    :cond_2
    :goto_3
    iput-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandler:Lcom/android/car/internal/SingleRawMessageHandler;

    .line 463
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 464
    iput-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    .line 465
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onConnected()V
    .locals 3

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_shared_memory"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 128
    invoke-virtual {p0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->onCarDisconnected()V

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "shared memory callback"

    const/16 v2, -0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getHandler(Landroid/os/Looper;)Lcom/android/car/internal/SingleRawMessageHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mHandler:Lcom/android/car/internal/SingleRawMessageHandler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {p0, v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 309
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "registerPropCallback ids is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 314
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "registerPropCallback callback is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_1
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPropCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    if-nez v0, :cond_3

    .line 324
    new-instance v0, Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    invoke-direct {v0, p0}, Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;-><init>(Landroid/car/hardware/shm/CarSharedMemoryManager;)V

    iput-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    .line 326
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 328
    invoke-direct {p0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->initSupportedPropConfigs()V

    .line 330
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 331
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string p2, "no supported shared memory properties"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 337
    sget-object v1, Landroid/car/hardware/shm/CarSharedMemoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_1
    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 339
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_a

    .line 341
    invoke-direct {p0, v2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 349
    monitor-enter p0

    .line 350
    :try_start_2
    iget-object v3, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_6

    .line 352
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 353
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 355
    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    .line 357
    :cond_6
    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 358
    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 364
    :try_start_3
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_8

    .line 365
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPropCallback for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0, v2}, Landroid/car/xpsharedmemory/IXpSharedMemory;->registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 369
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V

    goto/16 :goto_0

    .line 374
    :cond_9
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "won\'t registerPropCallback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 360
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 342
    :cond_a
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shm register unsupported prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 339
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_b
    return-void

    :catchall_2
    move-exception p1

    .line 326
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public sendData(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    array-length v0, p2

    const-string v1, "CarSharedMemoryManager"

    if-eqz v0, :cond_4

    const/high16 v2, 0xa00000

    if-gt v0, v2, :cond_3

    const/4 v2, 0x0

    .line 487
    :try_start_0
    invoke-static {p2, v2}, Landroid/car/builtin/os/ParcelFileDescriptorHelper;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 489
    :try_start_1
    iget-object v3, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    invoke-interface {v3, p1, p2, v0}, Landroid/car/xpsharedmemory/IXpSharedMemory;->queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "Cannot fetch pfd"

    .line 491
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_1

    .line 493
    :try_start_2
    invoke-static {v2, p2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    .line 487
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p2, :cond_2

    .line 493
    :try_start_4
    invoke-static {p1, p2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "send data using shared memory with exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    const-string p2, "data is too large"

    .line 479
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data is too large prop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p2, "data size is 0"

    .line 476
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data size is 0 prop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setSharedMemoryPropertyIds(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 142
    sget-object v0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryPropertyIds:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 144
    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryPropertyIds:Ljava/util/Set;

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    return-void
.end method

.method public unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string p2, "ids is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_8

    .line 395
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPropCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v3, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_2

    .line 405
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore unregisterPropCallback for unregistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit p0

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v2, 0x1

    .line 414
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    .line 416
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 420
    :try_start_1
    sget-boolean v2, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterPropCallback for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_4
    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0, v1}, Landroid/car/xpsharedmemory/IXpSharedMemory;->unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 427
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 425
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V

    goto/16 :goto_0

    .line 430
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "won\'t unregisterPropCallback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 416
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 433
    :cond_6
    monitor-enter p0

    .line 434
    :try_start_3
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 435
    iput-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mSharedMemoryDataEventToService:Landroid/car/hardware/shm/CarSharedMemoryManager$SharedMemoryDataListenerToService;

    .line 437
    :cond_7
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 391
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mTag:Ljava/lang/String;

    const-string p2, "callback is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateIBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 121
    invoke-static {p1}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager;->mService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    return-void
.end method
