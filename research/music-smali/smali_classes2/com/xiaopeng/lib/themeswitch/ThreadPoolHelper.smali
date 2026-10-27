.class public Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;
.super Ljava/lang/Object;
.source "ThreadPoolHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPoolHelper"

.field private static volatile sInstance:Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

.field private static sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private cachedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    invoke-direct {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    return-object v0
.end method

.method public static postBackground(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
