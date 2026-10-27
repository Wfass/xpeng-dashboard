.class Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$1;)V
    .locals 0

    .line 1323
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    return-void
.end method

.method private updateTime()Z
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;->getRemainingTime()J

    move-result-wide v0

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTime remainingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpaceCapsuleViewModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1349
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;->onUpdateTime(J)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1327
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->updateTime()Z

    move-result v2

    const-string v3, "SpaceCapsuleViewModel"

    if-eqz v2, :cond_1

    const-string v0, "TimeUpdateRunnable stopMusic"

    .line 1329
    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;->onTimeStop()V

    :cond_0
    return-void

    .line 1335
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7530

    add-long/2addr v0, v8

    sub-long/2addr v0, v4

    .line 1337
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeUpdateRunnable postDelayed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$1500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
