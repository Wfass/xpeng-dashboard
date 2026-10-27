.class public Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;
.super Ljava/lang/Object;
.source "TimeOutUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeOutUtil"

.field private static final TIMEOUT_MAX:J = 0x7530L

.field private static sBackgroundHandler:Landroid/os/Handler;

.field private static volatile sBackgroundThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createBackgroundThread()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 15
    sget-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    .line 12
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized startTimeOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "task"    # Ljava/lang/Runnable;

    const-class v0, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;

    monitor-enter v0

    .line 21
    if-nez p0, :cond_0

    .line 22
    monitor-exit v0

    return-void

    .line 24
    :cond_0
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->createBackgroundThread()V

    .line 27
    :cond_1
    sget-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    sget-object v1, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    .line 20
    .end local p0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stopTimeout()V
    .locals 2

    .line 32
    sget-object v0, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->sBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method
