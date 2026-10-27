.class public final Lcom/xiaopeng/carcontrol/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtils"

.field public static final THREAD_BACKGROUND:I = 0x0

.field public static final THREAD_NORMAL:I = 0x2

.field public static final THREAD_UI:I = 0x1

.field private static sBackgroundHandler:Landroid/os/Handler;

.field private static sBackgroundThread:Landroid/os/HandlerThread;

.field private static sMainThreadHandler:Landroid/os/Handler;

.field private static sNormalHandler:Landroid/os/Handler;

.field private static sNormalThread:Landroid/os/HandlerThread;

.field private static final sRunnableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 33
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createBackgroundThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 234
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 236
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 237
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createMainThread()V
    .locals 3

    const-class v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createNormalThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    .line 244
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 246
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static doPost(ILjava/lang/Runnable;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "threadType",
            "task",
            "delayMillis"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createMainThread()V

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 159
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 153
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createNormalThread()V

    .line 156
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 145
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 146
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createMainThread()V

    .line 149
    :cond_4
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 138
    :cond_5
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_6

    .line 139
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createBackgroundThread()V

    .line 142
    :cond_6
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    .line 163
    :goto_0
    new-instance v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$iXNRQ_8rOxQMlxB4LVpirJG7UXQ;

    invoke-direct {v1, p1}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$iXNRQ_8rOxQMlxB4LVpirJG7UXQ;-><init>(Ljava/lang/Runnable;)V

    .line 180
    sget-object v2, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 181
    :try_start_0
    new-instance v3, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 182
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 81
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "runnable",
            "callback",
            "priority"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 47
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    new-instance v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$vB8lqCYJHdyZocF7URQrtzrRm2g;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$ThreadUtils$vB8lqCYJHdyZocF7URQrtzrRm2g;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getHandler(I)Landroid/os/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadType"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 123
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 124
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createMainThread()V

    .line 126
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object p0

    .line 117
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez p0, :cond_2

    .line 118
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createNormalThread()V

    .line 120
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    return-object p0

    .line 111
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez p0, :cond_4

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createBackgroundThread()V

    .line 114
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$doPost$1(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "task"
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 167
    sget-object v2, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 173
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$execute$0(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "priority",
            "runnable",
            "callback"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 52
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz p2, :cond_0

    .line 54
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadType",
            "task"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "threadType",
            "task",
            "delayMillis"
        }
    .end annotation

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "delayMillis"
        }
    .end annotation

    const/4 v0, 0x5

    .line 105
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static removeRunnable(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 190
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->getRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils$RunnableMap;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 201
    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 196
    :cond_2
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 217
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runner"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runner",
            "delayMs"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->createMainThread()V

    .line 76
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    sget-object v1, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method
