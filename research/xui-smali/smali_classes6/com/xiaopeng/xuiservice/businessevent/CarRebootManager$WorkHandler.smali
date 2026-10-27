.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;
.super Landroid/os/Handler;
.source "CarRebootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public optPost(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :goto_0
    return-void
.end method

.method public optPostDelay(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :goto_0
    return-void
.end method
