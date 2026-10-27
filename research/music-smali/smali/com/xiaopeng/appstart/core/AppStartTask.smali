.class public abstract Lcom/xiaopeng/appstart/core/AppStartTask;
.super Ljava/lang/Object;
.source "AppStartTask.java"

# interfaces
.implements Lcom/xiaopeng/appstart/core/base/TaskInterface;


# instance fields
.field private cost:Ljava/util/concurrent/atomic/AtomicLong;

.field private endTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private isMainThreadTask:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDepends:Ljava/util/concurrent/CountDownLatch;

.field private startTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/xiaopeng/appstart/core/AppStartTask;->getDependsTaskList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstart/core/AppStartTask;->getDependsTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->mDepends:Ljava/util/concurrent/CountDownLatch;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->cost:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->isMainThreadTask:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public Notify()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->mDepends:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public end()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->cost:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public getCost()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->cost:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDependsTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;>;"
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsMainThreadTask()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->isMainThreadTask:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isRunOnMainThread()Z
.end method

.method public needWait()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public priority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public abstract run()V
.end method

.method public runOnExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->getInstance()Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public setCost(J)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->cost:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->endTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setIsMainThreadTask(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->isMainThreadTask:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->startTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->threadName:Ljava/lang/String;

    return-void
.end method

.method public waitToNotify()V
    .locals 1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/AppStartTask;->mDepends:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
