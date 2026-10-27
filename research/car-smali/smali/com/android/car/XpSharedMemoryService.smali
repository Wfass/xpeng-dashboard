.class public Lcom/android/car/XpSharedMemoryService;
.super Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;
.source "XpSharedMemoryService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/XpSharedMemoryService$Client;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_INTERVAL_MS:Ljava/time/Duration;

.field private static final TAG:Ljava/lang/String; = "XpSharedMemoryService"


# instance fields
.field private final mCallbackStatistics:Lcom/android/car/CallbackStatistics;

.field private final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/XpSharedMemoryService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private final mLock:Ljava/lang/Object;

.field private final mMyPid:I

.field private final mPropIdClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/car/XpSharedMemoryService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProperties:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-wide/16 v0, 0x28

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/car/XpSharedMemoryService;->MAX_INTERVAL_MS:Ljava/time/Duration;

    .line 44
    const-string v0, "jni_xpsharedmemory"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 80
    invoke-direct {p0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Integer;

    .line 54
    const v2, 0x2170380b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    const v2, 0x2170380c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 56
    const v2, 0x2170380d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 57
    const v2, 0x2170380e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 58
    const v2, 0x2170380f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 59
    const v2, 0x21703810

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 60
    const v2, 0x21703812

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 61
    const v2, 0x21703813

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    .line 62
    const v2, 0x2170161d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    .line 63
    const v2, 0x2170381f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 64
    const v2, 0x2170384f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v1, v4

    .line 65
    const v2, 0x2170a267

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v1, v4

    .line 66
    const v2, 0x21703862

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v1, v4

    .line 67
    const v2, 0x21703865

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xd

    aput-object v2, v1, v4

    .line 68
    const v2, 0x21703866

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xe

    aput-object v2, v1, v4

    .line 69
    const v2, 0x21703870

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xf

    aput-object v2, v1, v4

    .line 70
    const v2, 0x2170387a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x10

    aput-object v2, v1, v4

    .line 71
    const v2, 0x21703873

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    aput-object v2, v1, v4

    .line 72
    const v2, 0x21703879

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12

    aput-object v2, v1, v4

    .line 73
    const v2, 0x21703883

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x13

    aput-object v2, v1, v4

    .line 74
    const v2, 0x21703884

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x14

    aput-object v2, v1, v4

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mProperties:Landroid/util/ArraySet;

    .line 81
    iput-object p1, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/car/XpSharedMemoryService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 83
    new-instance v0, Lcom/android/car/CallbackStatistics;

    const-string v1, "XpSharedMemoryService"

    invoke-direct {v0, v1, v3}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    .line 84
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0}, Lcom/android/car/CallbackStatistics;->getMyPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/XpSharedMemoryService;->mMyPid:I

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/XpSharedMemoryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;

    .line 37
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/XpSharedMemoryService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;

    .line 37
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/XpSharedMemoryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;

    .line 37
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/XpSharedMemoryService;ILandroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/car/XpSharedMemoryService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/car/XpSharedMemoryService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/car/XpSharedMemoryService;->removeListener(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/XpSharedMemoryService;)Lcom/android/car/CallbackStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService;

    .line 37
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    return-object v0
.end method

.method private native addListener(I)V
.end method

.method public static native initWithMmapSize(J)V
.end method

.method static synthetic lambda$dump$0(Lcom/android/car/XpSharedMemoryService$Client;)I
    .locals 1
    .param p0, "c"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 125
    iget v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    return v0
.end method

.method public static synthetic lambda$dump$1(Lcom/android/car/XpSharedMemoryService;Lcom/android/car/XpSharedMemoryService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 125
    iget v0, p1, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    iget v1, p0, Lcom/android/car/XpSharedMemoryService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/car/XpSharedMemoryService$Client;)V
    .locals 0
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 125
    invoke-virtual {p1, p0}, Lcom/android/car/XpSharedMemoryService$Client;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$dump$3(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "o"    # Ljava/util/Map$Entry;

    .line 128
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dump$4(Lcom/android/car/XpSharedMemoryService;Lcom/android/car/XpSharedMemoryService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 134
    iget v0, p1, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    iget v1, p0, Lcom/android/car/XpSharedMemoryService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$5(Ljava/io/PrintWriter;Lcom/android/car/XpSharedMemoryService$Client;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mListenerBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p1}, Lcom/android/car/XpSharedMemoryService$Client;->access$000(Lcom/android/car/XpSharedMemoryService$Client;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$6(Lcom/android/car/XpSharedMemoryService;Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "cs"    # Ljava/util/Map$Entry;

    .line 130
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    .local v1, "prop":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Listeners size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$XpSharedMemoryService$UyxktOfSCv944N4baZKzonSU2VU;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$UyxktOfSCv944N4baZKzonSU2VU;-><init>(Lcom/android/car/XpSharedMemoryService;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$XpSharedMemoryService$CZMbZiX2BvrirCXdaRthAkHUHSs;

    invoke-direct {v3, p1}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$CZMbZiX2BvrirCXdaRthAkHUHSs;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativeQueueBuffer(III)V
.end method

.method private native removeListener(I)V
.end method

.method private unregisterListenerBinderLocked(ILandroid/os/IBinder;)Z
    .locals 9
    .param p1, "propId"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 379
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpSharedMemoryService$Client;

    .line 380
    .local v0, "client":Lcom/android/car/XpSharedMemoryService$Client;
    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 382
    .local v1, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    .line 383
    .local v2, "pid":I
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/android/car/XpSharedMemoryService$Client;->uid:I

    .line 384
    .local v3, "uid":I
    :goto_1
    iget-object v4, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "processName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 394
    :cond_2
    if-eqz v0, :cond_6

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 400
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    const-string v5, "XpSharedMemoryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Client (uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") call unregisterListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") listener:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0, p1}, Lcom/android/car/XpSharedMemoryService$Client;->removeProperty(I)V

    .line 412
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/4 v5, 0x1

    return v5

    .line 417
    :cond_4
    return v6

    .line 406
    :cond_5
    const-string v5, "XpSharedMemoryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Client (uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") unregistering listener was not registered for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v6

    .line 395
    :cond_6
    :goto_2
    const-string v5, "XpSharedMemoryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Client (uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") unregistering listener was not previously registered."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v6

    .line 388
    :cond_7
    :goto_3
    const-string v5, "XpSharedMemoryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Client (uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") unregistering "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not in the config list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v6
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 123
    const-string v0, "**dump XpSharedMemoryService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Client Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;->INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpSharedMemoryService$4Frx6uttZJHCk2zLNHU5umnxMuk;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$4Frx6uttZJHCk2zLNHU5umnxMuk;-><init>(Lcom/android/car/XpSharedMemoryService;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6-72u8eaUaGkB4pq1oPQIqWR__w;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6-72u8eaUaGkB4pq1oPQIqWR__w;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPropertyToClientsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;->INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;

    .line 129
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpSharedMemoryService$TZp-n4xL2ove6lIt8037gzyVbY0;

    invoke-direct {v1, p0, p1}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$TZp-n4xL2ove6lIt8037gzyVbY0;-><init>(Lcom/android/car/XpSharedMemoryService;Ljava/io/PrintWriter;)V

    .line 129
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 138
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 139
    return-void
.end method

.method public getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;
    .locals 8

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v1

    .line 145
    .local v1, "propertyHal":Lcom/android/car/hal/PropertyHalService;
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v3, "configTemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/hardware/CarPropertyConfig<*>;>;"
    invoke-virtual {v1}, Lcom/android/car/hal/PropertyHalService;->getPropertyList()Ljava/util/Map;

    move-result-object v4

    .line 151
    .local v4, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/hardware/CarPropertyConfig<*>;>;"
    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService;->mProperties:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 152
    .local v6, "propertyId":Ljava/lang/Integer;
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/car/hardware/CarPropertyConfig;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v6    # "propertyId":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    iput-object v3, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    .line 158
    .end local v3    # "configTemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/hardware/CarPropertyConfig<*>;>;"
    .end local v4    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/hardware/CarPropertyConfig<*>;>;"
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 161
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig;

    .line 162
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    .line 163
    .local v4, "propertyId":I
    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/car/ICarImpl;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    .end local v4    # "propertyId":I
    :cond_4
    goto :goto_2

    .line 169
    :cond_5
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/car/hardware/CarPropertyConfig;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/car/hardware/CarPropertyConfig;

    return-object v2
.end method

.method public init()V
    .locals 2

    .line 102
    const-string v0, "XpSharedMemoryService"

    const-string v1, "start to call native..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/car/XpSharedMemoryService;->nativeInit()V

    .line 104
    return-void
.end method

.method public onDataCallback(JIII)V
    .locals 26
    .param p1, "timestamp"    # J
    .param p3, "propId"    # I
    .param p4, "fd"    # I
    .param p5, "count"    # I

    move-object/from16 v1, p0

    move-wide/from16 v10, p1

    move/from16 v12, p3

    .line 198
    iget-object v2, v1, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v0, v1, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    .line 200
    .local v13, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 201
    invoke-static/range {p3 .. p3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "propertyDescription":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 204
    const-string v0, "XpSharedMemoryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataCallback: no listener registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/car/CarLog;->isSharedMemoryPerfLogEnable()Z

    move-result v15

    .line 209
    .local v15, "perfLogEnable":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sub-long/2addr v2, v10

    .line 211
    .local v2, "timeCost":J
    sget-object v0, Lcom/android/car/XpSharedMemoryService;->MAX_INTERVAL_MS:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 212
    const-string v0, "XpSharedMemoryService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataCallback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", timestamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " vhal to carservice cost too much time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v15, :cond_2

    .line 216
    const-string v0, "XpSharedMemoryService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataCallback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", timestamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " val to carservice cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 224
    .local v9, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/XpSharedMemoryService$Client;

    .line 225
    .local v4, "c":Lcom/android/car/XpSharedMemoryService$Client;
    invoke-virtual {v4}, Lcom/android/car/XpSharedMemoryService$Client;->getListenerBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 226
    .local v5, "listenerBinder":Landroid/os/IBinder;
    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 227
    invoke-virtual {v4}, Lcom/android/car/XpSharedMemoryService$Client;->getListener()Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-result-object v6

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v4    # "c":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v5    # "listenerBinder":Landroid/os/IBinder;
    :cond_3
    goto :goto_1

    .line 231
    :cond_4
    :try_start_1
    invoke-static/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    move-object v8, v0

    .line 232
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v8, :cond_e

    .line 234
    const-wide/16 v4, 0x0

    .line 235
    .local v4, "start":J
    :try_start_2
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-wide/from16 v16, v2

    .end local v2    # "timeCost":J
    .local v16, "timeCost":J
    :goto_2
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-object v3, v0

    .line 236
    .local v3, "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    if-eqz v3, :cond_c

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "client":Lcom/android/car/XpSharedMemoryService$Client;
    invoke-interface {v3}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 239
    .local v2, "listenerBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_5

    .line 240
    :try_start_4
    iget-object v7, v1, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/XpSharedMemoryService$Client;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v7

    goto :goto_3

    .line 292
    .end local v0    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v2    # "listenerBinder":Landroid/os/IBinder;
    .end local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .end local v4    # "start":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v4, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    const/4 v7, 0x0

    goto/16 :goto_15

    .line 231
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-wide/from16 v2, v16

    goto/16 :goto_13

    .line 243
    .restart local v0    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v2    # "listenerBinder":Landroid/os/IBinder;
    .restart local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v4    # "start":J
    :cond_5
    move-object v7, v0

    .end local v0    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .local v7, "client":Lcom/android/car/XpSharedMemoryService$Client;
    :goto_3
    :try_start_5
    const-string v0, " "
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 244
    .local v0, "clientDescriptionString":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 245
    :try_start_6
    invoke-virtual {v7}, Lcom/android/car/XpSharedMemoryService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v19
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v0, v19

    goto :goto_6

    .line 277
    .end local v0    # "clientDescriptionString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v19, v4

    .end local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .end local v4    # "start":J
    .end local v7    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v16    # "timeCost":J
    .local v2, "timeCost":J
    .local v13, "client":Lcom/android/car/XpSharedMemoryService$Client;
    .local v18, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .local v19, "start":J
    .local v21, "listenerBinder":Landroid/os/IBinder;
    .local v22, "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .local v24, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .local v25, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_4
    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-wide/from16 v2, v16

    move-object v13, v7

    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 247
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "clientDescriptionString":Ljava/lang/String;
    .local v2, "listenerBinder":Landroid/os/IBinder;
    .restart local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v4    # "start":J
    .restart local v7    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .local v13, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v16    # "timeCost":J
    :cond_6
    :goto_6
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 248
    .end local v4    # "start":J
    .restart local v19    # "start":J
    if-eqz v15, :cond_7

    .line 249
    :try_start_8
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v21, v2

    :try_start_9
    const-string v2, "++onDataCallback "

    .end local v2    # "listenerBinder":Landroid/os/IBinder;
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 277
    .end local v0    # "clientDescriptionString":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    goto :goto_4

    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v2    # "listenerBinder":Landroid/os/IBinder;
    :catch_3
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-wide/from16 v2, v16

    move-object v13, v7

    const/4 v7, 0x0

    .end local v2    # "listenerBinder":Landroid/os/IBinder;
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    goto/16 :goto_b

    .line 254
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v0    # "clientDescriptionString":Ljava/lang/String;
    .restart local v2    # "listenerBinder":Landroid/os/IBinder;
    :cond_7
    move-object/from16 v21, v2

    .end local v2    # "listenerBinder":Landroid/os/IBinder;
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    :goto_7
    move-object v2, v3

    move-object/from16 v22, v3

    move-wide v3, v10

    .end local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    move-object/from16 v23, v6

    move-wide/from16 v5, v19

    move-object/from16 v24, v13

    move-object v13, v7

    move v7, v12

    .end local v7    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .local v13, "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    move-object/from16 v25, v8

    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v18, v9

    move/from16 v9, p5

    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    :try_start_a
    invoke-interface/range {v2 .. v9}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->onDataAvailable(JJILandroid/os/ParcelFileDescriptor;I)V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    sub-long v2, v2, v19

    .line 256
    .end local v16    # "timeCost":J
    .local v2, "timeCost":J
    :try_start_b
    sget-object v4, Lcom/android/car/XpSharedMemoryService;->MAX_INTERVAL_MS:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    cmp-long v4, v2, v4

    if-lez v4, :cond_8

    .line 257
    :try_start_c
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " carservice to app cost too much time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 292
    .end local v0    # "clientDescriptionString":Ljava/lang/String;
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v2

    move-object/from16 v4, v25

    const/4 v7, 0x0

    goto/16 :goto_14

    .line 262
    .restart local v0    # "clientDescriptionString":Ljava/lang/String;
    .restart local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :cond_8
    if-eqz v15, :cond_9

    .line 263
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timestamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " carservice to app cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_9
    :goto_8
    if-eqz v13, :cond_a

    .line 270
    iget-object v4, v1, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v5, v13, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    iget v6, v13, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    .line 272
    invoke-static {v13}, Lcom/android/car/XpSharedMemoryService$Client;->access$000(Lcom/android/car/XpSharedMemoryService$Client;)Landroid/os/IBinder;

    move-result-object v7

    .line 270
    invoke-virtual {v4, v12, v5, v6, v7}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 286
    const/4 v7, 0x0

    goto :goto_9

    .line 274
    :cond_a
    :try_start_d
    iget-object v4, v1, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    const-string v5, ""
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v6, -0x1

    const/4 v7, 0x0

    :try_start_e
    invoke-virtual {v4, v12, v5, v6, v7}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 286
    .end local v0    # "clientDescriptionString":Ljava/lang/String;
    :goto_9
    nop

    .line 288
    .end local v2    # "timeCost":J
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v4    # "start":J
    .restart local v16    # "timeCost":J
    :goto_a
    move-wide/from16 v16, v2

    move-wide/from16 v4, v19

    goto/16 :goto_e

    .line 277
    .end local v4    # "start":J
    .end local v16    # "timeCost":J
    .restart local v2    # "timeCost":J
    .restart local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catch_4
    move-exception v0

    goto :goto_b

    .line 292
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto :goto_c

    .line 277
    .restart local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catch_5
    move-exception v0

    goto/16 :goto_5

    .line 292
    .end local v2    # "timeCost":J
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v16    # "timeCost":J
    :catchall_3
    move-exception v0

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v4, v25

    goto/16 :goto_15

    .line 231
    :catch_6
    move-exception v0

    move-object v7, v0

    move-wide/from16 v2, v16

    goto :goto_d

    .line 277
    .restart local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catch_7
    move-exception v0

    const/4 v7, 0x0

    move-wide/from16 v2, v16

    goto :goto_b

    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v2, "listenerBinder":Landroid/os/IBinder;
    .restart local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v4    # "start":J
    .restart local v7    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .local v13, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :catch_8
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-object v13, v7

    const/4 v7, 0x0

    move-wide/from16 v19, v4

    move-wide/from16 v2, v16

    .line 278
    .end local v3    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .end local v4    # "start":J
    .end local v7    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v16    # "timeCost":J
    .local v0, "ex":Landroid/os/RemoteException;
    .local v2, "timeCost":J
    .local v13, "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_b
    if-eqz v13, :cond_b

    .line 279
    :try_start_f
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataAvailable calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v13}, Lcom/android/car/XpSharedMemoryService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 292
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v19    # "start":J
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    :catchall_4
    move-exception v0

    .end local v2    # "timeCost":J
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "timeCost":J
    :goto_c
    move-wide/from16 v16, v2

    move-object/from16 v4, v25

    goto/16 :goto_14

    .line 231
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "timeCost":J
    .restart local v2    # "timeCost":J
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_9
    move-exception v0

    move-object v7, v0

    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_d
    move-object/from16 v4, v25

    goto/16 :goto_13

    .line 283
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "ex":Landroid/os/RemoteException;
    .restart local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .restart local v19    # "start":J
    .restart local v21    # "listenerBinder":Landroid/os/IBinder;
    .restart local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_b
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataAvailable failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v13    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v21    # "listenerBinder":Landroid/os/IBinder;
    .end local v22    # "listener":Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    goto/16 :goto_a

    .line 288
    .end local v2    # "timeCost":J
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v19    # "start":J
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v4, "start":J
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .local v13, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v16    # "timeCost":J
    :cond_c
    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    const/4 v7, 0x0

    .line 235
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_e
    move-object/from16 v9, v18

    move-object/from16 v6, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v25

    goto/16 :goto_2

    .line 289
    .end local v4    # "start":J
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :cond_d
    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    .line 292
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    move-wide/from16 v2, v16

    goto :goto_11

    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v8

    goto :goto_f

    .line 231
    :catch_a
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-object v7, v0

    move-object v4, v8

    move-wide/from16 v2, v16

    goto :goto_10

    .line 292
    .end local v16    # "timeCost":J
    .restart local v2    # "timeCost":J
    :catchall_6
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    const/4 v7, 0x0

    move-wide/from16 v16, v2

    move-object v4, v8

    move-object v2, v0

    .end local v2    # "timeCost":J
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "timeCost":J
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_f
    goto :goto_15

    .line 231
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "timeCost":J
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "timeCost":J
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :catch_b
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    move-object v7, v0

    move-object v4, v8

    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_10
    goto :goto_13

    .line 290
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :cond_e
    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    const/4 v7, 0x0

    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_10
    const-string v0, "XpSharedMemoryService"

    const-string v4, "Cannot fetch pfd"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 292
    :goto_11
    move-object/from16 v4, v25

    if-eqz v4, :cond_f

    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_12

    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_c
    move-exception v0

    goto :goto_17

    .line 295
    :cond_f
    :goto_12
    goto :goto_18

    .line 292
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_7
    move-exception v0

    move-object/from16 v4, v25

    move-wide/from16 v16, v2

    move-object v2, v0

    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_15

    .line 231
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_d
    move-exception v0

    move-object/from16 v4, v25

    move-object v7, v0

    .end local v25    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_13
    :try_start_12
    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 292
    :catchall_8
    move-exception v0

    move-wide/from16 v16, v2

    .end local v2    # "timeCost":J
    .restart local v16    # "timeCost":J
    :goto_14
    move-object v2, v0

    :goto_15
    if-eqz v4, :cond_11

    if-eqz v7, :cond_10

    :try_start_13
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_16

    :catch_e
    move-exception v0

    move-object v3, v0

    :try_start_14
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_10
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_11
    :goto_16
    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_f
    move-exception v0

    move-wide/from16 v2, v16

    goto :goto_17

    .end local v16    # "timeCost":J
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .restart local v2    # "timeCost":J
    .restart local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :catch_10
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v24, v13

    .line 293
    .end local v9    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v13    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .restart local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :goto_17
    const-string v4, "XpSharedMemoryService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataAvailable calling failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return-void

    .line 200
    .end local v2    # "timeCost":J
    .end local v14    # "propertyDescription":Ljava/lang/String;
    .end local v15    # "perfLogEnable":Z
    .end local v18    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;>;"
    .end local v24    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0
.end method

.method public queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "prop"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "size"    # I

    .line 174
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 179
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 180
    .local v0, "fd":I
    const-string v1, "XpSharedMemoryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queueMemoryBuffer fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/CarLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :try_start_0
    const-string v1, "XpSharedMemoryService"

    const-string v2, "native transfer begin"

    invoke-static {v1, v2}, Lcom/android/car/CarLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, v0, p3}, Lcom/android/car/XpSharedMemoryService;->nativeQueueBuffer(III)V

    .line 184
    const-string v1, "XpSharedMemoryService"

    const-string v2, "native transfer end"

    invoke-static {v1, v2}, Lcom/android/car/CarLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpSharedMemoryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot queue the buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    goto :goto_1

    .line 190
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "XpSharedMemoryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot close the pfd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const-string v1, "XpSharedMemoryService"

    const-string v2, "end"

    invoke-static {v1, v2}, Lcom/android/car/CarLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 176
    .end local v0    # "fd":I
    :cond_0
    const-string v0, "XpSharedMemoryService"

    const-string v1, "invalid pfd or size"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected pfd or size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 10
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    .line 300
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 301
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 302
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "processName":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 309
    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 317
    :cond_0
    const-string v3, "XpSharedMemoryService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Client (uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") call registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/XpSharedMemoryService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v4}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 323
    .local v3, "listenerBinder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 324
    .local v4, "client":Lcom/android/car/XpSharedMemoryService$Client;
    const/4 v5, 0x0

    .line 325
    .local v5, "shouldAddListener":Z
    iget-object v6, p0, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 327
    :try_start_0
    iget-object v7, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/XpSharedMemoryService$Client;

    move-object v4, v7

    .line 328
    if-nez v4, :cond_1

    .line 329
    new-instance v7, Lcom/android/car/XpSharedMemoryService$Client;

    invoke-direct {v7, p0, p2}, Lcom/android/car/XpSharedMemoryService$Client;-><init>(Lcom/android/car/XpSharedMemoryService;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;)V

    move-object v4, v7

    .line 331
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/car/XpSharedMemoryService$Client;->addProperty(I)V

    .line 333
    iget-object v7, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 335
    .local v7, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    if-nez v7, :cond_2

    .line 336
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v7, v8

    .line 337
    iget-object v8, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const/4 v5, 0x1

    .line 341
    :cond_2
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 342
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v7    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    if-eqz v5, :cond_4

    .line 348
    const-string v6, "XpSharedMemoryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "native register Listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, p1}, Lcom/android/car/XpSharedMemoryService;->addListener(I)V

    .line 351
    :cond_4
    return-void

    .line 345
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 311
    .end local v3    # "listenerBinder":Landroid/os/IBinder;
    .end local v4    # "client":Lcom/android/car/XpSharedMemoryService$Client;
    .end local v5    # "shouldAddListener":Z
    :cond_5
    :goto_0
    const-string v3, "XpSharedMemoryService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Client (uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not in the config list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 304
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Client (uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") registerListener: Listener is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XpSharedMemoryService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public release()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/car/XpSharedMemoryService;->nativeDestroy()V

    .line 109
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/car/XpSharedMemoryService$Client;

    .line 110
    .local v1, "c":Lcom/android/car/XpSharedMemoryService$Client;
    invoke-virtual {v1}, Lcom/android/car/XpSharedMemoryService$Client;->release()V

    .line 111
    .end local v1    # "c":Lcom/android/car/XpSharedMemoryService$Client;
    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0}, Lcom/android/car/CallbackStatistics;->release()V

    .line 115
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

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

    check-cast v1, Ljava/util/List;

    .line 116
    .local v1, "c":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    .end local v1    # "c":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpSharedMemoryService$Client;>;"
    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method

.method public unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    .line 355
    if-eqz p2, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 367
    .local v0, "listenerBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 368
    .local v1, "shouldRemove":Z
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/XpSharedMemoryService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)Z

    move-result v3

    move v1, v3

    .line 370
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    if-eqz v1, :cond_0

    .line 373
    const-string v2, "XpSharedMemoryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native unregister Listener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0, p1}, Lcom/android/car/XpSharedMemoryService;->removeListener(I)V

    .line 376
    :cond_0
    return-void

    .line 370
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 356
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    .end local v1    # "shouldRemove":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 357
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 358
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client (uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") unregisterListener: Listener is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XpSharedMemoryService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
