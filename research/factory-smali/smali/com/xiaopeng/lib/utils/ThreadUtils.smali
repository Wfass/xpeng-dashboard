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

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
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

    .line 410
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 411
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 412
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    monitor-exit v0

    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createMainThread()V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 404
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    monitor-exit v0

    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createNormalThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 418
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    .line 420
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 421
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit v0

    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/utils/ThreadUtils;

    monitor-enter v0

    .line 429
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 430
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 436
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    sput-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 439
    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 440
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :try_start_3
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    goto :goto_1

    .line 443
    :catch_1
    move-exception v1

    .line 444
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    sput-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 449
    :cond_1
    monitor-exit v0

    return-void

    .line 428
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

    .line 248
    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 252
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createMainThread()V

    .line 254
    :cond_1
    const/4 v1, 0x0

    .line 255
    .local v1, "handler":Landroid/os/Handler;
    packed-switch p0, :pswitch_data_0

    .line 272
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 263
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 264
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createNormalThread()V

    .line 266
    :cond_2
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    .line 267
    goto :goto_0

    .line 269
    :pswitch_1
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 270
    goto :goto_0

    .line 257
    :pswitch_2
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_3

    .line 258
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createBackgroundThread()V

    .line 260
    :cond_3
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    .line 261
    nop

    .line 277
    :goto_0
    if-nez v1, :cond_4

    .line 278
    sget-object v1, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 280
    .end local v1    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :cond_4
    move-object v8, v1

    move-object v9, v8

    .line 282
    .local v9, "finalHandler":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 283
    .local v1, "myLooper":Landroid/os/Looper;
    if-nez v7, :cond_5

    .line 284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 285
    if-nez v1, :cond_5

    .line 286
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 289
    .end local v1    # "myLooper":Landroid/os/Looper;
    .local v10, "myLooper":Landroid/os/Looper;
    :cond_5
    move-object v10, v1

    move-object v11, v10

    .line 290
    .local v11, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/xiaopeng/lib/utils/ThreadUtils$2;

    move-object/from16 v12, p3

    invoke-direct {v1, v0, v12, v7, v11}, Lcom/xiaopeng/lib/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V

    move-object v13, v1

    .line 310
    .local v13, "postRunnable":Ljava/lang/Runnable;
    new-instance v14, Lcom/xiaopeng/lib/utils/ThreadUtils$3;

    move-object v1, v14

    move-object/from16 v2, p1

    move v3, v7

    move-object v4, v11

    move-object v5, v9

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils$3;-><init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 337
    .local v1, "realRunnable":Ljava/lang/Runnable;
    move-wide/from16 v2, p5

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    if-nez p1, :cond_6

    .line 340
    sget-object v5, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v6, v1, v14}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_6
    sget-object v5, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :goto_1
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

    .line 88
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 89
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 98
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 99
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 110
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p1, :cond_0

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    .line 115
    :cond_0
    move-object v1, v0

    .line 116
    .local v1, "finalHandler":Landroid/os/Handler;
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/xiaopeng/lib/utils/ThreadUtils$1;

    invoke-direct {v3, p2, p0, v1, p1}, Lcom/xiaopeng/lib/utils/ThreadUtils$1;-><init>(ILjava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "finalHandler":Landroid/os/Handler;
    :cond_1
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getLooper(I)Landroid/os/Looper;
    .locals 3
    .param p0, "threadType"    # I

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 59
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

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createNormalThread()V

    .line 57
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createMainThread()V

    .line 54
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    .line 50
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->createBackgroundThread()V

    .line 51
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

    .line 456
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

    .line 478
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

    .line 499
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

    .line 465
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

    .line 461
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

    .line 486
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

    .line 482
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

    .line 507
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

    .line 503
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

    .line 164
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 165
    return-void
.end method

.method public static post(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "preCallback"    # Ljava/lang/Runnable;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "postCallback"    # Ljava/lang/Runnable;
    .param p4, "callbackToMainThread"    # Z

    .line 142
    const-wide/16 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 143
    return-void
.end method

.method public static post(ILjava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "postCallback"    # Ljava/lang/Runnable;
    .param p3, "callbackToMainThread"    # Z

    .line 154
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 155
    return-void
.end method

.method public static postBackground(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 224
    return-void
.end method

.method public static postBackground(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 234
    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 7
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 175
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 176
    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 186
    return-void
.end method

.method public static postMainThread(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 195
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 196
    return-void
.end method

.method public static postNormal(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 204
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 205
    return-void
.end method

.method public static postNormal(Ljava/lang/Runnable;J)V
    .locals 7
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 214
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 215
    return-void
.end method

.method public static removeRunnable(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 352
    if-nez p0, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/ThreadUtils;->sRunnableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;

    .line 357
    .local v0, "map":Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;
    if-nez v0, :cond_1

    .line 358
    return-void

    .line 361
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 362
    .local v1, "realRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$RunnableMap;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 376
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 370
    :pswitch_1
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 371
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 365
    :pswitch_2
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 366
    sget-object v2, Lcom/xiaopeng/lib/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
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

    .line 69
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public static runOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runner"    # Ljava/lang/Runnable;
    .param p1, "delayMs"    # J

    .line 79
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 80
    return-void
.end method
