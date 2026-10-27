.class public Lcom/android/car/CallbackStatistics;
.super Ljava/lang/Object;
.source "CallbackStatistics.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CallbackStatistics$ProcessInfo;
    }
.end annotation


# static fields
.field public static final MONITOR_PROCESS_CALL_BACK_DELAY_MIN:Ljava/time/Duration;

.field public static final TAG:Ljava/lang/String; = "-Statistics"


# instance fields
.field private volatile isBlock:Z

.field private final mClientProcessInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/CallbackStatistics$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientPropMethodCallCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mMyPid:I

.field private final mPeriod:J

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/car/CallbackStatistics;->MONITOR_PROCESS_CALL_BACK_DELAY_MIN:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cyclicCheckCallCount"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientProcessInfoMap:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/android/car/CallbackStatistics;->MONITOR_PROCESS_CALL_BACK_DELAY_MIN:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/CallbackStatistics;->mPeriod:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CallbackStatistics;->isBlock:Z

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CallbackStatistics;->mMyPid:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Statistics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    .line 44
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Monitor callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    .line 49
    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/-$$Lambda$CallbackStatistics$NRe21MeNizKCbPWTlBD1rvjmgMQ;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$CallbackStatistics$NRe21MeNizKCbPWTlBD1rvjmgMQ;-><init>(Lcom/android/car/CallbackStatistics;)V

    iget-wide v3, p0, Lcom/android/car/CallbackStatistics;->mPeriod:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .end local v0    # "thread":Landroid/os/HandlerThread;
    goto :goto_0

    .line 51
    :cond_0
    iput-object v1, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 54
    :cond_1
    iput-object v1, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    .line 56
    :goto_0
    return-void
.end method

.method private checkClientsCallback()V
    .locals 5

    .line 161
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/car/CallbackStatistics;->isBlock:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/car/CallbackStatistics;->mPeriod:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    .line 165
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CallbackStatistics$zX4i0bF_fgmvb6JRVMBEHlu9JBE;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$zX4i0bF_fgmvb6JRVMBEHlu9JBE;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;

    .line 166
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$CallbackStatistics$R8aE88Z140TFfTli76Hdc3YzhU4;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$R8aE88Z140TFfTli76Hdc3YzhU4;

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 167
    .local v0, "totalCallback":J
    iget-object v2, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total callback count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CallbackStatistics$Be2wkbQ3a22EU9jht7rdi7_3lNU;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CallbackStatistics$Be2wkbQ3a22EU9jht7rdi7_3lNU;-><init>(Lcom/android/car/CallbackStatistics;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "totalCallback":J
    :cond_0
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/-$$Lambda$CallbackStatistics$NRe21MeNizKCbPWTlBD1rvjmgMQ;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CallbackStatistics$NRe21MeNizKCbPWTlBD1rvjmgMQ;-><init>(Lcom/android/car/CallbackStatistics;)V

    iget-wide v2, p0, Lcom/android/car/CallbackStatistics;->mPeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_1
    return-void
.end method

.method private static covertPropMethodCallCountMapToString(Ljava/util/Map;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 60
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    const/4 v4, 0x1

    .line 70
    .local v4, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 71
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 72
    .local v6, "key":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 73
    .local v7, "value":J
    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x7d

    if-nez v9, :cond_1

    .line 75
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 77
    .local v3, "result":[Ljava/lang/String;
    return-object v3

    .line 80
    .end local v3    # "result":[Ljava/lang/String;
    :cond_1
    rem-int/lit8 v9, v4, 0x28

    if-nez v9, :cond_2

    .line 81
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v9

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    .end local v6    # "key":I
    .end local v7    # "value":J
    goto :goto_0
.end method

.method public static synthetic lambda$BD_axBP7_ZmJkVDm9udBYEo_14w(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$NRe21MeNizKCbPWTlBD1rvjmgMQ(Lcom/android/car/CallbackStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CallbackStatistics;->checkClientsCallback()V

    return-void
.end method

.method public static synthetic lambda$R8aE88Z140TFfTli76Hdc3YzhU4(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$addPropMethodCallCount$0(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/car/CallbackStatistics$ProcessInfo;
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;
    .param p3, "p"    # Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/android/car/CallbackStatistics$ProcessInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/car/CallbackStatistics$ProcessInfo;-><init>(Ljava/lang/String;ILandroid/os/IBinder;)V

    return-object v0
.end method

.method static synthetic lambda$addPropMethodCallCount$1(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "p"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$addPropMethodCallCount$2(Ljava/lang/Integer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "p"    # Ljava/lang/Integer;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$addPropsMethodCallCount$3(Lcom/android/car/CallbackStatistics;Ljava/lang/String;ILandroid/os/IBinder;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "listenerBinder"    # Landroid/os/IBinder;
    .param p4, "v"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 142
    invoke-virtual {p4}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p4}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 144
    .local v0, "propId":I
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V

    .line 146
    .end local v0    # "propId":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$checkClientsCallback$4(Ljava/util/Map;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "m"    # Ljava/util/Map;

    .line 165
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$checkClientsCallback$5(Lcom/android/car/CallbackStatistics;Ljava/util/Map$Entry;)V
    .locals 8
    .param p1, "s"    # Ljava/util/Map$Entry;

    .line 169
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientProcessInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CallbackStatistics$ProcessInfo;

    .line 170
    .local v0, "info":Lcom/android/car/CallbackStatistics$ProcessInfo;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/android/car/CallbackStatistics;->covertPropMethodCallCountMapToString(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 173
    .local v4, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v4    # "string":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V
    .locals 8
    .param p1, "propId"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "listenerBinder"    # Landroid/os/IBinder;

    .line 113
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/car/CallbackStatistics;->mMyPid:I

    if-eq p3, v0, :cond_3

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientProcessInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/car/-$$Lambda$CallbackStatistics$46x2cRSeBPCn9vV_355BLTtqkho;-><init>(Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CallbackStatistics$ProcessInfo;

    .line 116
    .local v0, "processInfo":Lcom/android/car/CallbackStatistics$ProcessInfo;
    invoke-static {v0}, Lcom/android/car/CallbackStatistics$ProcessInfo;->access$000(Lcom/android/car/CallbackStatistics$ProcessInfo;)I

    move-result v1

    if-eq v1, p3, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "pid changed to pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v0, p3}, Lcom/android/car/CallbackStatistics$ProcessInfo;->access$002(Lcom/android/car/CallbackStatistics$ProcessInfo;I)I

    .line 119
    invoke-static {v0, p4}, Lcom/android/car/CallbackStatistics$ProcessInfo;->access$102(Lcom/android/car/CallbackStatistics$ProcessInfo;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    sget-object v2, Lcom/android/car/-$$Lambda$CallbackStatistics$tCUAvonUkQ_G2qhw_T5d_WeueW8;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$tCUAvonUkQ_G2qhw_T5d_WeueW8;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 122
    .local v1, "atomicPropCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$CallbackStatistics$o1uUeE69yP1r_GEuxPmMrXWKqTk;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$o1uUeE69yP1r_GEuxPmMrXWKqTk;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 123
    .local v2, "value":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", callback prop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", new count = 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p1}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", callback prop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "processInfo":Lcom/android/car/CallbackStatistics$ProcessInfo;
    .end local v1    # "atomicPropCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    .end local v2    # "value":J
    :cond_2
    :goto_0
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    const-string v2, "addPropMethodCallCount failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method public addPropsMethodCallCount(Ljava/util/List;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 3
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "listenerBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/car/CallbackStatistics;->mMyPid:I

    if-eq p3, v0, :cond_1

    .line 141
    :try_start_0
    new-instance v0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;-><init>(Lcom/android/car/CallbackStatistics;Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mTag:Ljava/lang/String;

    const-string v2, "calculateCallbackCount failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 96
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mClientCallbackMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;>;"
    iget-object v2, p0, Lcom/android/car/CallbackStatistics;->mClientProcessInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CallbackStatistics$ProcessInfo;

    .line 101
    .local v2, "info":Lcom/android/car/CallbackStatistics$ProcessInfo;
    if-eqz v2, :cond_0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    .local v4, "propertyMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "            "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", callback count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .end local v4    # "propertyMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;"
    goto :goto_1

    .line 108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicLong;>;>;"
    .end local v2    # "info":Lcom/android/car/CallbackStatistics$ProcessInfo;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public getMyPid()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/car/CallbackStatistics;->mMyPid:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CallbackStatistics;->isBlock:Z

    .line 188
    iget-object v0, p0, Lcom/android/car/CallbackStatistics;->mClientPropMethodCallCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    return-void
.end method

.method public removeProcess(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "listenerBinder"    # Landroid/os/IBinder;

    .line 154
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 158
    return-void
.end method
