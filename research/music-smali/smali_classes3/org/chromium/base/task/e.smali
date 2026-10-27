.class Lorg/chromium/base/task/e;
.super Ljava/lang/Object;
.source "DefaultTaskExecutor.java"

# interfaces
.implements Lorg/chromium/base/task/i;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/base/task/k;",
            "Lorg/chromium/base/task/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/e;->a:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized a()Lorg/chromium/base/task/c;
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    sget-object v0, Lorg/chromium/base/task/-$$Lambda$e$irqc07DoiY0W0BYVel6JcVL5Oss;->INSTANCE:Lorg/chromium/base/task/-$$Lambda$e$irqc07DoiY0W0BYVel6JcVL5Oss;

    .line 72
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/task/c;

    .line 75
    iget-object v1, p0, Lorg/chromium/base/task/e;->a:Ljava/util/Map;

    sget-object v2, Lorg/chromium/base/task/k;->g:Lorg/chromium/base/task/k;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic b()Lorg/chromium/base/task/c;
    .locals 2

    .line 73
    new-instance v0, Lorg/chromium/base/task/c;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/base/task/c;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method

.method public static synthetic lambda$irqc07DoiY0W0BYVel6JcVL5Oss()Lorg/chromium/base/task/c;
    .locals 1

    invoke-static {}, Lorg/chromium/base/task/e;->b()Lorg/chromium/base/task/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/chromium/base/task/k;)Lorg/chromium/base/task/j;
    .locals 1

    .line 23
    iget-boolean v0, p1, Lorg/chromium/base/task/k;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/task/e;->a()Lorg/chromium/base/task/c;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    new-instance v0, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v0, p1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Lorg/chromium/base/task/k;)V

    return-object v0
.end method

.method public declared-synchronized a(Lorg/chromium/base/task/k;Ljava/lang/Runnable;J)V
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/base/task/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lorg/chromium/base/task/e;->a(Lorg/chromium/base/task/k;)Lorg/chromium/base/task/j;

    move-result-object p1

    .line 48
    invoke-interface {p1, p2, p3, p4}, Lorg/chromium/base/task/j;->a(Ljava/lang/Runnable;J)V

    .line 49
    invoke-interface {p1}, Lorg/chromium/base/task/j;->a()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/task/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/task/j;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v0, p1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Lorg/chromium/base/task/k;)V

    .line 56
    invoke-virtual {v0}, Lorg/chromium/base/task/TaskRunnerImpl;->d()V

    .line 57
    iget-object v1, p0, Lorg/chromium/base/task/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Lorg/chromium/base/task/j;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
