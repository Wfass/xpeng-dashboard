.class public Lcom/android/car/CarDiagnosticService;
.super Landroid/car/diagnostic/ICarDiagnostic$Stub;
.source "CarDiagnosticService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;,
        Lcom/android/car/CarDiagnosticService$LiveFrameRecord;,
        Lcom/android/car/CarDiagnosticService$DiagnosticRecord;,
        Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    }
.end annotation


# instance fields
.field private final mClients:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDiagnosticLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/CarDiagnosticService$DiagnosticClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

.field private final mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

.field private final mDiagnosticListeners:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDiagnosticLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/Listeners<",
            "Lcom/android/car/CarDiagnosticService$DiagnosticClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

.field private final mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDiagnosticLock"
    .end annotation
.end field

.field private final mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDiagnosticLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/DiagnosticHalService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diagnosticHal"    # Lcom/android/car/hal/DiagnosticHalService;

    .line 78
    invoke-direct {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    .line 66
    new-instance v0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    .line 79
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 81
    new-instance v0, Lcom/android/car/internal/CarPermission;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    const-string v2, "android.car.permission.CAR_DIAGNOSTICS"

    invoke-direct {v0, v1, v2}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

    .line 83
    new-instance v0, Lcom/android/car/internal/CarPermission;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    const-string v2, "android.car.permission.CLEAR_CAR_DIAGNOSTICS"

    invoke-direct {v0, v1, v2}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarDiagnosticService;Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarDiagnosticService;
    .param p1, "x1"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->removeClient(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V

    return-void
.end method

.method private findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDiagnosticLock"
    .end annotation

    .line 475
    invoke-interface {p1}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 476
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 477
    .local v2, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    invoke-virtual {v2, v0}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->isHoldingListenerBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    return-object v2

    .line 480
    .end local v2    # "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :cond_0
    goto :goto_0

    .line 481
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    return-object v0
.end method

.method public static synthetic lambda$iIXtk07mwjd9ZcasP_C4yfwPh0g(Ljava/io/PrintWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$processDiagnosticData$1(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)Ljava/util/List;
    .locals 1
    .param p0, "diagnosticClient"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$release$0(Ljava/lang/Integer;Lcom/android/car/Listeners;)V
    .locals 0
    .param p0, "frameType"    # Ljava/lang/Integer;
    .param p1, "diagnosticListeners"    # Lcom/android/car/Listeners;

    .line 142
    invoke-virtual {p1}, Lcom/android/car/Listeners;->release()V

    return-void
.end method

.method private processDiagnosticData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 156
    .local v0, "eventsByClient":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, "listeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 160
    .local v3, "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    invoke-virtual {v3}, Landroid/car/diagnostic/CarDiagnosticEvent;->isLiveFrame()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 162
    invoke-direct {p0, v3}, Lcom/android/car/CarDiagnosticService;->setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 163
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/car/Listeners;

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v3}, Landroid/car/diagnostic/CarDiagnosticEvent;->isFreezeFrame()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 165
    invoke-direct {p0, v3}, Lcom/android/car/CarDiagnosticService;->setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 166
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/car/Listeners;

    .line 174
    :goto_1
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/android/car/Listeners;->getClients()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/Listeners$ClientWithRate;

    .line 176
    .local v5, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    invoke-virtual {v5}, Lcom/android/car/Listeners$ClientWithRate;->getClient()Lcom/android/car/Listeners$IListener;

    move-result-object v6

    check-cast v6, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 177
    .local v6, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    sget-object v7, Lcom/android/car/-$$Lambda$CarDiagnosticService$K3aBd1oODaMxNDR94wAy8IBGg9g;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$K3aBd1oODaMxNDR94wAy8IBGg9g;

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 179
    .local v7, "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v5    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    .end local v6    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v7    # "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    goto :goto_2

    .line 182
    .end local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_1
    goto :goto_0

    .line 168
    .restart local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_2
    const-string v4, "CAR.DIAGNOSTIC"

    const-string v7, "received unknown diagnostic event: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 170
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto :goto_0

    .line 183
    .end local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_3
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 188
    .local v4, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 190
    .local v5, "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-virtual {v4, v5}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->dispatchDiagnosticUpdate(Ljava/util/List;)V

    .line 191
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    .end local v4    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v5    # "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    goto :goto_3

    .line 192
    :cond_4
    return-void
.end method

.method private removeClient(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V
    .locals 5
    .param p1, "diagnosticClient"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 485
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getDiagnosticArray()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 488
    .local v3, "diagnostic":I
    nop

    .line 489
    invoke-virtual {p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getICarDiagnosticEventListener()Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object v4

    .line 488
    invoke-virtual {p0, v3, v4}, Lcom/android/car/CarDiagnosticService;->unregisterDiagnosticListener(ILandroid/car/diagnostic/ICarDiagnosticEventListener;)V

    .line 487
    .end local v3    # "diagnostic":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    nop

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setInitialFreezeFrames()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 110
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getFreezeFrameTimestamps()[J

    move-result-object v0

    .line 112
    .local v0, "timestamps":[J
    if-eqz v0, :cond_0

    .line 113
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 114
    .local v3, "timestamp":J
    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v5, v3, v4}, Lcom/android/car/hal/DiagnosticHalService;->getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/car/CarDiagnosticService;->setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 113
    .end local v3    # "timestamp":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "timestamps":[J
    :cond_0
    return-void
.end method

.method private setInitialLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "liveFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isLiveFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService;->getCurrentLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/CarDiagnosticService;->setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method private setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "event"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->checkFreezeFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "event"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->checkLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private startDiagnostic(II)Z
    .locals 6
    .param p1, "frameType"    # I
    .param p2, "rate"    # I

    .line 279
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v1, "starting diagnostic %s at rate %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 279
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    .line 282
    .local v0, "diagnosticHal":Lcom/android/car/hal/DiagnosticHalService;
    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "CAR.DIAGNOSTIC"

    const-string v2, "diagnosticHal not ready"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v4

    .line 287
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    return v5

    .line 302
    :cond_1
    invoke-virtual {v0, v5, p2}, Lcom/android/car/hal/DiagnosticHalService;->requestSensorStart(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->enable()V

    .line 305
    return v5

    .line 289
    :pswitch_1
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    return v5

    .line 292
    :cond_2
    invoke-virtual {v0, v4, p2}, Lcom/android/car/hal/DiagnosticHalService;->requestSensorStart(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->enable()V

    .line 295
    return v5

    .line 310
    :cond_3
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopDiagnostic(I)V
    .locals 3
    .param p1, "frameType"    # I

    .line 370
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    .line 371
    .local v0, "diagnosticHal":Lcom/android/car/hal/DiagnosticHalService;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 381
    :pswitch_0
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->disableIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService;->requestSensorStop(I)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->disableIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService;->requestSensorStop(I)V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    :goto_1
    const-string v1, "CAR.DIAGNOSTIC"

    const-string v2, "diagnosticHal not ready"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs clearFreezeFrames([J)Z
    .locals 2
    .param p1, "timestamps"    # [J

    .line 450
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 451
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isClearFreezeFramesSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 452
    return v1

    .line 453
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isSelectiveClearFreezeFramesSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    return v1

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 459
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/DiagnosticHalService;->clearFreezeFrames([J)V

    .line 460
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->clearEvents()V

    .line 461
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 667
    const-string v0, "*CarDiagnosticService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    const-string v0, "**last events for diagnostics**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "last live frame event: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 673
    :cond_0
    const-string v0, "freeze frame events: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getEvents()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/car/-$$Lambda$CarDiagnosticService$iIXtk07mwjd9ZcasP_C4yfwPh0g;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$CarDiagnosticService$iIXtk07mwjd9ZcasP_C4yfwPh0g;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 675
    const-string v0, "**clients**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 678
    .local v1, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    if-eqz v1, :cond_1

    .line 680
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {v1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->access$100(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " active diagnostics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getDiagnosticArray()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 685
    :catch_0
    move-exception v2

    .line 686
    .local v2, "e":Ljava/util/ConcurrentModificationException;
    :try_start_2
    const-string v3, "concurrent modification happened"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .end local v2    # "e":Ljava/util/ConcurrentModificationException;
    :goto_1
    goto :goto_2

    .line 689
    :cond_1
    const-string v2, "null client"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 691
    .end local v1    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :goto_2
    goto :goto_0

    .line 694
    :cond_2
    goto :goto_3

    .line 692
    :catch_1
    move-exception v0

    .line 693
    .local v0, "e":Ljava/util/ConcurrentModificationException;
    const-string v1, "concurrent modification happened"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    .end local v0    # "e":Ljava/util/ConcurrentModificationException;
    :goto_3
    const-string v0, "**diagnostic listeners**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    :try_start_3
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 698
    .local v1, "diagnostic":I
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/Listeners;

    .line 699
    .local v2, "diagnosticListeners":Lcom/android/car/Listeners;
    if-eqz v2, :cond_3

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Diagnostic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " num client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v2}, Lcom/android/car/Listeners;->getNumberOfClients()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v2}, Lcom/android/car/Listeners;->getRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 708
    .end local v1    # "diagnostic":I
    .end local v2    # "diagnosticListeners":Lcom/android/car/Listeners;
    :cond_3
    goto :goto_4

    .line 711
    :cond_4
    goto :goto_5

    .line 709
    :catch_2
    move-exception v0

    .line 710
    .restart local v0    # "e":Ljava/util/ConcurrentModificationException;
    const-string v1, "concurrent modification happened"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    .end local v0    # "e":Ljava/util/ConcurrentModificationException;
    :goto_5
    return-void
.end method

.method public getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "timestamp"    # J

    .line 442
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 443
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getEvent(J)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 444
    .local v0, "freezeFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 445
    return-object v0
.end method

.method public getFreezeFrameTimestamps()[J
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 434
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getFreezeFrameTimestamps()[J

    move-result-object v0

    .line 435
    .local v0, "timestamps":[J
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 436
    return-object v0
.end method

.method public getLatestLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->lock()V

    .line 426
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 427
    .local v0, "liveFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->unlock()V

    .line 428
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/DiagnosticHalService;->setDiagnosticListener(Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->setInitialLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 93
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->setInitialFreezeFrames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isClearFreezeFramesSupported()Z
    .locals 2

    .line 408
    nop

    .line 409
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 410
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameClearSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    return v1
.end method

.method public isFreezeFrameNotificationSupported()Z
    .locals 1

    .line 397
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v0

    return v0
.end method

.method public isGetFreezeFrameSupported()Z
    .locals 2

    .line 401
    nop

    .line 402
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 403
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameInfoSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 403
    :goto_0
    return v1
.end method

.method public isLiveFrameSupported()Z
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isLiveFrameSupported()Z

    move-result v0

    return v0
.end method

.method public isSelectiveClearFreezeFramesSupported()Z
    .locals 2

    .line 415
    nop

    .line 416
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 417
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isClearFreezeFramesSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSelectiveClearFreezeFramesSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1
.end method

.method public onDiagnosticEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->processDiagnosticData(Ljava/util/List;)V

    .line 198
    return-void
.end method

.method public registerOrUpdateDiagnosticListener(IILandroid/car/diagnostic/ICarDiagnosticEventListener;)Z
    .locals 11
    .param p1, "frameType"    # I
    .param p2, "rate"    # I
    .param p3, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "shouldStartDiagnostics":Z
    const/4 v1, 0x0

    .line 205
    .local v1, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    const/4 v2, 0x0

    .line 206
    .local v2, "oldRate":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 207
    .local v3, "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v4}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 210
    invoke-direct {p0, p3}, Lcom/android/car/CarDiagnosticService;->findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    move-result-object v4

    move-object v1, v4

    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, "diagnosticClientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 213
    new-instance v7, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    invoke-direct {v7, p0, p3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;-><init>(Lcom/android/car/CarDiagnosticService;Landroid/car/diagnostic/ICarDiagnosticEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v7

    .line 215
    :try_start_1
    invoke-interface {p3}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v1, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    nop

    .line 224
    :try_start_2
    iget-object v7, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "CAR.DIAGNOSTIC"

    const-string v9, "received RemoteException trying to register listener for %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    .line 219
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    nop

    .line 249
    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    return v6

    .line 226
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    :try_start_3
    iget-object v7, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/Listeners;

    move-object v3, v7

    .line 227
    if-nez v3, :cond_1

    .line 228
    new-instance v7, Lcom/android/car/Listeners;

    invoke-direct {v7, p2}, Lcom/android/car/Listeners;-><init>(I)V

    move-object v3, v7

    .line 229
    iget-object v7, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v0, 0x1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getRate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v7

    .line 233
    nop

    .line 234
    invoke-virtual {v3, v1}, Lcom/android/car/Listeners;->findClientWithRate(Lcom/android/car/Listeners$IListener;)Lcom/android/car/Listeners$ClientWithRate;

    move-result-object v7

    move-object v4, v7

    .line 236
    :goto_1
    if-nez v4, :cond_2

    .line 237
    new-instance v7, Lcom/android/car/Listeners$ClientWithRate;

    invoke-direct {v7, v1, p2}, Lcom/android/car/Listeners$ClientWithRate;-><init>(Lcom/android/car/Listeners$IListener;I)V

    move-object v4, v7

    .line 239
    invoke-virtual {v3, v4}, Lcom/android/car/Listeners;->addClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v4, p2}, Lcom/android/car/Listeners$ClientWithRate;->setRate(I)V

    .line 243
    :goto_2
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getRate()I

    move-result v7

    if-le v7, p2, :cond_3

    .line 244
    invoke-virtual {v3, p2}, Lcom/android/car/Listeners;->setRate(I)V

    .line 245
    const/4 v0, 0x1

    .line 247
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->addDiagnostic(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    .end local v4    # "diagnosticClientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    nop

    .line 251
    const-string v4, "CAR.DIAGNOSTIC"

    const-string v7, "shouldStartDiagnostics = %s for %s at rate %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 253
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-static {v4, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v0, :cond_5

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarDiagnosticService;->startDiagnostic(II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 260
    const-string v4, "CAR.DIAGNOSTIC"

    const-string v5, "startDiagnostic failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    :try_start_4
    invoke-virtual {v1, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->removeDiagnostic(I)V

    .line 264
    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/car/Listeners;->setRate(I)V

    goto :goto_3

    .line 267
    :cond_4
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    :goto_3
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 271
    nop

    .line 272
    return v6

    .line 270
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 275
    :cond_5
    return v5

    .line 249
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public release()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    sget-object v1, Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 143
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->disableIfNeeded()Z

    .line 145
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->disableIfNeeded()Z

    .line 146
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unregisterDiagnosticListener(ILandroid/car/diagnostic/ICarDiagnosticEventListener;)V
    .locals 11
    .param p1, "frameType"    # I
    .param p2, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "shouldStopDiagnostic":Z
    const/4 v1, 0x0

    .line 318
    .local v1, "shouldRestartDiagnostic":Z
    const/4 v2, 0x0

    .line 319
    .local v2, "newRate":I
    iget-object v3, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 321
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/car/CarDiagnosticService;->findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    move-result-object v3

    .line 322
    .local v3, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    .line 323
    const-string v7, "CAR.DIAGNOSTIC"

    const-string v8, "trying to unregister diagnostic client %s for %s which is not registered"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 325
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v7, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 329
    return-void

    .line 331
    :cond_0
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->removeDiagnostic(I)V

    .line 332
    invoke-virtual {v3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getNumberOfActiveDiagnostic()I

    move-result v7

    if-nez v7, :cond_1

    .line 333
    invoke-virtual {v3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->release()V

    .line 334
    iget-object v7, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    iget-object v7, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/Listeners;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .local v7, "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    if-nez v7, :cond_2

    .line 355
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    return-void

    .line 341
    :cond_2
    nop

    .line 342
    :try_start_2
    invoke-virtual {v7, v3}, Lcom/android/car/Listeners;->findClientWithRate(Lcom/android/car/Listeners$IListener;)Lcom/android/car/Listeners$ClientWithRate;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    .local v8, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    if-nez v8, :cond_3

    .line 355
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    return-void

    .line 346
    :cond_3
    :try_start_3
    invoke-virtual {v7, v8}, Lcom/android/car/Listeners;->removeClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V

    .line 347
    invoke-virtual {v7}, Lcom/android/car/Listeners;->getNumberOfClients()I

    move-result v9

    if-nez v9, :cond_4

    .line 348
    const/4 v0, 0x1

    .line 349
    iget-object v9, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    :cond_4
    invoke-virtual {v7}, Lcom/android/car/Listeners;->updateRate()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 351
    invoke-virtual {v7}, Lcom/android/car/Listeners;->getRate()I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v9

    .line 352
    const/4 v1, 0x1

    .line 355
    .end local v3    # "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v7    # "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    .end local v8    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    nop

    .line 357
    const-string v3, "CAR.DIAGNOSTIC"

    const-string v7, "shouldStopDiagnostic = %s, shouldRestartDiagnostic = %s for type %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 361
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    .line 359
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v0, :cond_6

    .line 363
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->stopDiagnostic(I)V

    goto :goto_1

    .line 364
    :cond_6
    if-eqz v1, :cond_7

    .line 365
    invoke-direct {p0, p1, v2}, Lcom/android/car/CarDiagnosticService;->startDiagnostic(II)Z

    .line 367
    :cond_7
    :goto_1
    return-void

    .line 355
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
