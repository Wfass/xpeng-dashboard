.class public Lcom/android/car/CarPowerManagementService;
.super Landroid/car/hardware/power/ICarPower$Stub;
.source "CarPowerManagementService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/PowerHalService$PowerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;,
        Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;,
        Lcom/android/car/CarPowerManagementService$PowerHandler;,
        Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;,
        Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;,
        Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    }
.end annotation


# static fields
.field private static final ANTI_SHAKE_TIME_INTERVAL:J = 0x258L

.field private static final APP_EXTEND_MAX_MS:I = 0x1388

.field private static final SHUTDOWN_EXTEND_MAX_MS:I = 0x1388

.field private static final SHUTDOWN_POLLING_INTERVAL_MS:I = 0x7d0

.field private static final XP_LCD_GPIO_INDICATORS_FILE:Ljava/lang/String; = "/sys/class/gpio_indicators/gpio_indicators/attrs/lcd_gpio"

.field private static final XP_POWER_STATE:Ljava/lang/String; = "sys.xiaopeng.power_state"

.field private static final XP_SLEEP_GPIO_INDICATORS_FILE:Ljava/lang/String; = "/sys/class/gpio_indicators/gpio_indicators/attrs/sleep_gpio"


# instance fields
.field private mBootComplete:Z

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mBootReason:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mHal:Lcom/android/car/hal/PowerHalService;

.field private mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mHandlerPowerTime:J

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIsSleep:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIsSleeping:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastSleepEntryTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPowerStates:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/hal/PowerHalService$PowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManagerListenerTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

.field private mProcessingStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mShutdownOnNextSuspend:Z

.field private mSuspendModeEnabled:Z

.field private final mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

.field private mTimer:Ljava/util/Timer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mTokenValue:I


# direct methods
.method protected constructor <init>()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    invoke-direct {p0}, Landroid/car/hardware/power/ICarPower$Stub;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mTokenValue:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 135
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    .line 142
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnNextSuspend:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mBootComplete:Z

    .line 264
    new-instance v0, Lcom/android/car/CarPowerManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarPowerManagementService$1;-><init>(Lcom/android/car/CarPowerManagementService;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    .line 209
    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    .line 210
    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 211
    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 212
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PowerHalService;Lcom/android/car/systeminterface/SystemInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerHal"    # Lcom/android/car/hal/PowerHalService;
    .param p3, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;

    .line 196
    invoke-direct {p0}, Landroid/car/hardware/power/ICarPower$Stub;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mTokenValue:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 135
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    .line 142
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnNextSuspend:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mBootComplete:Z

    .line 264
    new-instance v0, Lcom/android/car/CarPowerManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarPowerManagementService$1;-><init>(Lcom/android/car/CarPowerManagementService;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    .line 199
    iput-object p3, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarPowerManagementService;Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandlePowerStateChange()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/CarPowerManagementService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleDisplayBrightnessChange(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/CarPowerManagementService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleMainDisplayStateChange(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/CarPowerManagementService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleProcessingComplete(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleNotifyPowerOn()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/car/CarPowerManagementService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/car/CarPowerManagementService;->mBootComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/hal/PowerHalService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 57
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 57
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    return-object v0
.end method

.method private doHandleDeepSleep()V
    .locals 5

    .line 727
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->switchToPartialWakeLock()V

    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 731
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 732
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 733
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;

    .line 734
    .local v2, "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    invoke-interface {v2}, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;->onSleepEntry()V

    .line 735
    .end local v2    # "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    goto :goto_0

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->getWakeupTime()I

    move-result v1

    .line 737
    .local v1, "wakeupTimeSec":I
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v2}, Lcom/android/car/hal/PowerHalService;->sendSleepEntry()V

    .line 738
    monitor-enter p0

    .line 739
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    .line 740
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    .line 741
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 742
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    const-string v3, "CAR.POWER"

    const-string v4, "enter autosuspend mode"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iput-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    .line 760
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v3}, Lcom/android/car/systeminterface/SystemInterface;->releasePartialWakeLock()V

    .line 761
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v3, v2}, Lcom/android/car/systeminterface/SystemInterface;->setAutoSuspendMode(Z)V

    .line 763
    return-void

    .line 742
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 731
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    .end local v1    # "wakeupTimeSec":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private doHandleDisplayBrightnessChange(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 916
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0, p1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayBrightness(I)V

    .line 917
    return-void
.end method

.method private doHandleMainDisplayStateChange(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 920
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented:  doHandleMainDisplayStateChange() - on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method

.method private doHandleNotifyPowerOn()V
    .locals 3

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "displayOn":Z
    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    iget v1, v1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 817
    const/4 v0, 0x1

    .line 819
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 822
    .local v2, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    invoke-virtual {v2, v0}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->callOnPowerOn(Z)V

    .line 823
    .end local v2    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    goto :goto_0

    .line 824
    :cond_1
    return-void

    .line 819
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doHandlePowerStateChange()V
    .locals 7

    .line 431
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mBootComplete:Z

    if-nez v0, :cond_0

    .line 432
    const-string v0, "CAR.POWER"

    const-string v1, "system not boot complete!!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 438
    .local v0, "state":Lcom/android/car/hal/PowerHalService$PowerState;
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v2}, Lcom/android/car/hal/PowerHalService;->getBatteryState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/systeminterface/SystemInterface;->setCarBatteryState(I)V

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "isSleep":Z
    const/4 v2, 0x0

    .line 441
    .local v2, "isSleeping":Z
    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/hal/PowerHalService$PowerState;

    move-object v0, v3

    .line 443
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 444
    if-nez v0, :cond_1

    .line 445
    monitor-exit p0

    return-void

    .line 447
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->needPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 448
    monitor-exit p0

    return-void

    .line 451
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 452
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 453
    .local v3, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/car/CarPowerManagementService;->mHandlerPowerTime:J

    .line 454
    iget-boolean v4, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    move v1, v4

    .line 455
    iget-boolean v4, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    move v2, v4

    .line 456
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-static {v3}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 458
    const/4 v4, 0x3

    if-eqz v1, :cond_3

    iget v5, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    if-eq v5, v4, :cond_3

    .line 459
    const-string v5, "CAR.POWER"

    const-string v6, "wake up!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleSleepFinish()Z

    move-result v5

    if-nez v5, :cond_3

    .line 461
    return-void

    .line 464
    :cond_3
    if-eqz v2, :cond_4

    iget v5, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    if-ne v5, v4, :cond_4

    iget v4, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 466
    const-string v4, "CAR.POWER"

    const-string v5, "going to Sleep!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 469
    :cond_4
    if-eqz v0, :cond_5

    .line 470
    iget v4, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {p0, v4}, Lcom/android/car/CarPowerManagementService;->onBootReasonReceived(I)V

    .line 472
    :cond_5
    const-string v4, "CAR.POWER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power state change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v4, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    if-nez v4, :cond_6

    .line 488
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 489
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleShutdownPrepare(Lcom/android/car/hal/PowerHalService$PowerState;)V

    goto :goto_0

    .line 475
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerStateChanged()V

    .line 476
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleFakeSleep(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 477
    invoke-virtual {p0, v5}, Lcom/android/car/CarPowerManagementService;->notifyPowerOn(Z)V

    .line 478
    iput-boolean v5, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 479
    goto :goto_0

    .line 482
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleStateOnFull(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 483
    iput-boolean v5, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    .line 484
    nop

    .line 496
    :cond_6
    :goto_0
    return-void

    .line 456
    .end local v3    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doHandlePreprocessing(Z)V
    .locals 10
    .param p1, "shuttingDown"    # Z

    .line 655
    const-wide/16 v0, 0x0

    .line 656
    .local v0, "processingTimeMs":J
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 657
    .local v3, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    invoke-virtual {v3, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->callOnPrepareShutdown(Z)J

    move-result-wide v6

    .line 658
    .local v6, "handlerProcessingTime":J
    cmp-long v4, v6, v4

    if-lez v4, :cond_0

    .line 659
    invoke-virtual {v3, v6, v7}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->setProcessingTimeAndResetProcessingDone(J)V

    .line 661
    :cond_0
    cmp-long v4, v6, v0

    if-lez v4, :cond_1

    .line 662
    move-wide v0, v6

    .line 664
    .end local v3    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    .end local v6    # "handlerProcessingTime":J
    :cond_1
    goto :goto_0

    .line 669
    :cond_2
    monitor-enter p0

    .line 670
    :try_start_0
    const-string v2, "CAR.POWER"

    const-string v3, "Update processing start time"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    .line 672
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 675
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(Z)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 676
    .end local v0    # "processingTimeMs":J
    .local v2, "processingTimeMs":J
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 677
    const-wide/16 v0, 0x7d0

    div-long v0, v2, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 678
    .local v0, "pollingCount":I
    const-string v1, "CAR.POWER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processing before shutdown expected for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, adding polling:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    monitor-enter p0

    .line 681
    :try_start_1
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 682
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    .line 683
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    new-instance v5, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;

    const/4 v1, 0x0

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;-><init>(Lcom/android/car/CarPowerManagementService;ZILcom/android/car/CarPowerManagementService$1;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7d0

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 687
    monitor-exit p0

    .line 688
    .end local v0    # "pollingCount":I
    goto :goto_1

    .line 687
    .restart local v0    # "pollingCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 690
    .end local v0    # "pollingCount":I
    :cond_3
    monitor-enter p0

    .line 691
    :try_start_2
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 692
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 693
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V

    .line 695
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :goto_1
    return-void

    .line 692
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 672
    .end local v2    # "processingTimeMs":J
    .local v0, "processingTimeMs":J
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method private doHandleProcessingComplete(Z)V
    .locals 5
    .param p1, "shutdownWhenCompleted"    # Z

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    monitor-enter p0

    .line 880
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 881
    if-nez p1, :cond_0

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    iget-wide v3, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 883
    const-string v1, "CAR.POWER"

    const-string v2, "Duplicate sleep entry request, ignore"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    monitor-exit p0

    return-void

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    move-object v0, v1

    .line 887
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 895
    :cond_1
    if-eqz p1, :cond_2

    .line 896
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleShutdown()V

    goto :goto_0

    .line 898
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleDeepSleep()V

    .line 900
    :goto_0
    return-void

    .line 891
    :cond_3
    :goto_1
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing complete error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 887
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doHandleShutdown()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;

    .line 856
    .local v1, "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    invoke-interface {v1}, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;->onShutdown()V

    .line 857
    .end local v1    # "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    goto :goto_0

    .line 858
    :cond_0
    const/4 v0, 0x0

    .line 859
    .local v0, "wakeupTimeSec":I
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/PowerHalService;->isTimedWakeupAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->getWakeupTime()I

    move-result v0

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1, v0}, Lcom/android/car/hal/PowerHalService;->sendShutdownStart(I)V

    .line 863
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->shutdown()V

    .line 864
    return-void
.end method

.method private doHandleSleepFinish()Z
    .locals 5

    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    .line 769
    .local v0, "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 770
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 776
    :cond_0
    const-string v2, "CAR.POWER"

    const-string v3, "exit autosuspend mode"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->acquirePartialWakeLock()V

    .line 778
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2, v1}, Lcom/android/car/systeminterface/SystemInterface;->setAutoSuspendMode(Z)V

    .line 779
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    .line 781
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v2}, Lcom/android/car/hal/PowerHalService;->sendSleepExit()V

    .line 782
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;

    .line 783
    .local v3, "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    invoke-interface {v3}, Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;->onSleepExit()V

    .line 784
    .end local v3    # "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    goto :goto_0

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->isWakeupCausedByTimer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 787
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerStateChanged()V

    .line 788
    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->doHandlePreprocessing(Z)V

    .line 789
    return v1

    .line 791
    :cond_2
    monitor-enter p0

    .line 792
    :try_start_1
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    .line 793
    monitor-exit p0

    .line 794
    const/4 v1, 0x1

    return v1

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 772
    :cond_3
    :goto_1
    const-string v2, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep finish but power state error!!!: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v1

    .line 769
    .end local v0    # "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 957
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 959
    .local v0, "found":Z
    if-eqz v0, :cond_1

    .line 961
    invoke-interface {p1}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 962
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    monitor-enter v2

    .line 963
    :try_start_0
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 964
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 965
    .local v3, "token":I
    invoke-direct {p0, v1, v3}, Lcom/android/car/CarPowerManagementService;->finishedLocked(Landroid/os/IBinder;I)V

    .line 967
    .end local v3    # "token":I
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 969
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpInfo()V
    .locals 8

    .line 628
    :try_start_0
    const-string v0, "/sys/touch_debug/is_trigger"

    const-string v1, "s"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-wide/16 v0, 0x1770

    .line 630
    .local v0, "timeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 632
    .local v2, "startTime":J
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long v4, v0, v4

    .line 634
    .local v4, "rem":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 635
    const-string v6, "sys.dump.info"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 636
    goto :goto_1

    .line 638
    :cond_0
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v6, v2

    sub-long v4, v0, v6

    goto :goto_0

    .line 643
    .end local v0    # "timeout":J
    .end local v2    # "startTime":J
    .end local v4    # "rem":J
    :cond_1
    :goto_1
    goto :goto_2

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpcoreinfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private finishedLocked(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # I

    .line 1027
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    iget v0, v0, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1031
    const-string v0, "CAR.POWER"

    const-string v1, "Apps are finished, call notifyPowerEventProcessingCompletion"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService;->notifyPowerEventProcessingCompletion(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 1035
    :cond_0
    return-void
.end method

.method private static getValueFromFile(Ljava/lang/String;)I
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, -0x1

    .line 162
    .local v1, "ret":I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 163
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 164
    .local v2, "buf":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "fileContents":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 166
    if-eqz v3, :cond_0

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 169
    :cond_0
    nop

    .line 173
    nop

    .line 175
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v4

    .line 169
    :goto_0
    return v1

    .line 173
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fileContents":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 175
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    goto :goto_1

    .line 176
    :catch_1
    move-exception v3

    .line 178
    :cond_1
    :goto_1
    throw v2

    .line 170
    :catch_2
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 173
    if-eqz v0, :cond_2

    .line 175
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 178
    goto :goto_2

    .line 176
    :catch_3
    move-exception v3

    .line 171
    :cond_2
    :goto_2
    return v1
.end method

.method private getWakeupTime()I
    .locals 4

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "wakeupTimeSec":I
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 869
    .local v2, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    iget-object v3, v2, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    invoke-interface {v3}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;->getWakeupTime()I

    move-result v3

    .line 870
    .local v3, "t":I
    if-le v3, v0, :cond_0

    .line 871
    move v0, v3

    .line 873
    .end local v2    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    .end local v3    # "t":I
    :cond_0
    goto :goto_0

    .line 874
    :cond_1
    return v0
.end method

.method private handleDisplayOff(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 551
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 552
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget v1, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->enterDisplayOff(I)V

    .line 553
    return-void
.end method

.method private handleFakeSleep(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 547
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget v1, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->enterFakeSleep(I)V

    .line 548
    return-void
.end method

.method private handleFullOn(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 556
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 558
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget v1, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->enterFullWakeup(I)V

    .line 559
    return-void
.end method

.method private handleShutdownPrepare(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 10
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 583
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 585
    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->canShutdownImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    .line 586
    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->getBatteryState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->dumpInfo()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget v1, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->enterFakeSleep(I)V

    .line 590
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayState(Z)V

    .line 591
    const/4 v0, 0x1

    .line 592
    .local v0, "shouldShutdown":Z
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v2}, Lcom/android/car/hal/PowerHalService;->isDeepSleepAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->isSystemSupportingDeepSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->canEnterDeepSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnNextSuspend:Z

    if-nez v2, :cond_1

    .line 594
    const-string v1, "CAR.POWER"

    const-string v2, "starting sleep"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    .line 596
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->doHandlePreprocessing(Z)V

    .line 597
    return-void

    .line 598
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->canPostponeShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    const-string v1, "CAR.POWER"

    const-string v2, "starting shutdown with processing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->doHandlePreprocessing(Z)V

    goto :goto_3

    .line 602
    :cond_2
    const-string v2, "CAR.POWER"

    const-string v3, "starting shutdown immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 605
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    const-wide/16 v2, 0x1f40

    .line 608
    .local v2, "timeout":J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 610
    .local v4, "startTime":J
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v6, v2, v6

    .line 612
    .local v6, "rem":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_4

    .line 613
    const-string v8, "sys.dump.end"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 614
    goto :goto_1

    .line 616
    :cond_3
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v8, v4

    sub-long v6, v2, v8

    goto :goto_0

    .line 621
    .end local v2    # "timeout":J
    .end local v4    # "startTime":J
    .end local v6    # "rem":J
    :cond_4
    :goto_1
    goto :goto_2

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpcoreinfo end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleShutdown()V

    .line 624
    :goto_3
    return-void

    .line 605
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleStateOnFull(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 499
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 500
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power state is not STATE_ON_FULL, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 503
    :cond_0
    const-string v0, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStateOnFull wakeup reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 538
    :pswitch_0
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error param for STATE_ON_FULL :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 540
    return-void

    .line 524
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerStateChanged()V

    .line 525
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->handleFakeSleep(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 526
    invoke-virtual {p0, v2}, Lcom/android/car/CarPowerManagementService;->notifyPowerOn(Z)V

    .line 527
    goto :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerStateChanged()V

    .line 533
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->handleDisplayOff(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/car/CarPowerManagementService;->notifyPowerOn(Z)V

    .line 535
    goto :goto_0

    .line 508
    :pswitch_3
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerStateChanged()V

    .line 509
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->handleFullOn(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->notifyPowerOn(Z)V

    .line 511
    goto :goto_0

    .line 515
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 516
    nop

    .line 542
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private needHandlePowerState(Lcom/android/car/hal/PowerHalService$PowerState;)Z
    .locals 3
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 843
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mParam:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const-string v0, "CAR.POWER"

    const-string v2, "power state is off, but screen state is on"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return v1

    .line 850
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)Z
    .locals 3
    .param p1, "newState"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 827
    monitor-enter p0

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PowerHalService$PowerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    iget v0, p1, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 830
    const-string v0, "CAR.POWER"

    const-string v2, "sleep entry? need change again!!!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    monitor-exit p0

    return v1

    .line 833
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->needHandlePowerState(Lcom/android/car/hal/PowerHalService$PowerState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    monitor-exit p0

    return v1

    .line 836
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 838
    :cond_2
    monitor-exit p0

    return v1

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyPowerStateChanged()V
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->beginBroadcast()I

    move-result v0

    .line 801
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    if-lez v0, :cond_0

    .line 803
    .end local v0    # "i":I
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, v1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/power/ICarPowerStateListener;

    .line 804
    .local v0, "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/car/hardware/power/ICarPowerStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    goto :goto_1

    .line 805
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyPowerStateChanged onStateChanged calling failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 800
    move v0, v1

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->finishBroadcast()V

    .line 811
    return-void
.end method

.method private releaseTimerLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 651
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    .line 652
    return-void
.end method

.method private sendPowerManagerEvent(Z)J
    .locals 10
    .param p1, "shuttingDown"    # Z

    .line 698
    const-wide/16 v0, 0x0

    .line 699
    .local v0, "processingTimeMs":J
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 700
    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 701
    .local v3, "newState":I
    :goto_0
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    monitor-enter v4

    .line 702
    :try_start_0
    iget-object v5, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 703
    iget-object v5, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v5}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->beginBroadcast()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    .local v5, "i":I
    :goto_1
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    if-lez v5, :cond_1

    .line 706
    .end local v5    # "i":I
    :try_start_1
    iget-object v5, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v5, v6}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/car/hardware/power/ICarPowerStateListener;

    .line 707
    .local v5, "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    invoke-interface {v5, v3}, Landroid/car/hardware/power/ICarPowerStateListener;->onStateChanged(I)V

    .line 708
    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v5}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget v9, p0, Lcom/android/car/CarPowerManagementService;->mTokenValue:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget v7, p0, Lcom/android/car/CarPowerManagementService;->mTokenValue:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/android/car/CarPowerManagementService;->mTokenValue:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    goto :goto_2

    .line 710
    :catch_0
    move-exception v5

    .line 712
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "CAR.POWER"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendPowerManagerEvent onStateChanged calling failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    nop

    .line 703
    move v5, v6

    goto :goto_1

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->finishBroadcast()V

    .line 716
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    const-string v2, "CAR.POWER"

    const-string v5, "mPowerMangerListenerTokens not empty, add APP_EXTEND_MAX_MS"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-wide/16 v7, 0x1388

    add-long/2addr v0, v7

    .line 720
    .end local v6    # "i":I
    :cond_2
    monitor-exit v4

    .line 721
    return-wide v0

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private declared-synchronized setCurrentState(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/car/hal/PowerHalService$PowerState;

    monitor-enter p0

    .line 903
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    monitor-exit p0

    return-void

    .line 902
    .end local p1    # "state":Lcom/android/car/hal/PowerHalService$PowerState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 386
    const-string v0, "*PowerManagementService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mIsSleeping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mIsSleeping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mIsSleep:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mIsSleep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mProcessingStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mLastSleepEntryTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const-string v0, "**PowerEventProcessingHandlers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 396
    .local v1, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    invoke-virtual {v1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .end local v1    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    goto :goto_0

    .line 398
    :cond_0
    return-void

    .line 391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finished(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1017
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    monitor-enter v0

    .line 1019
    :try_start_0
    invoke-interface {p1}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/car/CarPowerManagementService;->finishedLocked(Landroid/os/IBinder;I)V

    .line 1020
    monitor-exit v0

    .line 1021
    return-void

    .line 1020
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBootReason()I
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 981
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootup reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget v0, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    return v0
.end method

.method public getCarBatteryState()I
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->getBatteryState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getHandler()Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    throw v0
.end method

.method public handleMainDisplayChanged(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 925
    monitor-enter p0

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 927
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1200(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V

    .line 929
    return-void

    .line 927
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 11

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.POWER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerHandler;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/PowerHalService;->setListener(Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->isPowerStateSupported()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendBootComplete()V

    .line 231
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->getCurrentPowerState()Lcom/android/car/hal/PowerHalService$PowerState;

    move-result-object v0

    .line 232
    .local v0, "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v3}, Lcom/android/car/hal/PowerHalService;->getBatteryState()I

    move-result v3

    .line 233
    .local v3, "batteryState":I
    const-string v4, "sys.xiaopeng.power_state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, "mPowerState":I
    const-string v6, "/sys/class/gpio_indicators/gpio_indicators/attrs/sleep_gpio"

    invoke-static {v6}, Lcom/android/car/CarPowerManagementService;->getValueFromFile(Ljava/lang/String;)I

    move-result v6

    .line 235
    .local v6, "sleep_gpio_state":I
    const-string v7, "/sys/class/gpio_indicators/gpio_indicators/attrs/lcd_gpio"

    invoke-static {v7}, Lcom/android/car/CarPowerManagementService;->getValueFromFile(Ljava/lang/String;)I

    move-result v7

    .line 237
    .local v7, "lcd_gpio_state":I
    const-string v8, "CAR.POWER"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CarPowerManagementService init: power_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sleep_gpio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " lcd_gpio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v8, "sys.xiaopeng.power_state"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v8, 0x2

    if-ne v6, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1, v5}, Lcom/android/car/systeminterface/SystemInterface;->setAutoSuspendMode(Z)V

    .line 242
    iput-boolean v5, p0, Lcom/android/car/CarPowerManagementService;->mSuspendModeEnabled:Z

    .line 243
    new-instance v1, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v8}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    goto :goto_0

    .line 245
    :cond_1
    if-eq v3, v1, :cond_2

    .line 246
    new-instance v1, Lcom/android/car/hal/PowerHalService$PowerState;

    const/4 v2, -0x1

    invoke-direct {v1, v8, v2}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    goto :goto_0

    .line 248
    :cond_2
    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "CAR.POWER"

    const-string v2, "Unable to get get current power state during initialization"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    .end local v3    # "batteryState":I
    .end local v4    # "mPowerState":I
    .end local v6    # "sleep_gpio_state":I
    .end local v7    # "lcd_gpio_state":I
    :goto_0
    goto :goto_1

    .line 257
    :cond_4
    const-string v0, "CAR.POWER"

    const-string v3, "Vehicle hal does not support power state yet."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v0, v2, v1}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 259
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->switchToFullWakeLock()V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0, p0}, Lcom/android/car/systeminterface/SystemInterface;->startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V

    .line 262
    return-void

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCarPowerManagerEnabled()Z
    .locals 1

    .line 381
    invoke-static {}, Lcom/android/car/hal/PowerHalService;->isCarPowerManagerEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPowerEventProcessingCompletion(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V
    .locals 11
    .param p1, "handler"    # Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    .line 334
    const-wide/16 v0, 0x0

    .line 336
    .local v0, "processingTime":J
    const-string v2, "CAR.POWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyPowerEventProcessingCompletion Handler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 338
    .local v3, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    if-ne v4, p1, :cond_0

    .line 339
    invoke-virtual {v3}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->markProcessingDone()V

    goto :goto_1

    .line 340
    :cond_0
    invoke-virtual {v3}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->isProcessingDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 342
    invoke-virtual {v3}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->getProcessingTime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 344
    .end local v3    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    :cond_1
    :goto_1
    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 347
    const-wide/16 v3, 0x1388

    add-long/2addr v0, v3

    .line 349
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 352
    .local v3, "now":J
    const/4 v2, 0x1

    .line 354
    .local v2, "shouldShutdown":Z
    monitor-enter p0

    .line 355
    :try_start_1
    iget-wide v5, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    .line 356
    .local v5, "startTime":J
    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    if-nez v7, :cond_4

    .line 357
    monitor-exit p0

    return-void

    .line 359
    :cond_4
    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    iget v7, v7, Lcom/android/car/hal/PowerHalService$PowerState;->mState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 360
    monitor-exit p0

    return-void

    .line 362
    :cond_5
    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-virtual {v7}, Lcom/android/car/hal/PowerHalService$PowerState;->canEnterDeepSleep()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnNextSuspend:Z

    if-nez v7, :cond_6

    .line 363
    const/4 v2, 0x0

    .line 364
    iget-wide v7, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    iget-wide v9, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    iget-wide v7, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_6

    .line 366
    monitor-exit p0

    return-void

    .line 369
    :cond_6
    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 370
    .local v7, "powerHandler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    add-long v8, v5, v0

    cmp-long v8, v8, v3

    if-gtz v8, :cond_7

    .line 373
    const-string v8, "CAR.POWER"

    const-string v9, "Processing all done"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v7, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V

    goto :goto_2

    .line 376
    :cond_7
    const-string v8, "CAR.POWER"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " processingTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " now="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_2
    return-void

    .line 370
    .end local v5    # "startTime":J
    .end local v7    # "powerHandler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 349
    .end local v2    # "shouldShutdown":Z
    .end local v3    # "now":J
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected notifyPowerOn(Z)V
    .locals 2
    .param p1, "displayOn"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 564
    .local v1, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    invoke-virtual {v1, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->callOnPowerOn(Z)V

    .line 565
    .end local v1    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method protected notifyPrepareShutdown(Z)J
    .locals 7
    .param p1, "shuttingDown"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 570
    const-wide/16 v0, 0x0

    .line 571
    .local v0, "processingTimeMs":J
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    .line 572
    .local v3, "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    invoke-virtual {v3, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->callOnPrepareShutdown(Z)J

    move-result-wide v4

    .line 573
    .local v4, "handlerProcessingTime":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 574
    move-wide v0, v4

    .line 576
    .end local v3    # "wrapper":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    .end local v4    # "handlerProcessingTime":J
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 579
    return-wide v0
.end method

.method public onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 7
    .param p1, "state"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 412
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mHandlerPowerTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 413
    const-wide/16 v1, 0x0

    .line 414
    .local v1, "delay":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/car/CarPowerManagementService;->mHandlerPowerTime:J

    goto :goto_0

    .line 416
    .end local v1    # "delay":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/car/CarPowerManagementService;->mHandlerPowerTime:J

    sub-long/2addr v1, v3

    .line 417
    .local v1, "time":J
    const-wide/16 v3, 0x258

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 418
    const-wide/16 v3, 0x0

    .line 419
    .local v3, "delay":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/car/CarPowerManagementService;->mHandlerPowerTime:J

    .line 421
    move-wide v1, v3

    goto :goto_0

    .end local v3    # "delay":J
    :cond_1
    sub-long v1, v3, v1

    .line 424
    .local v1, "delay":J
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 426
    invoke-static {v0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;J)V

    .line 427
    return-void

    .line 424
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    .end local v1    # "delay":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBootReasonReceived(I)V
    .locals 0
    .param p1, "bootReason"    # I

    .line 402
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    .line 403
    return-void
.end method

.method public onDisplayBrightnessChange(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 909
    monitor-enter p0

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 911
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1100(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V

    .line 913
    return-void

    .line 911
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 946
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->register(Landroid/os/IInterface;)Z

    .line 948
    return-void
.end method

.method public registerListenerWithCompletion(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1005
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerWithCompletion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1008
    return-void
.end method

.method public declared-synchronized registerPowerEventListener(Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;

    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 305
    .end local p1    # "listener":Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    throw p1
.end method

.method public declared-synchronized registerPowerEventProcessingHandler(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;

    invoke-direct {v1, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;-><init>(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$800(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 316
    .end local p1    # "handler":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    throw p1
.end method

.method public release()V
    .locals 4

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/hal/PowerHalService$PowerState;

    .line 282
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$700(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 283
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 284
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 287
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "CAR.POWER"

    const-string v3, "Timeout while joining for handler thread to join."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->stopDisplayStateMonitoring()V

    .line 293
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 294
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerEventProcessingHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 295
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->kill()V

    .line 296
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenerTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 297
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->releaseAllWakeLocks()V

    .line 298
    return-void

    .line 284
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestShutdownOnNextSuspend()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnNextSuspend:Z

    .line 975
    return-void
.end method

.method public scheduleNextWakeupTime(I)V
    .locals 3
    .param p1, "seconds"    # I

    .line 1012
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleNextWakeupTime  seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void
.end method

.method public sendDisplayBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 936
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PowerHalService;->sendDisplayBrightness(I)V

    .line 937
    return-void
.end method

.method public setXpScreenForceOnOrAdviseOff(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "onOrOff"    # Z

    .line 986
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setXpScreenForceOnOrAdviseOff  deviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",onOrOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method public unregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 952
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 954
    return-void
.end method
