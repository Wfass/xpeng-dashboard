.class public Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x5

.field private static final MAXIMUM_POOL_SIZE:I

.field private static volatile sTaskExecutorManager:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;


# instance fields
.field private mCPUThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private mIOThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->CPU_COUNT:I

    .line 20
    sget v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->CORE_POOL_SIZE:I

    .line 22
    sget v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->CORE_POOL_SIZE:I

    sput v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 29
    new-instance v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager$1;-><init>(Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 49
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->CORE_POOL_SIZE:I

    sget v3, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->MAXIMUM_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    const-wide/16 v4, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mCPUThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mCPUThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mIOThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;
    .locals 2

    .line 37
    sget-object v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->sTaskExecutorManager:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->sTaskExecutorManager:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    invoke-direct {v1}, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->sTaskExecutorManager:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->sTaskExecutorManager:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    return-object v0
.end method


# virtual methods
.method public getCPUThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mCPUThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getIOThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->mIOThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
