.class public final Lcom/amap/api/services/a/df;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static a:Lcom/amap/api/services/a/df;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amap/api/services/a/dg;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/services/a/dg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/services/a/df;->a:Lcom/amap/api/services/a/df;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/df;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Lcom/amap/api/services/a/df$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/df$1;-><init>(Lcom/amap/api/services/a/df;)V

    iput-object v0, p0, Lcom/amap/api/services/a/df;->d:Lcom/amap/api/services/a/dg$a;

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/df;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    const-string v0, "TPool"

    const-string v1, "ThreadPool"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/bj;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :goto_0
    return-void
.end method

.method public static declared-synchronized a(I)Lcom/amap/api/services/a/df;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/df;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/df;->a:Lcom/amap/api/services/a/df;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/amap/api/services/a/df;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/df;-><init>(I)V

    sput-object v1, Lcom/amap/api/services/a/df;->a:Lcom/amap/api/services/a/df;

    .line 60
    :cond_0
    sget-object p0, Lcom/amap/api/services/a/df;->a:Lcom/amap/api/services/a/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/services/a/df;Lcom/amap/api/services/a/dg;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/df;->a(Lcom/amap/api/services/a/dg;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/services/a/dg;Z)V
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/df;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    .line 188
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 189
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    goto :goto_0

    .line 186
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 191
    :catch_0
    move-exception p1

    .line 193
    :try_start_1
    const-string p2, "TPool"

    const-string v0, "removeQueue"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/bj;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :goto_1
    monitor-exit p0

    throw p1
.end method
