.class public Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
.super Ljava/lang/Object;
.source "AppStartTaskDispatcher.java"


# static fields
.field private static final WAITING_TIME:I = 0x2710


# instance fields
.field private isShowLog:Z

.field private mAllTaskWaitTimeOut:J

.field private mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mFinishTime:J

.field private mNeedWaitCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSortMainThreadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSortTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSortThreadPoolTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mTaskChildHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskHashMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskChildHashMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mStartTaskList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mNeedWaitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortMainThreadTaskList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortThreadPoolTaskList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->printSortTaskToFile(Landroid/content/Context;)V

    return-void
.end method

.method public static create()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    invoke-direct {v0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;-><init>()V

    return-object v0
.end method

.method private dispatchAppStartTask()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortThreadPoolTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstart/core/AppStartTask;

    .line 189
    invoke-virtual {v1}, Lcom/xiaopeng/appstart/core/AppStartTask;->runOnExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;

    invoke-direct {v3, v1, p0}, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;-><init>(Lcom/xiaopeng/appstart/core/AppStartTask;Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortMainThreadTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstart/core/AppStartTask;

    .line 193
    new-instance v2, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;-><init>(Lcom/xiaopeng/appstart/core/AppStartTask;Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)V

    invoke-virtual {v2}, Lcom/xiaopeng/appstart/core/runnable/AppStartTaskRunnable;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getDependsTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Ljava/lang/String;
    .locals 3

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/appstart/core/AppStartTask;->getDependsTaskList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, ","

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private ifNeedWait(Lcom/xiaopeng/appstart/core/AppStartTask;)Z
    .locals 1

    .line 218
    invoke-virtual {p1}, Lcom/xiaopeng/appstart/core/AppStartTask;->isRunOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/appstart/core/AppStartTask;->needWait()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initRealSortTask()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstart/core/AppStartTask;

    .line 123
    invoke-virtual {v1}, Lcom/xiaopeng/appstart/core/AppStartTask;->isRunOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortMainThreadTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortThreadPoolTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printSortTask()V
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u6240\u6709\u4efb\u52a1\u6392\u597d\u7684\u987a\u5e8f\u4e3a\uff1a"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "---\uff1e"

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->isShowLog:Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/appstart/core/util/AppStartTaskLogUtil;->showLog(ZLjava/lang/String;)V

    return-void
.end method

.method private printSortTaskToFile(Landroid/content/Context;)V
    .locals 5

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "name"

    .line 138
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "depends"

    .line 139
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-direct {p0, v3}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->getDependsTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "startTime"

    .line 140
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "endTime"

    .line 141
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getEndTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "taskRunDuration"

    .line 142
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getCost()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isMainThreadTask"

    .line 143
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getIsMainThreadTask()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "threadName"

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v3}, Lcom/xiaopeng/appstart/core/AppStartTask;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->isShowLog:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/appstart/core/util/AppStartTaskLogUtil;->showLog(ZLjava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->init()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppStartTask.txt"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->writeToCustomFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 1

    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mStartTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->ifNeedWait(Lcom/xiaopeng/appstart/core/AppStartTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mNeedWaitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_0
    return-object p0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "addAppStartTask() \u4f20\u5165\u7684appStartTask\u4e3anull"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public await()V
    .locals 4

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 227
    iget-wide v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mAllTaskWaitTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2710

    .line 228
    iput-wide v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mAllTaskWaitTimeOut:J

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mAllTaskWaitTimeOut:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mFinishTime:J

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->isShowLog:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u542f\u52a8\u8017\u65f6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mFinishTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/appstart/core/util/AppStartTaskLogUtil;->showLog(ZLjava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5728\u8c03\u7528await()\u4e4b\u524d\uff0c\u5fc5\u987b\u5148\u8c03\u7528start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public markAppStartTaskFinish(Lcom/xiaopeng/appstart/core/AppStartTask;)V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->isShowLog:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4efb\u52a1\u5b8c\u6210\u4e86\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/appstart/core/util/AppStartTaskLogUtil;->showLog(ZLjava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->ifNeedWait(Lcom/xiaopeng/appstart/core/AppStartTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mNeedWaitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    :cond_0
    return-void
.end method

.method public setAllTaskWaitTimeOut(J)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mAllTaskWaitTimeOut:J

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setNotifyChildren(Lcom/xiaopeng/appstart/core/AppStartTask;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskChildHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstart/core/AppStartTask;

    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/AppStartTask;->Notify()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShowLog(Z)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->isShowLog:Z

    return-object p0
.end method

.method public start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
    .locals 4

    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mStartTime:J

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mStartTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mTaskChildHashMap:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/appstart/core/util/AppStartTaskSortUtil;->getSortResult(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mSortTaskList:Ljava/util/List;

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->initRealSortTask()V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->printSortTask()V

    .line 101
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mNeedWaitCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->dispatchAppStartTask()V

    .line 104
    invoke-static {}, Lcom/xiaopeng/appstart/core/util/DebugConstantUtil;->isNeedOutLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;-><init>(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "start\u65b9\u6cd5\u5fc5\u987b\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
