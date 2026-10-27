.class public Lcom/xiaopeng/carcontrol/lang/TriggerJob;
.super Ljava/lang/Object;
.source "TriggerJob.java"


# instance fields
.field private mInterval:J

.field private mLastTriggerTime:J

.field private mPendingJob:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 14
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mInterval:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interval",
            "runnable"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mInterval:J

    .line 19
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private newJob()Ljava/lang/Runnable;
    .locals 1

    .line 71
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$Yrx6ckA48-Ezb5r0fWoYRFnZkBU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$Yrx6ckA48-Ezb5r0fWoYRFnZkBU;-><init>(Lcom/xiaopeng/carcontrol/lang/TriggerJob;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$trigger$0$TriggerJob()V
    .locals 3

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mLastTriggerTime:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onTrigger()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final trigger()V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 33
    monitor-exit p0

    return-void

    .line 35
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 37
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    monitor-enter p0

    .line 41
    :try_start_1
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mLastTriggerTime:J

    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mInterval:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->newJob()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v4, :cond_3

    .line 47
    monitor-enter p0

    .line 48
    :try_start_2
    iput-object v5, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    .line 49
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    new-instance v4, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$TriggerJob$4F5DFyfcWdiIXHb5WTEdu3bSOWE;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$TriggerJob$4F5DFyfcWdiIXHb5WTEdu3bSOWE;-><init>(Lcom/xiaopeng/carcontrol/lang/TriggerJob;)V

    sub-long/2addr v2, v0

    invoke-static {v4, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :catchall_1
    move-exception v0

    .line 49
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 63
    :cond_3
    monitor-enter p0

    .line 64
    :try_start_4
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mLastTriggerTime:J

    .line 65
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_2
    move-exception v0

    .line 65
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 43
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public final untrigger()V
    .locals 2

    .line 23
    monitor-enter p0

    const/4 v0, 0x0

    .line 24
    :try_start_0
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mPendingJob:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->mLastTriggerTime:J

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
