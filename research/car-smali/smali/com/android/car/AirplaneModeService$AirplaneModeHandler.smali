.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.super Landroid/os/Handler;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;,
        Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;,
        Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x2

.field private static final AIRPLANE_MODE_TURNING_OFF:I = 0x3

.field private static final AIRPLANE_MODE_TURNING_ON:I = 0x1

.field private static final DBG:Z = true

.field private static final MAX_ENABLE_TIME:I = 0x2328

.field private static final MAX_SHUTDOWN_TIME:I = 0x2710

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0xc8

.field private static final MSG_POWER_EVENT_PROCESSING_COMPLETE:I = 0xca

.field private static final MSG_POWER_OFF:I = 0x64

.field private static final MSG_POWER_ON:I = 0x65

.field private static final MSG_RF_STATE_CHANGED:I = 0xc9

.field private static final MSG_TIMEOUT:I = 0xcb

.field private static final NORMAL_NOTIFY_DELAY:I = 0x9c4

.field private static final NOTIFY_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AirplaneModeHandler"


# instance fields
.field private mAirplaneMode:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mBluetoothIntentFilter:Landroid/content/IntentFilter;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

.field private volatile mPowerOn:Z

.field private mRfStates:[Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

.field private mWifiIntentFilter:Landroid/content/IntentFilter;

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

.field final synthetic this$0:Lcom/android/car/AirplaneModeService;


# direct methods
.method public constructor <init>(Lcom/android/car/AirplaneModeService;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 396
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    .line 397
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    .line 359
    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 361
    new-instance v0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$1;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 368
    new-instance v0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$2;

    invoke-direct {v0, p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$2;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;)V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    new-instance v0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;

    invoke-direct {v0, p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;)V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    invoke-static {p1}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 400
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 399
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->getAirplaneMode()I

    move-result v0

    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirplaneModeHandler mAirplaneMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 405
    invoke-direct {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mapAirplaneMode2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {p1, v0}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->initIntentFilter()V

    .line 409
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->initRfStates()V

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 176
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyAirplaneModeChanged()V

    return-void
.end method

.method private cancelPowerEventProcessingCompletion()V
    .locals 1

    .line 481
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 482
    return-void
.end method

.method private getAirplaneMode()I
    .locals 1

    .line 652
    invoke-virtual {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleAirplaneModeChanged()V
    .locals 4

    .line 571
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->getAirplaneMode()I

    move-result v0

    .line 572
    .local v0, "newMode":I
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAirplaneModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mapAirplaneMode2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 574
    const/16 v1, 0xcb

    invoke-virtual {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 581
    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 582
    return-void
.end method

.method private handlePowerEventProcessingComplete()V
    .locals 2

    .line 593
    invoke-virtual {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "force set airplanceMode on"

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    .line 596
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 597
    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->setAirplaneModeOn(Z)V

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->isRfOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "handlePowerEventProcessingComplete"

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$500(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService;->access$600(Lcom/android/car/AirplaneModeService;)V

    .line 603
    :cond_1
    return-void
.end method

.method private handlePowerOff(Z)V
    .locals 4
    .param p1, "shuttingDown"    # Z

    .line 522
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    const/16 v1, 0x1388

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v2, "handlePowerOff already power off"

    invoke-static {v0, v2}, Lcom/android/car/AirplaneModeService;->access$300(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->postponePowerEventProcessingCompletion(I)V

    .line 525
    return-void

    .line 528
    :cond_0
    iget v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v2, "handlePowerOff ignore due to invalid airplane mode"

    invoke-static {v0, v2}, Lcom/android/car/AirplaneModeService;->access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->postponePowerEventProcessingCompletion(I)V

    .line 531
    return-void

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->isRfOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "handlePowerOff RfOff"

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->postponePowerEventProcessingCompletion()V

    .line 537
    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePowerOff airplane mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 540
    invoke-direct {p0, v3}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mapAirplaneMode2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v0, v2}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    .line 543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->setAirplaneModeOn(Z)V

    .line 544
    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 545
    invoke-direct {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->postponePowerEventProcessingCompletion(I)V

    .line 547
    const/16 v0, 0xcb

    const-wide/16 v1, 0x2328

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    return-void
.end method

.method private handlePowerOn()V
    .locals 3

    .line 551
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "handlePowerOn already power on"

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$300(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 553
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    .line 558
    iget v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    if-eq v1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "handlePowerOn ignore due to invalid airplane mode"

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 560
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePowerOn airplane mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 563
    invoke-direct {p0, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mapAirplaneMode2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->setAirplaneModeOn(Z)V

    .line 566
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mAirplaneMode:I

    .line 567
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->cancelPowerEventProcessingCompletion()V

    .line 568
    return-void
.end method

.method private handleRfStateChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "state"    # I

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->updateRfState(II)V

    .line 587
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->isRfOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->postponePowerEventProcessingCompletion()V

    .line 590
    :cond_0
    return-void
.end method

.method private handleTimeout()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "handleTimeout "

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method private initIntentFilter()V
    .locals 3

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothIntentFilter:Landroid/content/IntentFilter;

    .line 414
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiIntentFilter:Landroid/content/IntentFilter;

    .line 418
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    return-void
.end method

.method private initRfStates()V
    .locals 5

    .line 423
    new-instance v0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v1}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

    .line 424
    new-instance v0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v1}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    .local v0, "allStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;>;"
    new-array v1, v3, [Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    iput-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mRfStates:[Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    .line 432
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mRfStates:[Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 433
    .local v4, "state":Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
    invoke-virtual {v4}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->init()V

    .line 432
    .end local v4    # "state":Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method private isRfOff()Z
    .locals 6

    .line 623
    const/4 v0, 0x1

    .line 625
    .local v0, "allRfOff":Z
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mRfStates:[Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 626
    .local v4, "state":Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
    invoke-virtual {v4}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 628
    goto :goto_1

    .line 625
    .end local v4    # "state":Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    :cond_1
    :goto_1
    return v0
.end method

.method private mapAirplaneMode2String(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .line 661
    packed-switch p1, :pswitch_data_0

    .line 671
    const-string v0, "unknown"

    return-object v0

    .line 669
    :pswitch_0
    const-string v0, "turning off"

    return-object v0

    .line 667
    :pswitch_1
    const-string v0, "on"

    return-object v0

    .line 665
    :pswitch_2
    const-string v0, "turning on"

    return-object v0

    .line 663
    :pswitch_3
    const-string v0, "off"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyAirplaneModeChanged()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    const-string v1, "notifyAirplaneModeChanged "

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 464
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendEmptyMessage(I)Z

    .line 465
    return-void
.end method

.method private notifyRfStateChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "state"    # I

    .line 468
    const/16 v0, 0xc9

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method

.method private postponePowerEventProcessingCompletion()V
    .locals 3

    .line 473
    const/16 v0, 0xca

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    return-void
.end method

.method private postponePowerEventProcessingCompletion(I)V
    .locals 3
    .param p1, "delay"    # I

    .line 477
    int-to-long v0, p1

    const/16 v2, 0xca

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 478
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set airplane mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 640
    nop

    .line 639
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v1}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneModeOn exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/AirplaneModeService;->access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private updateRfState(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "state"    # I

    .line 611
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

    invoke-virtual {v2, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->getRfStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$500(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mBluetoothState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;

    invoke-virtual {v0, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->setRfState(I)V

    goto :goto_0

    .line 614
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    invoke-virtual {v2, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->getRfStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$500(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    invoke-virtual {v0, p2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->setRfState(I)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRfState unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/AirplaneModeService;->access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V

    .line 620
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirplaneModeHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public getShutdownTime()J
    .locals 2

    .line 438
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handleTimeout()V

    .line 514
    goto :goto_0

    .line 510
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handlePowerEventProcessingComplete()V

    .line 511
    goto :goto_0

    .line 507
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handleRfStateChanged(II)V

    .line 508
    goto :goto_0

    .line 504
    :pswitch_3
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handleAirplaneModeChanged()V

    .line 505
    goto :goto_0

    .line 501
    :pswitch_4
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handlePowerOn()V

    .line 502
    goto :goto_0

    .line 498
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->handlePowerOff(Z)V

    .line 499
    nop

    .line 518
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->this$0:Lcom/android/car/AirplaneModeService;

    invoke-static {v0}, Lcom/android/car/AirplaneModeService;->access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public notifyBluetoothStateChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 485
    nop

    .line 486
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 485
    move v1, v0

    goto :goto_0

    .line 486
    :cond_0
    const/4 v1, 0x2

    .line 485
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyRfStateChanged(II)V

    .line 487
    return-void
.end method

.method public notifyPowerOff(Z)V
    .locals 5
    .param p1, "shuttingDown"    # Z

    .line 442
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    .line 444
    .local v2, "delay":J
    iget-boolean v4, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    invoke-virtual {v4}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->isOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    const-wide/16 v2, 0x1f4

    .line 447
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 448
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 449
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    return-void
.end method

.method public notifyPowerOn()V
    .locals 3

    .line 453
    const-wide/16 v0, 0x0

    .line 454
    .local v0, "delay":J
    iget-boolean v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mPowerOn:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->mWifiState:Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;

    invoke-virtual {v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const-wide/16 v0, 0x1f4

    .line 457
    :cond_0
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 458
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->removeMessages(I)V

    .line 459
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    return-void
.end method

.method public notifyWifiStateChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 490
    nop

    .line 491
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyRfStateChanged(II)V

    .line 492
    return-void
.end method
