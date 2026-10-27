.class public Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;
.super Ljava/lang/Object;
.source "CarPretreatService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;
    }
.end annotation


# static fields
.field private static final PRETREAT_COST_TIME_FOR_HV:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "CarPretreatService"

.field private static final sDataLock:Ljava/lang/Object;

.field public static final sHVPropertyNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBattCurrentAvg:F

.field private final mCarPretreatTaskMap:Ljava/util/Map;
    .annotation build Landroid/car/xpeng/ai/annotation/TaskId;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarSceneListener:Lcom/android/car/xpeng/ai/scene/CarSceneListener;

.field private mCurrentPretreatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;",
            ">;"
        }
    .end annotation
.end field

.field public final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/xpeng/ai/scene/CarSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHandler:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;

.field private mWakeUpCount:I

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sDataLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;

    invoke-direct {v0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;-><init>()V

    sput-object v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sHVPropertyNameList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mListenerList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCurrentPretreatMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/android/car/xpeng/ai/pretreat/-$$Lambda$CarPretreatService$m6gYZcOm_uMnMC9RjGJsqBtz1uY;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/pretreat/-$$Lambda$CarPretreatService$m6gYZcOm_uMnMC9RjGJsqBtz1uY;-><init>(Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarSceneListener:Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 107
    iput-object p1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mWorkHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "car-pretreat-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "pretreatThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mMessageHandler:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;

    .line 111
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;Landroid/car/xpeng/ai/scene/CarScene;)V
    .locals 4
    .param p1, "scene"    # Landroid/car/xpeng/ai/scene/CarScene;

    .line 53
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 54
    .local v0, "task":Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    if-nez v0, :cond_0

    .line 55
    const-string v1, "CarPretreatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task is null, taksId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneAction()Landroid/car/xpeng/ai/scene/CarScene$Action;

    move-result-object v1

    sget-object v2, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_EXIT:Landroid/car/xpeng/ai/scene/CarScene$Action;

    if-ne v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCurrentPretreatMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneAction()Landroid/car/xpeng/ai/scene/CarScene$Action;

    move-result-object v1

    sget-object v2, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_ENTER:Landroid/car/xpeng/ai/scene/CarScene$Action;

    if-ne v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCurrentPretreatMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/scene/CarScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->handleCarSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V

    .line 66
    return-void
.end method

.method public static parserCarPretreatTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    .locals 7
    .param p0, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 86
    new-instance v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "pretreatTask":Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getActionList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "action":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sHVPropertyNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setHVPower(Z)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 92
    goto :goto_1

    .line 94
    .end local v3    # "action":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getCostTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    .line 98
    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setHVPower(Z)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getDurationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setDurationTime(J)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setState(I)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 102
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getCostTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setCostTime(J)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 103
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 190
    return-void
.end method

.method public handleAlarmReceivedOrWakeUpData(Ljava/lang/String;)V
    .locals 4
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 140
    .local v0, "task":Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;
    if-eqz v0, :cond_2

    .line 142
    iget v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mBattCurrentAvg:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mWakeUpCount:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 144
    :cond_0
    const-string v1, "CarPretreatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAlarmReceivedData: request hv for mBattCurrentAvg or mWakeUpCount, sceneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->setHVPower(Z)Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;

    iget-object v3, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarSceneListener:Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    invoke-direct {v2, v0, v3}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTaskRunnable;-><init>(Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;Lcom/android/car/xpeng/ai/scene/CarSceneListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_2
    return-void
.end method

.method public handleCarSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V
    .locals 3
    .param p1, "scene"    # Landroid/car/xpeng/ai/scene/CarScene;

    .line 161
    sget-object v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 163
    .local v2, "listener":Lcom/android/car/xpeng/ai/scene/CarSceneListener;
    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v2, p1}, Lcom/android/car/xpeng/ai/scene/CarSceneListener;->onCarSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V

    .line 166
    .end local v2    # "listener":Lcom/android/car/xpeng/ai/scene/CarSceneListener;
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleNetworkWakeDown()V
    .locals 0

    .line 158
    return-void
.end method

.method public handleNetworkWakeUp()V
    .locals 0

    .line 153
    return-void
.end method

.method public init()V
    .locals 0

    .line 177
    return-void
.end method

.method public init(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    :cond_0
    return-void
.end method

.method public insertOrUpdate(Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;

    .line 128
    iget-object v0, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mCarPretreatTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public registerCarSceneListener(Lcom/android/car/xpeng/ai/scene/CarSceneListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 114
    sget-object v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 0

    .line 185
    return-void
.end method

.method public unregisterCarSceneListener(Lcom/android/car/xpeng/ai/scene/CarSceneListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/xpeng/ai/scene/CarSceneListener;

    .line 122
    sget-object v0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;->mListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
