.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;
.super Ljava/lang/Object;
.source "BackgroundHandler.java"


# static fields
.field private static final DEFAULT_THREAD_NAME:Ljava/lang/String; = "BackgroundHandler"


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BackgroundHandler"

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mThreadName:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearRunnables()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 82
    monitor-exit p0

    return p1

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized post(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 49
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postAtFront(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 56
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 63
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 28
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mThreadName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->clearRunnables()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandler:Landroid/os/Handler;

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
