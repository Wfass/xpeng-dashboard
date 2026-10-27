.class public Lcom/airbnb/lottie/m;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/Executor;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private volatile e:Lcom/airbnb/lottie/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/m;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/l<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/m;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/l<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/m;->c:Ljava/util/Set;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/m;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    if-eqz p2, :cond_0

    .line 57
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/l;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/m;->a(Lcom/airbnb/lottie/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Lcom/airbnb/lottie/l;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/l;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/m;->a(Lcom/airbnb/lottie/l;)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object p2, Lcom/airbnb/lottie/m;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/airbnb/lottie/m$a;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/m$a;-><init>(Lcom/airbnb/lottie/m;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/m;->d:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$m$BqqkNBOz08ffnqGV9Cw0C_s0h0Y;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/-$$Lambda$m$BqqkNBOz08ffnqGV9Cw0C_s0h0Y;-><init>(Lcom/airbnb/lottie/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/airbnb/lottie/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    .line 71
    invoke-direct {p0}, Lcom/airbnb/lottie/m;->a()V

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A task may only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/airbnb/lottie/m;Lcom/airbnb/lottie/l;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/m;->a(Lcom/airbnb/lottie/l;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/h;

    .line 148
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/h;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 155
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/m;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Lottie encountered an error but no failure listener was added:"

    .line 157
    invoke-static {v0, p1}, Lox;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/h;

    .line 162
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/h;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic b()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/m;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$BqqkNBOz08ffnqGV9Cw0C_s0h0Y(Lcom/airbnb/lottie/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/m;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "TT;>;)",
            "Lcom/airbnb/lottie/m<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/h;->onResult(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "TT;>;)",
            "Lcom/airbnb/lottie/m<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/m<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->e:Lcom/airbnb/lottie/l;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->b()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/airbnb/lottie/l;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/h;->onResult(Ljava/lang/Object;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/m<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/m;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
