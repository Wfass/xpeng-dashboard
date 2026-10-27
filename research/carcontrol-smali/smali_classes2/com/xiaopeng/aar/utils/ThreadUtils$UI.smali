.class public Lcom/xiaopeng/aar/utils/ThreadUtils$UI;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UI"
.end annotation


# static fields
.field private static volatile sMainThread:Ljava/lang/Thread;

.field private static volatile sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 3

    .line 45
    sget-object v0, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThreadHandler:Landroid/os/Handler;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 34
    sget-object v0, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThread:Ljava/lang/Thread;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static postDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/aar/utils/ThreadUtils$UI;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
