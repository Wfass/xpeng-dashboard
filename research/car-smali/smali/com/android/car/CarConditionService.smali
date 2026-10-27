.class public Lcom/android/car/CarConditionService;
.super Landroid/car/hardware/condition/ICarCondition$Stub;
.source "CarConditionService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarConditionService$CarConditionHandler;,
        Lcom/android/car/CarConditionService$Client;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CarConditionService"


# instance fields
.field private mBindIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallbackStatistics:Lcom/android/car/CallbackStatistics;

.field private mCarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarConditionService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mConditionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/car/CarConditionService$Client;",
            "Ljava/util/List<",
            "Lcom/android/car/condition/CarConditionStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/PropertyHalService;

.field private mHandler:Lcom/android/car/CarConditionService$CarConditionHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private final mMyPid:I

.field private mPropIdClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/car/CarConditionService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPropertyService:Lcom/android/car/CarPropertyService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "CAR.CONDITION"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarConditionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/hal/PropertyHalService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/car/CarPropertyService;
    .param p3, "hal"    # Lcom/android/car/hal/PropertyHalService;

    .line 60
    invoke-direct {p0}, Landroid/car/hardware/condition/ICarCondition$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mBindIdMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/android/car/CarConditionService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarConditionService$1;-><init>(Lcom/android/car/CarConditionService;)V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mCarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 61
    iput-object p2, p0, Lcom/android/car/CarConditionService;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 62
    iput-object p3, p0, Lcom/android/car/CarConditionService;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 63
    iput-object p1, p0, Lcom/android/car/CarConditionService;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/car/CallbackStatistics;

    const-string v1, "CarConditionService"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    .line 65
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0}, Lcom/android/car/CallbackStatistics;->getMyPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarConditionService;->mMyPid:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarConditionService;)Lcom/android/car/CarConditionService$CarConditionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarConditionService;

    .line 37
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mHandler:Lcom/android/car/CarConditionService$CarConditionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/CarConditionService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarConditionService;

    .line 37
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/CarConditionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarConditionService;

    .line 37
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/CarConditionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarConditionService;

    .line 37
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/CarConditionService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarConditionService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/car/CarConditionService;->unregisterConditionBinderLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/CarConditionService;ILandroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarConditionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/car/hardware/CarPropertyValue;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarConditionService;->dispatchCarLimitEvent(ILandroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private dispatchCarLimitEvent(ILandroid/car/hardware/CarPropertyValue;)V
    .locals 13
    .param p1, "propId"    # I
    .param p2, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 301
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 302
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/car/CarConditionService$Client;Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 303
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarConditionService$Client;Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 304
    .local v3, "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarConditionService$Client;

    .line 305
    .local v4, "client":Lcom/android/car/CarConditionService$Client;
    if-nez v3, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarConditionService$Client;Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;>;"
    .end local v3    # "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    .end local v4    # "client":Lcom/android/car/CarConditionService$Client;
    goto :goto_0

    .line 306
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarConditionService$Client;Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;>;"
    .restart local v3    # "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    .restart local v4    # "client":Lcom/android/car/CarConditionService$Client;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/condition/CarConditionStatus;

    .line 307
    .local v6, "status":Lcom/android/car/condition/CarConditionStatus;
    invoke-static {p1, v6, p2}, Lcom/android/car/condition/CarConditionUtils;->isConditionLimitSatisfied(ILcom/android/car/condition/CarConditionStatus;Landroid/car/hardware/CarPropertyValue;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/CarConditionService$Client;

    invoke-virtual {v7}, Lcom/android/car/CarConditionService$Client;->getListener()Landroid/car/hardware/condition/ICarConditionEventListener;

    move-result-object v7

    .line 310
    .local v7, "listener":Landroid/car/hardware/condition/ICarConditionEventListener;
    :try_start_0
    invoke-interface {v7, p2}, Landroid/car/hardware/condition/ICarConditionEventListener;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 311
    iget-object v8, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v9

    iget-object v10, v4, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    iget v11, v4, Lcom/android/car/CarConditionService$Client;->pid:I

    iget-object v12, v4, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_2

    .line 313
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 317
    .end local v6    # "status":Lcom/android/car/condition/CarConditionStatus;
    .end local v7    # "listener":Landroid/car/hardware/condition/ICarConditionEventListener;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    goto :goto_1

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarConditionService$Client;Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;>;"
    .end local v3    # "statusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    .end local v4    # "client":Lcom/android/car/CarConditionService$Client;
    :cond_2
    goto :goto_0

    .line 319
    :cond_3
    return-void
.end method

.method public static synthetic lambda$dump$0(Lcom/android/car/CarConditionService;Lcom/android/car/CarConditionService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/CarConditionService$Client;

    .line 116
    iget v0, p1, Lcom/android/car/CarConditionService$Client;->pid:I

    iget v1, p0, Lcom/android/car/CarConditionService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/car/CarConditionService$Client;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/CarConditionService$Client;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "           pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/car/CarConditionService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mCallbackBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$2(Lcom/android/car/CarConditionService;Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "cs"    # Ljava/util/Map$Entry;

    .line 112
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarConditionService$Client;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    .local v1, "prop":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clients size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarConditionService$DoCUFpnJp2SGQ37UFvmbZ1Jj_0M;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarConditionService$DoCUFpnJp2SGQ37UFvmbZ1Jj_0M;-><init>(Lcom/android/car/CarConditionService;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarConditionService$4jwYjOVcD1M6Xg4fecAvPf2ASwY;

    invoke-direct {v3, p1}, Lcom/android/car/-$$Lambda$CarConditionService$4jwYjOVcD1M6Xg4fecAvPf2ASwY;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    return-void
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/car/condition/CarConditionStatus;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/condition/CarConditionStatus;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/condition/CarConditionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 4
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "cs"    # Ljava/util/Map$Entry;

    .line 123
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarConditionService$Client;

    .line 124
    .local v0, "client":Lcom/android/car/CarConditionService$Client;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 125
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/car/CarConditionService$Client;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", condition size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v2, Lcom/android/car/-$$Lambda$CarConditionService$ayFoetcNvgb3A_U4WksFGq-8jbI;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$CarConditionService$ayFoetcNvgb3A_U4WksFGq-8jbI;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 128
    return-void
.end method

.method private unregisterConditionBinderLocked(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "callBinder"    # Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mBindIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 238
    .local v0, "propIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarConditionService$Client;

    .line 239
    .local v1, "client":Lcom/android/car/CarConditionService$Client;
    if-nez v1, :cond_0

    .line 240
    const-string v2, "CAR.CONDITION"

    const-string v3, "unregisterConditionBinderLocked: client was not previously registered."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    if-eqz v0, :cond_3

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 245
    .local v3, "propId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 246
    .local v4, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarConditionService$Client;>;"
    if-nez v4, :cond_1

    .line 247
    const-string v5, "CAR.CONDITION"

    const-string v6, "unregisterListenerBinderLocked: propertyClients was not previously registered."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    iget-object v5, p0, Lcom/android/car/CarConditionService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/car/CarConditionService;->mCarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v5, v6, v7}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 253
    iget-object v5, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v3    # "propId":Ljava/lang/Integer;
    .end local v4    # "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarConditionService$Client;>;"
    :cond_2
    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v1}, Lcom/android/car/CarConditionService$Client;->release()V

    .line 258
    iget-object v2, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v3, v1, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    iget v4, v1, Lcom/android/car/CarConditionService$Client;->pid:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/car/CallbackStatistics;->removeProcess(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 260
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 107
    const-string v0, "**dump CarConditionService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPropIdClientMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/car/-$$Lambda$CarConditionService$sjkukUkgOLkavHg9812tt0eawTo;

    invoke-direct {v2, p0, p1}, Lcom/android/car/-$$Lambda$CarConditionService$sjkukUkgOLkavHg9812tt0eawTo;-><init>(Lcom/android/car/CarConditionService;Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ConditionInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/car/-$$Lambda$CarConditionService$8RbKPXRzHClipvNyISW3f3Nnkpc;

    invoke-direct {v2, p1}, Lcom/android/car/-$$Lambda$CarConditionService$8RbKPXRzHClipvNyISW3f3Nnkpc;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v1, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarConditionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v0, Lcom/android/car/CarConditionService$CarConditionHandler;

    iget-object v1, p0, Lcom/android/car/CarConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarConditionService$CarConditionHandler;-><init>(Lcom/android/car/CarConditionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/CarConditionService;->mHandler:Lcom/android/car/CarConditionService$CarConditionHandler;

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 16
    .param p1, "propId"    # Ljava/util/List;
    .param p2, "condition"    # Landroid/car/hardware/condition/CarConditionInfo;
    .param p3, "listener"    # Landroid/car/hardware/condition/ICarConditionEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 136
    move-object/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 137
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 138
    .local v5, "pid":I
    if-eqz v3, :cond_d

    .line 144
    if-eqz v2, :cond_c

    .line 150
    if-eqz p1, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 156
    invoke-interface/range {p3 .. p3}, Landroid/car/hardware/condition/ICarConditionEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 158
    .local v6, "listenerBinder":Landroid/os/IBinder;
    move-object/from16 v7, p1

    .line 162
    .local v7, "propIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, v1, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 163
    :try_start_0
    iget-object v0, v1, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarConditionService$Client;

    .line 164
    .local v0, "client":Lcom/android/car/CarConditionService$Client;
    if-nez v0, :cond_0

    .line 165
    new-instance v9, Lcom/android/car/CarConditionService$Client;

    invoke-direct {v9, v1, v3}, Lcom/android/car/CarConditionService$Client;-><init>(Lcom/android/car/CarConditionService;Landroid/car/hardware/condition/ICarConditionEventListener;)V

    move-object v0, v9

    .line 167
    :cond_0
    iget-object v9, v0, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    .line 168
    invoke-static {v2, v9}, Lcom/android/car/condition/CarConditionStatus;->createFromCarConditionInfo(Landroid/car/hardware/condition/CarConditionInfo;Ljava/lang/String;)Lcom/android/car/condition/CarConditionStatus;

    move-result-object v9

    .line 169
    .local v9, "conditionStatus":Lcom/android/car/condition/CarConditionStatus;
    iget-object v10, v1, Lcom/android/car/CarConditionService;->mBindIdMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 170
    .local v10, "propIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v10, :cond_1

    .line 171
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v11

    .line 172
    iget-object v11, v1, Lcom/android/car/CarConditionService;->mBindIdMap:Ljava/util/Map;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v11, v1, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 176
    .local v11, "conditionStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    if-nez v11, :cond_2

    .line 177
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v11, v12

    .line 178
    iget-object v12, v1, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 181
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v9    # "conditionStatus":Lcom/android/car/condition/CarConditionStatus;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .end local v0    # "client":Lcom/android/car/CarConditionService$Client;
    .local v8, "client":Lcom/android/car/CarConditionService$Client;
    move-object v9, v11

    .line 184
    .end local v11    # "conditionStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    .local v9, "conditionStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 185
    .local v12, "id":I
    const/4 v13, 0x0

    .line 186
    .local v13, "register":Z
    iget-object v14, v1, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 187
    :try_start_1
    iget-object v0, v1, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarConditionService$Client;>;"
    if-nez v0, :cond_4

    .line 189
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v0, v2

    .line 190
    iget-object v2, v1, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v2, 0x1

    .line 193
    .end local v13    # "register":Z
    .local v2, "register":Z
    move v13, v2

    .end local v2    # "register":Z
    .restart local v13    # "register":Z
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 194
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarConditionService$Client;>;"
    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-eqz v13, :cond_6

    .line 198
    iget-object v0, v1, Lcom/android/car/CarConditionService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/car/CarConditionService;->mCarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v0, v12, v2, v3}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    goto :goto_2

    .line 200
    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 202
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :try_start_2
    iget-object v0, v1, Lcom/android/car/CarConditionService;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3, v3}, Lcom/android/car/hal/PropertyHalService;->getProperty(IIZ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 203
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_7

    .line 204
    new-instance v14, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {v14, v3, v0}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    move-object v3, v14

    .line 206
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_7
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/car/CarLog;->isGetLogEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 210
    const-string v3, "CAR.CONDITION"

    const-string v14, "get prop data failed, won\'t listener"

    invoke-static {v3, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 215
    iget-object v0, v1, Lcom/android/car/CarConditionService;->mHandler:Lcom/android/car/CarConditionService$CarConditionHandler;

    invoke-virtual {v0, v2}, Lcom/android/car/CarConditionService$CarConditionHandler;->sendHalEvents(Ljava/util/List;)V

    .line 218
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    .end local v12    # "id":I
    .end local v13    # "register":Z
    :cond_9
    :goto_2
    nop

    .line 184
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_0

    .line 196
    .restart local v12    # "id":I
    .restart local v13    # "register":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 219
    .end local v12    # "id":I
    .end local v13    # "register":Z
    :cond_a
    return-void

    .line 183
    .end local v8    # "client":Lcom/android/car/CarConditionService$Client;
    .end local v9    # "conditionStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/condition/CarConditionStatus;>;"
    .end local v10    # "propIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 151
    .end local v6    # "listenerBinder":Landroid/os/IBinder;
    .end local v7    # "propIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client (uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") registerCondition: list is invalid!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAR.CONDITION"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "list is invalid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client (uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") registerCondition: condition is null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAR.CONDITION"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "condition cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client (uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") registerCondition: Listener is null!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAR.CONDITION"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarConditionService$Client;

    .line 80
    .local v1, "c":Lcom/android/car/CarConditionService$Client;
    invoke-virtual {v1}, Lcom/android/car/CarConditionService$Client;->release()V

    .line 81
    .end local v1    # "c":Lcom/android/car/CarConditionService$Client;
    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 83
    .local v1, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/CarConditionService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/CarConditionService;->mCarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 84
    .end local v1    # "id":Ljava/lang/Integer;
    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mConditionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mBindIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0}, Lcom/android/car/CallbackStatistics;->release()V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarConditionService;->mHandler:Lcom/android/car/CarConditionService$CarConditionHandler;

    .line 94
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 99
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    goto :goto_2

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "CAR.UPDATETIME"

    const-string v4, "Timeout while joining for handler thread to join."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 95
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/car/hardware/condition/ICarConditionEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Landroid/car/hardware/condition/ICarConditionEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 231
    .local v0, "callBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarConditionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/CarConditionService;->unregisterConditionBinderLocked(Landroid/os/IBinder;)V

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    .end local v0    # "callBinder":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 225
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 226
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client (uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") unregisterListener: listener is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.CONDITION"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
