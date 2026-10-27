.class public final Lcom/xiaopeng/xui/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

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

    .line 37
    const-class v0, Lcom/xiaopeng/xui/utils/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    .line 52
    const/16 v0, 0x8

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
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundThread:Landroid/os/HandlerThread;

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

    .line 250
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

    .line 244
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
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalThread:Landroid/os/HandlerThread;

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

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static doPost(ILjava/lang/Runnable;J)V
    .locals 6
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 150
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 153
    :cond_0
    if-eqz p1, :cond_4

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 178
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 171
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createNormalThread()V

    .line 175
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    .line 176
    .local v0, "handler":Landroid/os/Handler;
    goto :goto_0

    .line 164
    .end local v0    # "handler":Landroid/os/Handler;
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 165
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 168
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 169
    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 157
    .end local v0    # "handler":Landroid/os/Handler;
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 158
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createBackgroundThread()V

    .line 161
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    .line 162
    .restart local v0    # "handler":Landroid/os/Handler;
    nop

    .line 178
    :goto_0
    nop

    .line 182
    new-instance v1, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$QHvdlp9-gboHSTVZn8d2r5uqEgA;

    .local v1, "postRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p1}, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$QHvdlp9-gboHSTVZn8d2r5uqEgA;-><init>(Ljava/lang/Runnable;)V

    .line 199
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 200
    :try_start_0
    sget-object v3, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    new-instance v4, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "postRunnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 201
    .restart local v0    # "handler":Landroid/os/Handler;
    .restart local v1    # "postRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 205
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "postRunnable":Ljava/lang/Runnable;
    :cond_4
    :goto_1
    return-void

    nop

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

    .line 99
    if-eqz p0, :cond_0

    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 102
    :cond_0
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 64
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 66
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 69
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$qknhvixOwRkTPKqfiC3qpMI47b4;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaopeng/xui/utils/-$$Lambda$ThreadUtils$qknhvixOwRkTPKqfiC3qpMI47b4;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public static getHandler(I)Landroid/os/Handler;
    .locals 1
    .param p0, "threadType"    # I

    .line 128
    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 142
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 145
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0

    .line 136
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createNormalThread()V

    .line 139
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    return-object v0

    .line 130
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 131
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createBackgroundThread()V

    .line 133
    :cond_4
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    return-object v0
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
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 184
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    goto :goto_1

    .line 191
    :catch_1
    move-exception v1

    .line 192
    .restart local v1    # "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method static synthetic lambda$execute$0(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "priority"    # I
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 70
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 72
    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;)V
    .locals 2
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 116
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 117
    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 0
    .param p0, "threadType"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    .line 121
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 124
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/xui/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;J)V

    .line 125
    return-void
.end method

.method public static removeRunnable(Ljava/lang/Runnable;)V
    .locals 5
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 208
    if-eqz p0, :cond_1

    .line 209
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;

    .line 210
    .local v0, "map":Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 212
    .local v1, "realRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 226
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sNormalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 220
    :pswitch_1
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 221
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :pswitch_2
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    :goto_0
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->sRunnableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "map":Lcom/xiaopeng/xui/utils/ThreadUtils$RunnableMap;
    .end local v1    # "realRunnable":Ljava/lang/Runnable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runner"    # Ljava/lang/Runnable;

    .line 88
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 89
    return-void
.end method

.method public static runOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runner"    # Ljava/lang/Runnable;
    .param p1, "delayMs"    # J

    .line 92
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->createMainThread()V

    .line 95
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    sget-object v1, Lcom/xiaopeng/xui/utils/ThreadUtils;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/xui/utils/ThreadUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
