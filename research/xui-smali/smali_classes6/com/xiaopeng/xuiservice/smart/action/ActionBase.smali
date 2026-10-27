.class public abstract Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.super Ljava/lang/Object;
.source "ActionBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/action/Action;


# static fields
.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_RUNNING:I = 0x1


# instance fields
.field private final actionChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$notifyDone$1(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;

    .line 127
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;->onActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-void
.end method

.method public static synthetic lambda$notifyStarted$0(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;

    .line 119
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;->onActionStarted(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-void
.end method

.method private static nameOfState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 23
    const-string v0, "UNKNOWN STATE"

    return-object v0

    .line 21
    :pswitch_0
    const-string v0, "DONE"

    return-object v0

    .line 19
    :pswitch_1
    const-string v0, "RUNNING"

    return-object v0

    .line 17
    :pswitch_2
    const-string v0, "CREATED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyDone()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 126
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY ACTION DONE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " LISTENER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$bWIXvl4vm9569urXaMvmjfwtVUw;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$bWIXvl4vm9569urXaMvmjfwtVUw;-><init>(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 128
    .end local v1    # "size":I
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyStarted()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY ACTION START: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " LISTENER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$jsMVHJrLE4YdjSwfqx5cMS7oshI;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$jsMVHJrLE4YdjSwfqx5cMS7oshI;-><init>(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 120
    .end local v1    # "size":I
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 100
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isDone()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStarted()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public removeActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->actionChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final start()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->startTime:J

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION START: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 39
    move v0, v1

    .line 41
    .local v0, "started":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->onStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start action error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    :try_start_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->notifyStarted()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    goto :goto_1

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .restart local v1    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStarted error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "started":Z
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    goto :goto_2

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING try to start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 57
    :goto_2
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION STOP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " use: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "stopped":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->onStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v0, 0x1

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop action error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 74
    :try_start_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->notifyDone()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    .line 76
    .restart local v1    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDone error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "stopped":Z
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->nameOfState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
