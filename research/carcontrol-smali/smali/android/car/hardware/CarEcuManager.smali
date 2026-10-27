.class public abstract Landroid/car/hardware/CarEcuManager;
.super Landroid/car/CarManagerBase;
.source "CarEcuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;,
        Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_SIGNAL_LOST:I = 0x6

.field public static final FLAG_DO_NOT_CALLBACK_CACHED_DATA_WHEN_REGISTERING:I = 0x1

.field public static final FLAG_IMMEDIATELY_CALLBACK_CACHED_DATA_WHEN_REGISTERING:I

.field private static final LOG_CALLBACK_COUNT:Z


# instance fields
.field protected final mCduType:Ljava/lang/String;

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

.field private volatile mIsPropConfigsFetched:Z

.field private mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

.field private final mLock:Ljava/lang/Object;

.field private volatile mReadSupportedPropIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPropConfigMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSupportedPropConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    invoke-static {}, Landroid/car/builtin/os/BuildHelper;->isUserBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/car/hardware/CarEcuManager;->LOG_CALLBACK_COUNT:Z

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p4, p5}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    .line 73
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/CarEcuManager;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    .line 78
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mReadSupportedPropIds:Ljava/util/Set;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    .line 84
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCduType:Ljava/lang/String;

    .line 86
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 89
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbackCountMap:Ljava/util/Map;

    .line 230
    iput-object p5, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p3, p4}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    .line 73
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/CarEcuManager;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    .line 78
    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mReadSupportedPropIds:Ljava/util/Set;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    .line 84
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCduType:Ljava/lang/String;

    .line 86
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 89
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbackCountMap:Ljava/util/Map;

    .line 218
    iput-object p4, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    return-void
.end method

.method private static configsToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 321
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 322
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[]"

    return-object p0

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 330
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v1

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p0, 0x5d

    .line 332
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x2c

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getReadSupportedPropIds()Ljava/util/Set;
    .locals 1
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

    .line 568
    invoke-direct {p0}, Landroid/car/hardware/CarEcuManager;->initSupportedPropConfigs()V

    .line 569
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mReadSupportedPropIds:Ljava/util/Set;

    return-object v0
.end method

.method private static idsToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 300
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[]"

    return-object p0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p0, 0x5d

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x2c

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initSupportedPropConfigs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 532
    iget-boolean v0, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    if-nez v0, :cond_4

    .line 533
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-boolean v1, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    if-nez v1, :cond_3

    .line 535
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v1

    .line 536
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v2, v1}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 537
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 538
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/car/hardware/CarEcuManager;->mReadSupportedPropIds:Ljava/util/Set;

    if-lez v2, :cond_2

    .line 540
    iput-object v1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    .line 541
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    .line 543
    iget-object v1, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 544
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    .line 545
    iget-object v4, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    invoke-direct {p0, v2}, Landroid/car/hardware/CarEcuManager;->isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mReadSupportedPropIds:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 550
    iput-boolean v1, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    .line 552
    :cond_2
    iget-boolean v1, p0, Landroid/car/hardware/CarEcuManager;->mIsPropConfigsFetched:Z

    if-nez v1, :cond_3

    .line 553
    iget-object v1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupportedPropConfigs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    invoke-static {v3}, Landroid/car/hardware/CarEcuManager;->configsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method private isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z
    .locals 2

    .line 253
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getAccess()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$handleOnChangeEvent$0(Ljava/lang/Integer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 145
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object p0
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

    .line 641
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result p1

    return p1
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

    .line 743
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getByteVectorProperty(II)[B

    move-result-object p1

    return-object p1
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

    .line 656
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result p1

    return p1
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

    .line 714
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatVectorProperty(II)[F

    move-result-object p1

    return-object p1
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

    .line 671
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result p1

    return p1
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

    .line 700
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getIntVectorProperty(II)[I

    move-result-object p1

    return-object p1
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

    .line 728
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getLongVectorProperty(II)[J

    move-result-object p1

    return-object p1
.end method

.method protected abstract getPropertyIds()Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
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

    .line 582
    invoke-direct {p0}, Landroid/car/hardware/CarEcuManager;->initSupportedPropConfigs()V

    .line 583
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

.method public getStringProperty(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 136
    invoke-static {}, Landroid/car/XpDebugLog;->isPerfLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++handleOnChangeEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 143
    sget-boolean v2, Landroid/car/hardware/CarEcuManager;->LOG_CALLBACK_COUNT:Z

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbackCountMap:Ljava/util/Map;

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;->INSTANCE:Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 147
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbackCountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new count = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v1}, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    :goto_0
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 161
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnChangeEvent no callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    if-eqz v0, :cond_5

    .line 167
    iget-object v3, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++handleOnChangeEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5
    invoke-interface {v2, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    if-eqz v0, :cond_4

    .line 171
    iget-object v3, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----handleOnChangeEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--handleOnChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected handleOnErrorEvent(II)V
    .locals 6

    .line 180
    invoke-static {}, Landroid/car/XpDebugLog;->isPerfLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++handleOnErrorEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 191
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnChangeEvent no callbacks for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " errorCode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    if-eqz v0, :cond_3

    .line 197
    iget-object v3, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++handleOnErrorEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    invoke-interface {v2, p1, p2}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onErrorEvent(II)V

    if-eqz v0, :cond_2

    .line 201
    iget-object v3, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----handleOnErrorEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 205
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--handleOnErrorEvent propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " errorCode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isPropertyAvailable(II)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->isPropertyAvailable(II)Z

    move-result p1

    return p1
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

    .line 611
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->isPropertySupported(I)Z

    move-result p1

    return p1
.end method

.method public isPropertySupportedOrDefault(IZ)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->isPropertySupported(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public onCarDisconnected()V
    .locals 1

    .line 902
    monitor-enter p0

    .line 903
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    .line 904
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 905
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "car-sdk"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "registerPropCallback(callback) is not recommended "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-direct {p0}, Landroid/car/hardware/CarEcuManager;->getReadSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/CarEcuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 247
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getSharedMemoryIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    :cond_0
    return-void
.end method

.method public registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/hardware/CarEcuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    return-void
.end method

.method public registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    if-eqz p1, :cond_11

    if-eqz p2, :cond_10

    const/4 v0, 0x0

    .line 361
    invoke-static {v0}, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPropCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    if-nez v2, :cond_1

    .line 368
    new-instance v2, Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    invoke-direct {v2, p0}, Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;-><init>(Landroid/car/hardware/CarEcuManager;)V

    iput-object v2, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    .line 370
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 372
    invoke-direct {p0}, Landroid/car/hardware/CarEcuManager;->initSupportedPropConfigs()V

    .line 374
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getSharedMemoryIds()Ljava/util/Set;

    move-result-object v2

    .line 376
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 377
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    .line 379
    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 381
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_4
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 387
    :try_start_1
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 388
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mSupportedPropConfigMaps:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/car/hardware/CarPropertyConfig;

    if-nez v7, :cond_5

    .line 390
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "register unsupported prop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v6

    goto :goto_0

    .line 397
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    invoke-direct {p0, v7}, Landroid/car/hardware/CarEcuManager;->isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 400
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "register prop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not allowed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    :cond_6
    monitor-enter p0

    .line 407
    :try_start_2
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v6, :cond_7

    .line 409
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 410
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x1

    .line 412
    iget-object v8, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    goto :goto_1

    :cond_7
    move v7, v0

    move-object v8, v3

    .line 414
    :goto_1
    invoke-virtual {v6, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 415
    invoke-virtual {v6, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v1, :cond_9

    .line 418
    iget-object v9, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerPropCallback for registered id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; prop: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_c

    if-eqz v8, :cond_b

    if-eqz v1, :cond_a

    .line 425
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerPropCallback for prop: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_a
    :try_start_3
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v9, p3

    int-to-float v9, v9

    invoke-virtual {v6, v8, v7, v9}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v6, :cond_2

    .line 436
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call registerCallback failed for prop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 432
    throw p1

    .line 439
    :cond_b
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listenerToBase is null for prop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :cond_c
    iget-object v6, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "won\'t register the registered prop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 420
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 394
    :cond_d
    :try_start_5
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SupportedPropConfigMaps is empty for prop: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 397
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_e
    :goto_2
    if-eqz v4, :cond_f

    .line 446
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz p1, :cond_f

    .line 447
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-virtual {p1, v4, p2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    :cond_f
    return-void

    :catchall_2
    move-exception p1

    .line 370
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 357
    :cond_10
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerPropCallback callback is null for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/hardware/CarEcuManager;->idsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_11
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "registerPropCallback ids is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendDataWithSharedMemory(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/CarEcuManager;->setByteVectorProperty(II[B)V

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->sendData(I[B)V

    return-void
.end method

.method public setBooleanProperty(IIZ)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V

    goto :goto_0

    .line 761
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBooleanProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setByteVectorProperty(II[B)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 873
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setByteVectorProperty(II[B)V

    goto :goto_0

    .line 876
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setByteVectorProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFloatProperty(IIF)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    goto :goto_0

    .line 780
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFloatProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFloatVectorProperty(II[F)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setFloatVectorProperty(II[F)V

    goto :goto_0

    .line 857
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFloatVectorProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIntProperty(III)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    goto :goto_0

    .line 799
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIntProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIntVectorProperty(II[I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setIntVectorProperty(II[I)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIntVectorProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setLongVectorProperty(II[J)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    return-void
.end method

.method public setMultiProperty(Ljava/util/LinkedList;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/car/hardware/CarPropertyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 925
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->setMultiProperties(Ljava/util/List;)V

    return-void
.end method

.method public setMultipleProperties(Ljava/util/List;)V
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 938
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/property/CarPropertyManager;->setMultiProperties(Ljava/util/List;)V

    return-void
.end method

.method public setStringProperty(IILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->setStringProperty(IILjava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object p2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setStringProperty: propertyId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not supported"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Landroid/car/hardware/CarEcuManager;->getReadSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/CarEcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 268
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 11
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

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    .line 470
    invoke-static {v0}, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v2, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterPropCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/CarEcuManager;->getSharedMemoryIds()Ljava/util/Set;

    move-result-object v2

    .line 477
    invoke-static {v0}, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable(I)Z

    move-result v3

    .line 479
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 480
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_1

    .line 482
    new-instance v5, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v5, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 484
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_2
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v7, :cond_3

    .line 492
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore unregisterPropCallback for unregistered "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit p0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 496
    iget-object v8, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unregisterPropCallback for unregistered id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; desc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_4
    invoke-virtual {v7, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 500
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    const/4 v7, 0x1

    .line 502
    iget-object v8, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    goto :goto_1

    :cond_5
    move v7, v0

    move-object v8, v4

    .line 504
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_8

    if-eqz v8, :cond_7

    if-eqz v1, :cond_6

    .line 509
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unregisterPropCallback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_6
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    goto/16 :goto_0

    .line 513
    :cond_7
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listenerToBase is null for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    :cond_8
    iget-object v7, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "won\'t unregisterPropCallback for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 504
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 520
    :cond_9
    monitor-enter p0

    .line 521
    :try_start_2
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_a

    .line 522
    iput-object v4, p0, Landroid/car/hardware/CarEcuManager;->mListenerToBase:Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;

    .line 524
    :cond_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_b

    .line 526
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    if-eqz p1, :cond_b

    .line 527
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mCarSharedMemoryMgr:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-virtual {p1, v5, p2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 524
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 466
    :cond_c
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "unregisterPropCallback callback is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 461
    :cond_d
    iget-object p1, p0, Landroid/car/hardware/CarEcuManager;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "unregisterPropCallback ids is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
