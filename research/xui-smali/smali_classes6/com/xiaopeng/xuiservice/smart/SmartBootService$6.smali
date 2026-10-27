.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 485
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStateChanged$0(Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;)V
    .locals 4

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1302(Z)Z

    .line 524
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const-string v0, "SmartBootService"

    const-string v1, "periodicTask, isIgOn, release bootPlayer"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2002(Z)Z

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    .line 533
    :cond_1
    const-string v0, "SmartBootService"

    const-string v1, "periodicTask running..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    goto :goto_1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "periodicTask error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .line 488
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "welcome: onStateChanged, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 491
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 493
    :pswitch_0
    const-wide/16 v0, 0x0

    .line 494
    .local v0, "intervalTime":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1802(Lcom/xiaopeng/xuiservice/smart/SmartBootService;J)J

    .line 499
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 500
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    goto/16 :goto_2

    .line 503
    .end local v0    # "intervalTime":J
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2000()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2202(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 514
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 515
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 516
    const-string v1, "SmartBootService"

    const-string v3, "periodicTask already running, cancel it"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$6$ms5OvA0pV2CMnpxgTY90bPVqSDw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$6$ms5OvA0pV2CMnpxgTY90bPVqSDw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2502(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 541
    :cond_4
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2002(Z)Z

    .line 542
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1802(Lcom/xiaopeng/xuiservice/smart/SmartBootService;J)J

    .line 543
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend Enter, mBootPlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    monitor-exit v0

    .line 545
    goto :goto_2

    .line 505
    :cond_5
    :goto_0
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "suspend"

    goto :goto_1

    :cond_6
    const-string v3, "igOn"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ignore SUSPEND_ENTER event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    monitor-exit v0

    return-void

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 551
    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
