.class public abstract Lcom/xiaopeng/speech/common/util/AsyncRunner;
.super Ljava/lang/Object;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IFunc:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mFuncQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TIFunc;>;"
        }
    .end annotation
.end field

.field protected mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "AsyncRunner"

    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/common/util/AsyncRunner;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/common/util/AsyncRunner;

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->doFetchAll()V

    return-void
.end method

.method private declared-synchronized doFetchAll()V
    .locals 2

    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    monitor-enter p0

    .line 63
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "func":Ljava/lang/Object;, "TIFunc;"
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->canRun()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->realRun(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v0    # "func":Ljava/lang/Object;, "TIFunc;"
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    throw v0
.end method


# virtual methods
.method protected abstract canRun()Z
.end method

.method public declared-synchronized clearAll()V
    .locals 5

    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    const-string v1, "clear all fun:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    throw v0
.end method

.method public fetchAll()V
    .locals 5

    .line 49
    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    const-string v1, "fetchAll fun:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/common/util/AsyncRunner$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner$1;-><init>(Lcom/xiaopeng/speech/common/util/AsyncRunner;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->doFetchAll()V

    .line 60
    :goto_0
    return-void
.end method

.method protected abstract realRun(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TIFunc;)TR;"
        }
    .end annotation
.end method

.method public declared-synchronized runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TIFunc;TR;)TR;"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    .local p1, "func":Ljava/lang/Object;, "TIFunc;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->canRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->fetchAll()V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    const-string v1, "can run offer fun"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->realRun(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mFuncQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->TAG:Ljava/lang/String;

    const-string v1, "offer fun"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    monitor-exit p0

    return-object p2

    .line 28
    .end local p1    # "func":Ljava/lang/Object;, "TIFunc;"
    .end local p2    # "result":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    throw p1
.end method

.method public runFunc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIFunc;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    .local p1, "func":Ljava/lang/Object;, "TIFunc;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 0
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 21
    .local p0, "this":Lcom/xiaopeng/speech/common/util/AsyncRunner;, "Lcom/xiaopeng/speech/common/util/AsyncRunner<TIFunc;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 22
    return-void
.end method
