.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$DisconnectionTimeoutRunnable;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x4

.field private static final CONN_STATE_CONNECTING:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x8

.field private static final CONN_STATE_IDLE:I = 0x1

.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x4e20

.field private static final MTU_SIZE_MAX:I = 0x205

.field private static final RSSI_UPDATE_TIME_INTERVAL:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "TelinkOtaManager.Peripheral"


# instance fields
.field protected commandTimeoutMill:I

.field private connectionTimeout:I

.field protected device:Landroid/bluetooth/BluetoothDevice;

.field protected gatt:Landroid/bluetooth/BluetoothGatt;

.field protected isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lastTime:J

.field protected final mCommandDelayRunnable:Ljava/lang/Runnable;

.field protected final mCommandTimeoutRunnable:Ljava/lang/Runnable;

.field private mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mConnectionTimeoutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field protected final mDelayHandler:Landroid/os/Handler;

.field protected final mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

.field protected final mInputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNotificationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOutputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessLock:Ljava/lang/Object;

.field protected final mRssiUpdateHandler:Landroid/os/Handler;

.field protected final mRssiUpdateRunnable:Ljava/lang/Runnable;

.field protected mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field protected final mTimeoutHandler:Landroid/os/Handler;

.field protected mac:Ljava/lang/String;

.field protected macBytes:[B

.field protected monitorRssi:Z

.field private mtu:I

.field protected name:Ljava/lang/String;

.field protected processing:Ljava/lang/Boolean;

.field private serviceRefreshed:Z

.field protected type:I

.field protected updateIntervalMill:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 38
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->connectionTimeout:I

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$RssiUpdateRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$DisconnectionTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$DisconnectionTimeoutRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mStateLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mProcessLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    .line 68
    const/16 v1, 0x1388

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->updateIntervalMill:I

    .line 69
    const/16 v1, 0x2710

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandTimeoutMill:I

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->serviceRefreshed:Z

    .line 79
    const/16 v0, 0x17

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mtu:I

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandTimeout(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    return-void
.end method

.method private cancelCommandTimeoutTask()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method private commandCompleted()V
    .locals 2

    .line 433
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "commandCompleted"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    .line 438
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processCommand()V

    .line 441
    return-void

    .line 438
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private commandError(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 465
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "commandError"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-eqz p1, :cond_0

    .line 468
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 469
    .local v0, "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 470
    .local v1, "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->clear()V

    .line 472
    if-eqz v1, :cond_0

    .line 473
    invoke-interface {v1, p0, v0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;->error(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/String;)V

    .line 476
    .end local v0    # "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    :cond_0
    return-void
.end method

.method private commandError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 481
    .local v0, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private commandSuccess(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "data"    # Ljava/lang/Object;

    .line 445
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "commandSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 449
    .local v0, "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 450
    .local v1, "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->clear()V

    .line 452
    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1, p0, v0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;->success(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/Object;)V

    .line 456
    .end local v0    # "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    :cond_0
    return-void
.end method

.method private commandSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 461
    .local v0, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method private commandTimeout(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)Z
    .locals 3
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 485
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "commandTimeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 489
    .local v0, "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 490
    .local v1, "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->clear()V

    .line 492
    if-eqz v1, :cond_0

    .line 493
    invoke-interface {v1, p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;->timeout(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z

    move-result v2

    return v2

    .line 497
    .end local v0    # "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private disableNotification(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 7
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;

    .line 717
    const/4 v0, 0x1

    .line 718
    .local v0, "success":Z
    const-string v1, ""

    .line 720
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 722
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_2

    .line 723
    nop

    .line 724
    invoke-direct {p0, v2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 726
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_1

    .line 727
    invoke-virtual {p0, p2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 732
    const-string v1, "disable notification error"

    .line 734
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 735
    :cond_1
    const/4 v0, 0x0

    .line 736
    const-string v1, "no characteristic"

    .line 738
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    goto :goto_1

    .line 739
    :cond_2
    const/4 v0, 0x0

    .line 740
    const-string v1, "service is not offered by the remote device"

    .line 743
    :goto_1
    if-nez v0, :cond_3

    .line 744
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_2

    .line 746
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onDisableNotify()V

    .line 749
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 750
    return-void
.end method

.method private enableNotification(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 6
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;

    .line 679
    const/4 v0, 0x1

    .line 680
    .local v0, "success":Z
    const-string v1, ""

    .line 682
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 684
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_2

    .line 685
    nop

    .line 686
    invoke-direct {p0, v2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 688
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_1

    .line 689
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 691
    const-string v1, "enable notification error"

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0, p2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 697
    :cond_1
    const/4 v0, 0x0

    .line 698
    const-string v1, "no characteristic"

    .line 700
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    goto :goto_1

    .line 701
    :cond_2
    const/4 v0, 0x0

    .line 702
    const-string v1, "service is not offered by the remote device"

    .line 705
    :goto_1
    if-nez v0, :cond_3

    .line 706
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_2

    .line 708
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onEnableNotify()V

    .line 711
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 712
    return-void
.end method

.method private findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 780
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 781
    .local v3, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 782
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 784
    move-object v0, v3

    .line 785
    goto :goto_1

    .line 787
    .end local v3    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    goto :goto_0

    .line 789
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    .line 791
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 792
    .restart local v3    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    .line 793
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 795
    move-object v0, v3

    .line 796
    goto :goto_3

    .line 798
    .end local v3    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_3
    goto :goto_2

    .line 800
    :cond_4
    :goto_3
    return-object v0
.end method

.method private findWritableCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 6
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;
    .param p3, "writeType"    # I

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/16 v1, 0x8

    .line 758
    .local v1, "writeProperty":I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 759
    const/4 v1, 0x4

    .line 762
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 764
    .local v2, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 765
    .local v4, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 766
    move-object v0, v4

    .line 767
    goto :goto_1

    .line 769
    .end local v4    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    goto :goto_0

    .line 771
    :cond_2
    :goto_1
    return-object v0
.end method

.method private generateHashKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 804
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onServicesDiscoveredComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onServicesDiscovered(Ljava/util/List;)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 271
    :cond_0
    return-void
.end method

.method private postCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V
    .locals 2
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 332
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "postCommand"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processCommand()V

    .line 339
    :cond_0
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postCommandTimeoutTask()V
    .locals 4

    .line 501
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandTimeoutMill:I

    if-gtz v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandTimeoutMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method private processCommand()V
    .locals 7

    .line 343
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    monitor-exit v0

    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 352
    .local v1, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    if-nez v1, :cond_1

    .line 355
    return-void

    .line 357
    :cond_1
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 359
    .local v0, "commandType":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->ENABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->DISABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    if-eq v0, v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    .line 365
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 368
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget v2, v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->delay:I

    .line 369
    .local v2, "delay":I
    if-lez v2, :cond_4

    .line 370
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 372
    :cond_4
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    .line 374
    :goto_1
    return-void

    .line 352
    .end local v0    # "commandType":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .end local v1    # "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .end local v2    # "delay":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private declared-synchronized processCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V
    .locals 8
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 378
    .local v0, "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 380
    .local v1, "commandType":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    const-string v2, "TelinkOtaManager.Peripheral"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommand : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$2;->$SwitchMap$com$xiaopeng$xuiservice$iot$manager$remote$ota$vender$telink$Command$CommandType:[I

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 425
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 426
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->requestGattMtu(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    goto :goto_0

    .line 418
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 419
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->descriptorUUID:Ljava/util/UUID;

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->writeDescriptor(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 423
    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disableNotification(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 415
    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->enableNotification(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 411
    goto :goto_0

    .line 402
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 403
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->writeCharacteristic(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    .line 407
    goto :goto_0

    .line 396
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 397
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->descriptorUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->readDescriptor(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 400
    goto :goto_0

    .line 389
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 390
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->writeCharacteristic(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    .line 394
    goto :goto_0

    .line 384
    :pswitch_7
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommandTimeoutTask()V

    .line 385
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->readCharacteristic(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    nop

    .line 429
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .end local v1    # "commandType":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .end local p1    # "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readCharacteristic(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 5
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;

    .line 554
    const/4 v0, 0x1

    .line 555
    .local v0, "success":Z
    const-string v1, ""

    .line 557
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 559
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_2

    .line 560
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 562
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_0

    .line 563
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 564
    const/4 v0, 0x0

    .line 565
    const-string v1, "read characteristic error"

    goto :goto_0

    .line 568
    :cond_0
    const/4 v0, 0x0

    .line 569
    const-string v1, "read characteristic error"

    .line 571
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    :goto_0
    goto :goto_1

    .line 572
    :cond_2
    const/4 v0, 0x0

    .line 573
    const-string v1, "service is not offered by the remote device"

    .line 576
    :goto_1
    if-nez v0, :cond_3

    .line 577
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 580
    :cond_3
    return-void
.end method

.method private readDescriptor(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 6
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;
    .param p4, "descriptorUUID"    # Ljava/util/UUID;

    .line 517
    const/4 v0, 0x1

    .line 518
    .local v0, "success":Z
    const-string v1, ""

    .line 520
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 522
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_3

    .line 523
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 525
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_2

    .line 526
    invoke-virtual {v3, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    .line 527
    .local v4, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v4, :cond_0

    .line 528
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 529
    const/4 v0, 0x0

    .line 530
    const-string v1, "read descriptor error"

    goto :goto_0

    .line 533
    :cond_0
    const/4 v0, 0x0

    .line 534
    const-string v1, "read descriptor error"

    .line 536
    .end local v4    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    :goto_0
    goto :goto_1

    .line 537
    :cond_2
    const/4 v0, 0x0

    .line 538
    const-string v1, "read characteristic error"

    .line 540
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_1
    goto :goto_2

    .line 541
    :cond_3
    const/4 v0, 0x0

    .line 542
    const-string v1, "service is not offered by the remote device"

    .line 545
    :goto_2
    if-nez v0, :cond_4

    .line 546
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 549
    :cond_4
    return-void
.end method

.method private requestGattMtu(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V
    .locals 4
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 657
    const/4 v0, 0x1

    .line 658
    .local v0, "success":Z
    const-string v1, ""

    .line 660
    .local v1, "errorMsg":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 661
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->mtu:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    const-string v1, "request mtu error"

    .line 663
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    :cond_0
    const-string v1, "request mtu not support"

    .line 667
    const/4 v0, 0x0

    .line 670
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 671
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 674
    :cond_2
    return-void
.end method

.method private writeCharacteristic(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 5
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;
    .param p4, "writeType"    # I
    .param p5, "data"    # [B

    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, "success":Z
    const-string v1, ""

    .line 588
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 590
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_2

    .line 591
    nop

    .line 592
    invoke-direct {p0, v2, p3, p4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->findWritableCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 594
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {v3, p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 597
    invoke-virtual {v3, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 599
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 600
    const/4 v0, 0x0

    .line 601
    const-string/jumbo v1, "write characteristic error"

    goto :goto_0

    .line 605
    :cond_0
    const/4 v0, 0x0

    .line 606
    const-string v1, "no characteristic"

    .line 608
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    :goto_0
    goto :goto_1

    .line 609
    :cond_2
    const/4 v0, 0x0

    .line 610
    const-string v1, "service is not offered by the remote device"

    .line 613
    :goto_1
    if-nez v0, :cond_3

    .line 614
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 617
    :cond_3
    return-void
.end method

.method private writeDescriptor(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 6
    .param p1, "commandContext"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;
    .param p4, "descriptorUUID"    # Ljava/util/UUID;
    .param p5, "data"    # [B

    .line 622
    const/4 v0, 0x1

    .line 623
    .local v0, "success":Z
    const-string v1, ""

    .line 625
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 627
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_3

    .line 628
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 629
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v3, :cond_2

    .line 630
    invoke-virtual {v3, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    .line 631
    .local v4, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v4, :cond_0

    .line 632
    invoke-virtual {v4, p5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 633
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 634
    const/4 v0, 0x0

    .line 635
    const-string/jumbo v1, "write descriptor error"

    goto :goto_0

    .line 638
    :cond_0
    const/4 v0, 0x0

    .line 639
    const-string v1, "no descriptor"

    .line 641
    .end local v4    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    :goto_0
    goto :goto_1

    .line 642
    :cond_2
    const/4 v0, 0x0

    .line 643
    const-string v1, "no characteristic"

    .line 645
    .end local v3    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_1
    goto :goto_2

    .line 646
    :cond_3
    const/4 v0, 0x0

    .line 647
    const-string v1, "service is not offered by the remote device"

    .line 650
    :goto_2
    if-nez v0, :cond_4

    .line 651
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 652
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 654
    :cond_4
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 2

    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->processing:Ljava/lang/Boolean;

    .line 209
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->serviceRefreshed:Z

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->stopMonitoringRssi()V

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method protected connect()V
    .locals 5

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->lastTime:J

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 156
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v2, "connect start"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v4, p0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v4, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disconnect()Z

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 166
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onDisconnect(I)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->connectionTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_3
    :goto_1
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onConnect()V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mServices:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mServices:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onServicesDiscoveredComplete(Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->connect()V

    .line 150
    :cond_2
    :goto_0
    return-void
.end method

.method public disconnect()Z
    .locals 7

    .line 174
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->clear()V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 178
    .local v0, "connState":I
    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 179
    return v4

    .line 180
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 181
    if-ne v0, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0

    .line 184
    :cond_1
    if-ne v0, v3, :cond_2

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 188
    return v4

    .line 195
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return v6

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 192
    return v4
.end method

.method protected enableMonitorRssi(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->updateIntervalMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    :goto_0
    return-void
.end method

.method protected forceDisconnect()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 205
    return-void
.end method

.method protected generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 2
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMacBytes()[B
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->macBytes:[B

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "strArray":[Ljava/lang/String;
    array-length v1, v0

    .line 107
    .local v1, "length":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->macBytes:[B

    .line 109
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 110
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->macBytes:[B

    aget-object v5, v0, v3

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->macBytes:[B

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->reverse([BII)[B

    .line 116
    .end local v0    # "strArray":[Ljava/lang/String;
    .end local v1    # "length":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->macBytes:[B

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mtu:I

    return v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->type:I

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 849
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 851
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->generateHashKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 854
    .local v1, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    iget-object v5, v5, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 859
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 865
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 867
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 869
    if-nez p3, :cond_0

    .line 870
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 871
    .local v0, "data":[B
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    .line 872
    .end local v0    # "data":[B
    goto :goto_0

    .line 873
    :cond_0
    const-string v0, "read characteristic failed"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 876
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 877
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 883
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 885
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 887
    if-nez p3, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 890
    :cond_0
    const-string/jumbo v0, "write characteristic fail"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 893
    :goto_0
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite newStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 896
    return-void
.end method

.method protected onConnect()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->monitorRssi:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->enableMonitorRssi(Z)V

    .line 257
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 820
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange  status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 825
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onConnect()V

    goto :goto_1

    .line 828
    :cond_1
    :goto_0
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote service discovery has been stopped status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disconnect()Z

    goto :goto_1

    .line 825
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_2
    const-string v1, "TelinkOtaManager.Peripheral"

    const-string v2, "Close"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_3

    .line 838
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 840
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->clear()V

    .line 841
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 842
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onDisconnect(I)V

    .line 843
    monitor-exit v0

    .line 845
    :goto_1
    return-void

    .line 843
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 902
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 904
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 906
    if-nez p3, :cond_0

    .line 907
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    .line 908
    .local v0, "data":[B
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    .line 909
    .end local v0    # "data":[B
    goto :goto_0

    .line 910
    :cond_0
    const-string v0, "read description failed"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 913
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 914
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 920
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 922
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 924
    if-nez p3, :cond_0

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 927
    :cond_0
    const-string/jumbo v0, "write description failed"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 930
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 931
    return-void
.end method

.method protected onDisableNotify()V
    .locals 0

    .line 311
    return-void
.end method

.method protected onDisconnect(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->enableMonitorRssi(Z)V

    .line 262
    return-void
.end method

.method protected onEnableNotify()V
    .locals 0

    .line 308
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 959
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 960
    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mtu:I

    .line 961
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->cancelCommandTimeoutTask()V

    .line 963
    if-nez p3, :cond_0

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 966
    :cond_0
    const-string v0, "request mtu callback fail"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandError(Ljava/lang/String;)V

    .line 968
    :goto_0
    const-string v0, "TelinkOtaManager.Peripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtu changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->commandCompleted()V

    .line 970
    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "characteristicUUID"    # Ljava/util/UUID;
    .param p4, "tag"    # Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 950
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 951
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 974
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    .line 975
    return-void
.end method

.method protected onRssiChanged()V
    .locals 0

    .line 314
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 935
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 937
    if-nez p2, :cond_0

    .line 938
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 939
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mServices:Ljava/util/List;

    .line 940
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onServicesDiscoveredComplete(Ljava/util/List;)V

    .line 941
    const-string v1, "TelinkOtaManager.Peripheral"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service discovery success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    goto :goto_0

    .line 943
    :cond_0
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v1, "Service discovery failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disconnect()Z

    .line 946
    :goto_0
    return-void
.end method

.method protected onServicesDiscovered(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    return-void
.end method

.method public refreshCache()Z
    .locals 8

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v2, "refresh error: gatt null"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v1

    .line 278
    :cond_0
    const-string v0, "TelinkOtaManager.Peripheral"

    const-string v2, "Device#refreshCache#prepare"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 282
    .local v0, "localBluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 283
    .local v2, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 284
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 285
    .local v3, "bool":Z
    if-eqz v3, :cond_1

    .line 286
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mDelayHandler:Landroid/os/Handler;

    new-instance v5, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    return v3

    .line 297
    .end local v0    # "localBluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    .end local v2    # "localMethod":Ljava/lang/reflect/Method;
    .end local v3    # "bool":Z
    :cond_2
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, "TelinkOtaManager.Peripheral"

    const-string v3, "An exception occurs while refreshing device"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v0    # "localException":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public final requestConnectionPriority(I)Z
    .locals 2
    .param p1, "connectionPriority"    # I

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 247
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0
.end method

.method public sendCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    .param p2, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 221
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 222
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)V

    .line 225
    .local v0, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->postCommand(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    .line 227
    const/4 v1, 0x1

    return v1

    .line 222
    .end local v0    # "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .line 124
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->connectionTimeout:I

    .line 125
    return-void
.end method

.method public final startMonitoringRssi(I)V
    .locals 1
    .param p1, "interval"    # I

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->monitorRssi:Z

    .line 233
    if-gtz p1, :cond_0

    .line 234
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->updateIntervalMill:I

    goto :goto_0

    .line 236
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->updateIntervalMill:I

    .line 237
    :goto_0
    return-void
.end method

.method public final stopMonitoringRssi()V
    .locals 2

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->monitorRssi:Z

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
