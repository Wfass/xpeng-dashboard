.class public final Lcom/xiaopeng/xui/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;
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
            "Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 52
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createBackgroundThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/xui/utils/ThreadUtils;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 253
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 255
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 256
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
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

    const-class v0, Lcom/xiaopeng/xui/utils/ThreadUtils;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
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

    const-class v0, Lcom/xiaopeng/xui/utils/ThreadUtils;

    monitor-enter v0

    .line 261
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    .line 263
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 265
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 266
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
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

    .line 150
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 178
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 172
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createNormalThread()V

    .line 175
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 164
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 165
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 168
    :cond_4
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 157
    :cond_5
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_6

    .line 158
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createBackgroundThread()V

    .line 161
    :cond_6
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    .line 182
    :goto_0
    new-instance v1, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$S08muD-LP5-4nw5Wy8pZ3TGh_xo;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$S08muD-LP5-4nw5Wy8pZ3TGh_xo;-><init>(Ljava/lang/Runnable;)V

    .line 199
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 200
    :try_start_0
    new-instance v3, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 201
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

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 100
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 2

    .line 64
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 66
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 69
    :cond_0
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$Mzd0hNKtIMAWHmjmg3_p-G8-BYM;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$Mzd0hNKtIMAWHmjmg3_p-G8-BYM;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    sget-object p1, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getHandler(I)Landroid/os/Handler;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 142
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 143
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 145
    :cond_0
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object p0

    .line 136
    :cond_1
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez p0, :cond_2

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createNormalThread()V

    .line 139
    :cond_2
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    return-object p0

    .line 130
    :cond_3
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez p0, :cond_4

    .line 131
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createBackgroundThread()V

    .line 133
    :cond_4
    sget-object p0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 84
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

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 186
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 192
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$execute$0(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 70
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz p2, :cond_0

    .line 73
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

    const-wide/16 v0, 0x0

    .line 116
    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 0

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x5

    .line 124
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/xui/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static removeRunnable(Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p0, :cond_4

    .line 209
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->getRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 220
    :cond_1
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :cond_2
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 236
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 92
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 95
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
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

    .line 106
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 110
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method
