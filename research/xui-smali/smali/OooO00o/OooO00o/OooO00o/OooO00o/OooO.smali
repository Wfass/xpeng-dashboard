.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;,
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0o;,
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;,
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;,
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;
    }
.end annotation


# static fields
.field public static final OooO00o:Landroid/os/Handler;

.field public static final OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0Oo:I

.field public static OooO0o:Ljava/util/concurrent/Executor;

.field public static final OooO0o0:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0O0:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0OO:Ljava/util/Map;

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0Oo:I

    .line 8
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o0:Ljava/util/Timer;

    return-void
.end method

.method public static OooO00o(I)Ljava/util/concurrent/ExecutorService;
    .locals 5

    .line 28
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0O0:Ljava/util/Map;

    monitor-enter v2

    .line 31
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 33
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    invoke-static {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 35
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_1

    .line 40
    invoke-static {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;->OooO00o(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 41
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    move-object v0, v4

    :goto_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooO00o(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;JJLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0OO:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "ThreadUtils"

    const-string p1, "Task can only be executed once."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_2

    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO00o;

    invoke-direct {p4, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO00o;-><init>(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;)V

    .line 18
    sget-object p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o0:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p4, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0O0:Z

    .line 20
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;-><init>(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;)V

    .line 26
    sget-object p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0o0:Ljava/util/Timer;

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    move-object p1, v0

    invoke-virtual/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
