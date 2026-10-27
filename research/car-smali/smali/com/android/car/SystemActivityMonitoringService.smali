.class public Lcom/android/car/SystemActivityMonitoringService;
.super Ljava/lang/Object;
.source "SystemActivityMonitoringService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;,
        Lcom/android/car/SystemActivityMonitoringService$TaskListener;,
        Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;,
        Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;,
        Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    }
.end annotation


# instance fields
.field private mActivityLaunchListener:Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

.field private final mAm:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusedStackId:I

.field private final mForegroundUidPids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

.field private final mMonitorHandlerThread:Landroid/os/HandlerThread;

.field private final mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

.field private final mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

.field private final mTasksToDispatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mTasksToDispatch:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.AM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;-><init>(Lcom/android/car/SystemActivityMonitoringService;Landroid/os/Looper;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    .line 116
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;-><init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    .line 117
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    invoke-direct {v0, p0, v2}, Lcom/android/car/SystemActivityMonitoringService$TaskListener;-><init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 123
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .line 128
    invoke-direct {p0}, Lcom/android/car/SystemActivityMonitoringService;->updateTasks()V

    .line 129
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AM"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/car/SystemActivityMonitoringService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/SystemActivityMonitoringService;->handleForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/SystemActivityMonitoringService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->handleProcessDied(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->handleBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/SystemActivityMonitoringService;)Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 52
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 52
    invoke-direct {p0}, Lcom/android/car/SystemActivityMonitoringService;->updateTasks()V

    return-void
.end method

.method private doHandlePidGoneLocked(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 350
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 351
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    return-void
.end method

.method private findTaskAndGrantFocus(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    nop

    .line 375
    nop

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 378
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_0

    .line 379
    goto :goto_0

    .line 381
    :cond_0
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 383
    .local v3, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    :try_start_1
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget v4, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    goto :goto_1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CAR.AM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot setFocusedStack to stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 391
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 392
    :cond_2
    const-string v1, "CAR.AM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot give focus, cannot find Activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/CarLog$NoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void

    .line 373
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AM"

    const-string v2, "cannot getTasks"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    return-void
.end method

.method private handleBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 3
    .param p1, "currentTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "newActivityIntent"    # Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v2, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/SystemActivityMonitoringService;->findTaskAndGrantFocus(Landroid/content/ComponentName;)V

    .line 367
    return-void
.end method

.method private handleForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 329
    monitor-enter p0

    .line 330
    if-eqz p3, :cond_1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 332
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 333
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 334
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v0    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 338
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->doHandlePidGoneLocked(II)V

    .line 340
    :goto_0
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->doHandlePidGoneLocked(II)V

    .line 346
    monitor-exit p0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTasks()V
    .locals 11

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    nop

    .line 257
    nop

    .line 259
    const/4 v1, -0x1

    .line 263
    .local v1, "focusedStackId":I
    :try_start_1
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 264
    .local v2, "focusedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_0

    .line 265
    iget v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    .line 270
    .end local v1    # "focusedStackId":I
    .local v2, "focusedStackId":I
    :cond_0
    move v2, v1

    .line 271
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTasksToDispatch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    monitor-enter p0

    .line 274
    :try_start_2
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListener:Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 275
    .local v1, "listener":Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 276
    .local v4, "info":Landroid/app/ActivityManager$StackInfo;
    iget v6, v4, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 277
    .local v6, "stackId":I
    iget-object v7, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-nez v7, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    new-instance v7, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    iget-object v8, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v10, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v4, v10}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;-><init>(Landroid/content/ComponentName;ILandroid/app/ActivityManager$StackInfo;Lcom/android/car/SystemActivityMonitoringService$1;)V

    .line 283
    .local v7, "newTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    iget-object v8, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 286
    .local v8, "currentTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-eqz v8, :cond_2

    .line 287
    invoke-virtual {v8, v7}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->isMatching(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v2, v6, :cond_3

    iget v9, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    if-eq v2, v9, :cond_3

    .line 289
    :cond_2
    iget-object v9, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v9, p0, Lcom/android/car/SystemActivityMonitoringService;->mTasksToDispatch:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v9, "CAR.AM"

    invoke-static {v9, v5}, Lcom/android/car/CarLog$NoLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    const-string v5, "CAR.AM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New top task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/car/CarLog$NoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v6    # "stackId":I
    .end local v7    # "newTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .end local v8    # "currentTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :cond_3
    goto :goto_0

    .line 278
    .restart local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .restart local v6    # "stackId":I
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 279
    goto :goto_0

    .line 296
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v6    # "stackId":I
    :cond_5
    iput v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    .line 297
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    if-eqz v1, :cond_7

    .line 299
    iget-object v3, p0, Lcom/android/car/SystemActivityMonitoringService;->mTasksToDispatch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 300
    .local v4, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    const-string v6, "CAR.AM"

    invoke-static {v6, v5}, Lcom/android/car/CarLog$NoLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 301
    const-string v6, "CAR.AM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activity launched:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/car/CarLog$NoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_6
    invoke-interface {v1, v4}, Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;->onActivityLaunch(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 304
    .end local v4    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    goto :goto_2

    .line 306
    :cond_7
    return-void

    .line 297
    .end local v1    # "listener":Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 267
    .end local v2    # "focusedStackId":I
    .local v1, "focusedStackId":I
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AM"

    const-string v4, "cannot getFocusedStackId"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    return-void

    .line 255
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v1    # "focusedStackId":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AM"

    const-string v2, "cannot getTasks"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    return-void
.end method


# virtual methods
.method public blockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 1
    .param p1, "currentTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "newActivityIntent"    # Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    invoke-static {v0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->access$300(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 141
    const-string v0, "*SystemActivityMonitoringService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v0, " Top Tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 146
    .local v1, "info":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 144
    .end local v1    # "info":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_1
    const-string v0, " Foregroud uid-pids:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 152
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 153
    .local v2, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 154
    goto :goto_1

    .line 156
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 158
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " focused stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusedStackForTopActivity(Landroid/content/ComponentName;)Landroid/app/ActivityManager$StackInfo;
    .locals 4
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 311
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .local v1, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 314
    nop

    .line 316
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 317
    return-object v0

    .line 319
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 321
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    return-object v1

    .line 324
    :cond_1
    return-object v0

    .line 312
    .end local v1    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.AM"

    const-string v3, "cannot getFocusedStackId"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    return-object v0
.end method

.method public getTopTasks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 173
    .local v0, "tasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    monitor-enter p0

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    .line 178
    return-object v0

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .line 133
    return-void
.end method

.method public isInForeground(II)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    monitor-exit p0

    return v1

    .line 187
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 190
    .end local v0    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    .line 191
    return v1

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListener:Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 248
    monitor-exit p0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 0

    .line 137
    return-void
.end method

.method public restartTask(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "rootActivityName":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 208
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 209
    .local v4, "info":Landroid/app/ActivityManager$StackInfo;
    move v5, v1

    .local v5, "i":I
    :goto_1
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 210
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v6, v6, v5

    if-ne v6, p1, :cond_0

    .line 211
    iget-object v1, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    move-object v0, v1

    .line 212
    iget v1, v4, Landroid/app/ActivityManager$StackInfo;->userId:I

    move v2, v1

    .line 213
    const-string v1, "CAR.AM"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/car/CarLog$NoLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const-string v1, "CAR.AM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root activity is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/car/CarLog$NoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "CAR.AM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User id is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/car/CarLog$NoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 209
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 221
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 225
    :cond_2
    :goto_2
    nop

    .line 227
    if-nez v0, :cond_3

    .line 228
    const-string v1, "CAR.AM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find root activity with task id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v1, "rootActivityIntent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const-string v3, "CAR.AM"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/car/CarLog$NoLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    const-string v3, "CAR.AM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restarting root activity with user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/CarLog$NoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 243
    return-void

    .line 222
    .end local v1    # "rootActivityIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AM"

    const-string v4, "Could not get stack info"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    return-void
.end method
