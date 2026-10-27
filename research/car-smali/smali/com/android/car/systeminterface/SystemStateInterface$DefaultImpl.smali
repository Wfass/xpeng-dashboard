.class public Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "SystemStateInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/SystemStateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/SystemStateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# static fields
.field private static final MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

.field private static final SUSPEND_TRY_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mActionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/time/Duration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;

    invoke-direct {v0, p0}, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl$1;-><init>(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mContext:Landroid/content/Context;

    .line 100
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    .line 77
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    .line 77
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public enterDeepSleep(I)Z
    .locals 4
    .param p1, "sleepDurationSec"    # I

    .line 114
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    const/16 v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/android/internal/car/ICarServiceHelper;->forceSuspend(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v1, "retVal":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 120
    .end local v1    # "retVal":I
    .local v0, "deviceEnteredSleep":Z
    :cond_0
    goto :goto_0

    .line 117
    .end local v0    # "deviceEnteredSleep":Z
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->TAG:Ljava/lang/String;

    const-string v3, "Unable to enter deep sleep"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    nop

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceEnteredSleep":Z
    :goto_0
    return v0
.end method

.method public enterDisplayOff(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0xa

    add-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->goToDisplayOff(JII)V

    .line 170
    return-void
.end method

.method public enterFakeSleep(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0xa

    add-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->goToFakeSleep(JII)V

    .line 148
    return-void
.end method

.method public enterFullWakeup(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xpeng.CarEvent:onFull "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 154
    return-void
.end method

.method public isInteractive()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # Ljava/time/Duration;

    .line 126
    sget-object v0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    invoke-virtual {v0, p2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_0

    .line 128
    sget-object p2, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->MIN_BOOT_COMPLETE_ACTION_DELAY:Ljava/time/Duration;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "corePoolSize":I
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    .end local v0    # "corePoolSize":I
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mActionsList:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setAutoSuspendMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 163
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setAutoSuspendMode(Z)V

    .line 164
    return-void
.end method

.method public setCarBatteryState(I)V
    .locals 1
    .param p1, "level"    # I

    .line 158
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setCarBatteryState(I)V

    .line 159
    return-void
.end method

.method public setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 141
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    .line 142
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 106
    return-void
.end method
