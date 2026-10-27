.class public Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;
.super Ljava/lang/Object;
.source "AppStartTaskRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

.field private mAppStartTaskDispatcher:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/appstart/core/AppStartTask;Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTaskDispatcher:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->isRunOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->priority()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->waitToNotify()V

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstart/core/AppStartTask;->setStartTime(J)V

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->run()V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstart/core/AppStartTask;->setEndTime(J)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->getEndTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstart/core/AppStartTask;->setCost(J)V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->isRunOnMainThread()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/AppStartTask;->setIsMainThreadTask(Z)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/AppStartTask;->setThreadName(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTaskDispatcher:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setNotifyChildren(Lcom/xiaopeng/appstart/core/AppStartTask;)V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTaskDispatcher:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->mAppStartTask:Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->markAppStartTaskFinish(Lcom/xiaopeng/appstart/core/AppStartTask;)V

    return-void
.end method
