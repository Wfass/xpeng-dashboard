.class Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "DelayedStop.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;


# instance fields
.field private final delay:J

.field private futureForCancel:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final original:Lcom/xiaopeng/xuiservice/smart/action/Action;

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "original"    # Lcom/xiaopeng/xuiservice/smart/action/Action;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->original:Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 18
    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->delay:J

    .line 19
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->unit:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 46
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 50
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->stop()V

    .line 53
    return-void
.end method

.method public onActionStarted(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->original:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->delay:J

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 41
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->original:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->start()V

    .line 26
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->futureForCancel:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->original:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;->original:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
