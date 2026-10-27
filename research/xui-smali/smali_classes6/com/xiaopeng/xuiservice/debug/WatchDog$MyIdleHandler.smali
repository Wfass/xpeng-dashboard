.class Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;
.super Ljava/lang/Object;
.source "WatchDog.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyIdleHandler"
.end annotation


# instance fields
.field public mIdleHandler:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method public constructor <init>(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 559
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 8

    .line 563
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueIdle,handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v0, :cond_1

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 566
    .local v0, "tick":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$600()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$600()Landroid/os/Handler;

    move-result-object v3

    .line 567
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 566
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-interface {v2}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v2

    .line 570
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 571
    .local v3, "delta":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$600()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    const-wide/16 v5, 0x1f4

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 573
    const-string v5, "XuiWatchDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueIdle cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms,handler="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    return v2

    .line 577
    .end local v0    # "tick":J
    .end local v2    # "ret":Z
    .end local v3    # "delta":J
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
