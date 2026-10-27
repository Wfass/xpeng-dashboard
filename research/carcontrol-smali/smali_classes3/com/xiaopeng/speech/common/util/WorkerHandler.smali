.class public Lcom/xiaopeng/speech/common/util/WorkerHandler;
.super Landroid/os/Handler;
.source "WorkerHandler.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public optPost(Ljava/lang/Runnable;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public optPostDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
