.class public Lorg/chromium/net/impl/CronetUrlRequestContext;
.super Lorg/chromium/net/impl/c;
.source "CronetUrlRequestContext.java"


# annotations
.annotation build Lorg/chromium/base/annotations/UsedByReflection;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "CronetUrlRequestContext"

.field private static final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/ConditionVariable;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:J

.field private f:Ljava/lang/Thread;

.field private final g:Z

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private final n:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$c;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$d;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/net/s$a;",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile q:Landroid/os/ConditionVariable;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->r:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/d;)V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/UsedByReflection;
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/chromium/net/impl/c;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->b:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->c:Landroid/os/ConditionVariable;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->h:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->i:Ljava/lang/Object;

    .line 93
    iput v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->j:I

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->k:I

    .line 107
    iput v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->l:I

    .line 114
    iput v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->m:I

    .line 117
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->n:Lorg/chromium/base/ObserverList;

    .line 122
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->o:Lorg/chromium/base/ObserverList;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->p:Ljava/util/Map;

    .line 151
    invoke-virtual {p1}, Lorg/chromium/net/impl/d;->r()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->g:Z

    .line 152
    invoke-virtual {p1}, Lorg/chromium/net/impl/d;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/net/impl/CronetLibraryLoader;->a(Landroid/content/Context;Lorg/chromium/net/impl/d;)V

    .line 154
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->g()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeSetMinLogLevel(I)I

    .line 156
    invoke-virtual {p1}, Lorg/chromium/net/impl/d;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p1}, Lorg/chromium/net/impl/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->s:Ljava/lang/String;

    .line 158
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->r:Ljava/util/HashSet;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->r:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    monitor-exit v0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Disk cache storage path already in use"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->s:Ljava/lang/String;

    .line 166
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_1
    invoke-static {p1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/impl/d;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeCreateRequestContextAdapter(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->e:J

    .line 169
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->e:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 172
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequestContext$1;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequestContext$1;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;)V

    invoke-static {p1}, Lorg/chromium/net/impl/CronetLibraryLoader;->a(Ljava/lang/Runnable;)V

    return-void

    .line 170
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "Context Adapter creation failed."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 172
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static a(Lorg/chromium/net/impl/d;)J
    .locals 24

    .line 192
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->f()Z

    move-result v2

    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->h()Z

    move-result v4

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->i()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->j()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->l()I

    move-result v7

    .line 195
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->k()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->p()Ljava/lang/String;

    move-result-object v10

    .line 196
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->q()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->r()Z

    move-result v13

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->o()Z

    move-result v14

    const/16 v15, 0xa

    move/from16 v16, v14

    move-object/from16 v14, p0

    .line 198
    invoke-virtual {v14, v15}, Lorg/chromium/net/impl/d;->a(I)I

    move-result v15

    move/from16 v14, v16

    .line 191
    invoke-static/range {v0 .. v15}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeCreateRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZIJLjava/lang/String;JZZI)J

    move-result-wide v0

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/net/impl/d$b;

    .line 200
    iget-object v4, v3, Lorg/chromium/net/impl/d$b;->a:Ljava/lang/String;

    iget v5, v3, Lorg/chromium/net/impl/d$b;->b:I

    iget v3, v3, Lorg/chromium/net/impl/d$b;->c:I

    invoke-static {v0, v1, v4, v5, v3}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeAddQuicHint(JLjava/lang/String;II)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/d;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/net/impl/d$a;

    .line 204
    iget-object v4, v3, Lorg/chromium/net/impl/d$a;->a:Ljava/lang/String;

    iget-object v5, v3, Lorg/chromium/net/impl/d$a;->b:[[B

    iget-boolean v6, v3, Lorg/chromium/net/impl/d$a;->c:Z

    iget-object v3, v3, Lorg/chromium/net/impl/d$a;->d:Ljava/util/Date;

    .line 205
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v17, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    .line 204
    invoke-static/range {v17 .. v23}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeAddPkp(JLjava/lang/String;[[BZJ)V

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 667
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 669
    sget-object p1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Exception posting task to executor"

    invoke-static {p1, p0, v0}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequestContext;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->nativeInitRequestContextOnInitThread(J)V

    return-void
.end method

.method static synthetic b(Lorg/chromium/net/impl/CronetUrlRequestContext;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->e:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    .line 533
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Z
    .locals 4

    .line 540
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()I
    .locals 2

    .line 549
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/chromium/base/e;->a(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    .line 551
    :cond_0
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/e;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private initNetworkThread()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 582
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->f:Ljava/lang/Thread;

    .line 583
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 587
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ChromiumNet"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeAddPkp(JLjava/lang/String;[[BZJ)V
.end method

.method private static native nativeAddQuicHint(JLjava/lang/String;II)V
.end method

.method private native nativeConfigureNetworkQualityEstimatorForTesting(JZZZ)V
.end method

.method private static native nativeCreateRequestContextAdapter(J)J
.end method

.method private static native nativeCreateRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZIJLjava/lang/String;JZZI)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetHistogramDeltas()[B
.end method

.method private native nativeInitRequestContextOnInitThread(J)V
.end method

.method private native nativeProvideRTTObservations(JZ)V
.end method

.method private native nativeProvideThroughputObservations(JZ)V
.end method

.method private static native nativeSetMinLogLevel(I)I
.end method

.method private native nativeStartNetLogToDisk(JLjava/lang/String;ZI)V
.end method

.method private native nativeStartNetLogToFile(JLjava/lang/String;Z)Z
.end method

.method private native nativeStopNetLog(J)V
.end method

.method private onEffectiveConnectionTypeChanged(I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 594
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->j:I

    .line 598
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onRTTOrThroughputEstimatesComputed(III)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 605
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->k:I

    .line 607
    iput p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->l:I

    .line 608
    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->m:I

    .line 609
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onRttObservation(IJI)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->n:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/impl/VersionSafeCallbacks$c;

    .line 618
    new-instance v10, Lorg/chromium/net/impl/CronetUrlRequestContext$2;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move-wide v7, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/impl/CronetUrlRequestContext$2;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$c;IJI)V

    .line 624
    invoke-virtual {v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$c;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 626
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

.method private onThroughputObservation(IJI)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->o:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/impl/VersionSafeCallbacks$d;

    .line 636
    new-instance v10, Lorg/chromium/net/impl/CronetUrlRequestContext$3;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move-wide v7, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/impl/CronetUrlRequestContext$3;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$d;IJI)V

    .line 642
    invoke-virtual {v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$d;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 644
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


# virtual methods
.method public a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/s$a;)Lorg/chromium/net/impl/n;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/w$b;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/s$a;",
            ")",
            "Lorg/chromium/net/impl/n;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 222
    iget-object v14, v15, Lorg/chromium/net/impl/CronetUrlRequestContext;->b:Ljava/lang/Object;

    monitor-enter v14

    .line 223
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->e()V

    .line 224
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v16, v14

    move/from16 v14, p12

    move-object/from16 v15, p13

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lorg/chromium/net/impl/CronetUrlRequest;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/w$b;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILorg/chromium/net/s$a;)V

    monitor-exit v16

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v14

    .line 228
    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method a(Lorg/chromium/net/s;)V
    .locals 3

    .line 649
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 651
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->p:Ljava/util/Map;

    .line 652
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    .line 655
    new-instance v2, Lorg/chromium/net/impl/CronetUrlRequestContext$4;

    invoke-direct {v2, p0, v1, p1}, Lorg/chromium/net/impl/CronetUrlRequestContext$4;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$e;Lorg/chromium/net/s;)V

    .line 661
    invoke-virtual {v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 653
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Thread;)Z
    .locals 1

    .line 721
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->f:Ljava/lang/Thread;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()V
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method c()V
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public d()J
    .locals 3

    .line 525
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->e()V

    .line 527
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->e:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 528
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopNetLogCompleted()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->q:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
