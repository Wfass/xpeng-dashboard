.class public Lcom/xiaopeng/lib/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;,
        Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtils"

.field public static final THREAD_BACKGROUND:I = 0x0

.field public static final THREAD_NORMAL:I = 0x2

.field private static final THREAD_POOL_SIZE:I = 0x4

.field public static final THREAD_UI:I = 0x1

.field private static sBackgroundHandler:Landroid/os/Handler;

.field private static volatile sBackgroundThread:Landroid/os/HandlerThread;

.field private static sMainThreadHandler:Landroid/os/Handler;

.field private static sNormalHandler:Landroid/os/Handler;

.field private static volatile sNormalThread:Landroid/os/HandlerThread;

.field private static sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;-><init>(Lcom/xiaopeng/lib/utils/ThreadUtils$1;)V

    const-string v1, "order-%d"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->setDaemon(Z)Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized createBackgroundThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 411
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 413
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 414
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    monitor-exit v0

    return-void

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createMainThread()V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 405
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    monitor-exit v0

    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createNormalThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 419
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 420
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    .line 421
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 422
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    monitor-exit v0

    return-void

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 430
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 431
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    sput-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 440
    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 441
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :try_start_3
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    goto :goto_1

    .line 444
    :catch_1
    move-exception v1

    .line 445
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 447
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    sput-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 450
    :cond_1
    monitor-exit v0

    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
    .locals 15
    .param p0, "threadType"    # I
    .param p1, "preCallback"    # Ljava/lang/Runnable;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "postCallback"    # Ljava/lang/Runnable;
    .param p4, "callbackToMainThread"    # Z
    .param p5, "delayMillis"    # J

    move-object/from16 v0, p2

    move/from16 v7, p4

    .line 249
    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 253
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createMainThread()V

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 256
    .local v1, "handler":Landroid/os/Handler;
    packed-switch p0, :pswitch_data_0

    .line 273
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 264
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 265
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createNormalThread()V

    .line 267
    :cond_2
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    .line 268
    goto :goto_0

    .line 270
    :pswitch_1
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 271
    goto :goto_0

    .line 258
    :pswitch_2
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_3

    .line 259
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createBackgroundThread()V

    .line 261
    :cond_3
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    .line 262
    nop

    .line 278
    :goto_0
    if-nez v1, :cond_4

    .line 279
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 281
    .end local v1    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :cond_4
    move-object v8, v1

    move-object v9, v8

    .line 283
    .local v9, "finalHandler":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 284
    .local v1, "myLooper":Landroid/os/Looper;
    if-nez v7, :cond_5

    .line 285
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 286
    if-nez v1, :cond_5

    .line 287
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 290
    .end local v1    # "myLooper":Landroid/os/Looper;
    .local v10, "myLooper":Landroid/os/Looper;
    :cond_5
    move-object v10, v1

    move-object v11, v10

    .line 291
    .local v11, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/xiaopeng/lib/utils/ThreadUtils$2;

    move-object/from16 v12, p3

    invoke-direct {v1, v0, v12, v7, v11}, Lcom/xiaopeng/lib/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V

    move-object v13, v1

    .line 311
    .local v13, "postRunnable":Ljava/lang/Runnable;
    new-instance v14, Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    move-object v1, v14

    move-object/from16 v2, p1

    move v3, v7

    move-object v4, v11

    move-object v5, v9

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils$3;-><init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 338
    .local v1, "realRunnable":Ljava/lang/Runnable;
    if-nez p1, :cond_6

    .line 339
    sget-object v3, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 341
    :cond_6
    sget-object v3, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v13, v5}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :goto_1
    const-string v3, "ThreadUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    move-wide/from16 v3, p5

    invoke-virtual {v9, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 89
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 90
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 99
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 100
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 111
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p1, :cond_0

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    .line 116
    :cond_0
    move-object v1, v0

    .line 117
    .local v1, "finalHandler":Landroid/os/Handler;
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/xiaopeng/lib/utils/ThreadUtils$1;

    invoke-direct {v3, p2, p0, v1, p1}, Lcom/xiaopeng/lib/utils/ThreadUtils$1;-><init>(ILjava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "finalHandler":Landroid/os/Handler;
    :cond_1
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getLooper(I)Landroid/os/Looper;
    .locals 3
    .param p0, "threadType"    # I

    .line 49
    packed-switch p0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid threadType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createNormalThread()V

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createMainThread()V

    .line 55
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createBackgroundThread()V

    .line 52
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasCallbacksOnBackground(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 457
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasCallbacksOnMain(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 479
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasCallbacksOnNormal(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 500
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnBackground(I)Z
    .locals 1
    .param p0, "what"    # I

    .line 466
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnBackground(ILjava/lang/Object;)Z
    .locals 1
    .param p0, "what"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnMain(I)Z
    .locals 1
    .param p0, "what"    # I

    .line 487
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnMain(ILjava/lang/Object;)Z
    .locals 1
    .param p0, "what"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnNormal(I)Z
    .locals 1
    .param p0, "what"    # I

    .line 508
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMessagesOnNormal(ILjava/lang/Object;)Z
    .locals 1
    .param p0, "what"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static post(ILjava/lang/Runnable;)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 165
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 166
    return-void
.end method

.method public static post(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "preCallback"    # Ljava/lang/Runnable;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "postCallback"    # Ljava/lang/Runnable;
    .param p4, "callbackToMainThread"    # Z

    .line 143
    const-wide/16 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 144
    return-void
.end method

.method public static post(ILjava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "postCallback"    # Ljava/lang/Runnable;
    .param p3, "callbackToMainThread"    # Z

    .line 155
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 156
    return-void
.end method

.method public static postBackground(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 225
    return-void
.end method

.method public static postBackground(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 235
    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 176
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 177
    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 186
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 187
    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 196
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 197
    return-void
.end method

.method public static postNormal(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 205
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 206
    return-void
.end method

.method public static postNormal(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 215
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 216
    return-void
.end method

.method public static removeRunnable(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 353
    if-nez p0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    .line 358
    .local v0, "map":Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;
    if-nez v0, :cond_1

    .line 359
    return-void

    .line 362
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 363
    .local v1, "realRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 377
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 371
    :pswitch_1
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 372
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 366
    :pswitch_2
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 367
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runner"    # Ljava/lang/Runnable;

    .line 70
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public static runOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runner"    # Ljava/lang/Runnable;
    .param p1, "delayMs"    # J

    .line 80
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 81
    return-void
.end method
