.class public Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;
.super Ljava/lang/Object;
.source "ThreadPoolProxy.java"


# instance fields
.field private mCorePoolSize:I

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mMaximumPoolSize:I

.field private queue:Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mCorePoolSize:I

    .line 30
    iput p2, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mMaximumPoolSize:I

    .line 31
    return-void
.end method

.method private initThreadPoolExecutor()V
    .locals 13

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    :cond_0
    const-class v0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    :cond_1
    const-wide/16 v11, 0xbb8

    .line 42
    .local v11, "keepAliveTime":J
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .local v7, "unit":Ljava/util/concurrent/TimeUnit;
    new-instance v1, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/task/queue/TaskWrapperQueue;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->queue:Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    .line 45
    .local v9, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 46
    .local v10, "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mCorePoolSize:I

    iget v4, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mMaximumPoolSize:I

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->queue:Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;

    move-object v2, v1

    move-wide v5, v11

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    .end local v7    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local v9    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local v10    # "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    .end local v11    # "keepAliveTime":J
    :cond_2
    monitor-exit v0

    .line 51
    :cond_3
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 82
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->queue:Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->queue:Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/task/queue/DeDuplicationQueue;->removeTask(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->initThreadPoolExecutor()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
