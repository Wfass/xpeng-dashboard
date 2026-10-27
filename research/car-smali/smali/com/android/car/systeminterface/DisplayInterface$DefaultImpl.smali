.class public Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "DisplayInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/DisplayInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/DisplayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayStateSet:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mService:Lcom/android/car/CarPowerManagementService;

.field private final mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/systeminterface/WakeLockInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockInterface"    # Lcom/android/car/systeminterface/WakeLockInterface;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;

    new-instance v1, Landroid/os/Handler;

    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$1;-><init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 80
    new-instance v0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;

    invoke-direct {v0, p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl$2;-><init>(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 100
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 103
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 104
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    .line 105
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    .line 106
    iput-object p2, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 48
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 48
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 48
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)Lcom/android/car/CarPowerManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 48
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    .line 48
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->handleMainDisplayChanged()V

    return-void
.end method

.method private handleMainDisplayChanged()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->isMainDisplayOn()Z

    move-result v0

    .line 112
    .local v0, "isOn":Z
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    if-ne v1, v0, :cond_0

    .line 114
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    .line 117
    .local v1, "service":Lcom/android/car/CarPowerManagementService;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v1, v0}, Lcom/android/car/CarPowerManagementService;->handleMainDisplayChanged(Z)V

    .line 119
    return-void

    .line 117
    .end local v1    # "service":Lcom/android/car/CarPowerManagementService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isMainDisplayOn()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method


# virtual methods
.method public setDisplayBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 135
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    iget v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    .line 136
    add-int/lit8 p1, p1, 0x32

    .line 137
    div-int/lit8 p1, p1, 0x64

    .line 138
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    add-int/2addr p1, v0

    .line 140
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    if-ge p1, v0, :cond_0

    .line 141
    iget p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMinimumBacklight:I

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    if-le p1, v0, :cond_1

    .line 143
    iget p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mMaximumBacklight:I

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    return-void
.end method

.method public setDisplayState(Z)V
    .locals 5
    .param p1, "on"    # Z

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToFullWakeLock()V

    .line 173
    const-string v0, "CAR.POWER"

    const-string v1, "on display"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "xpeng.CarEvent:wakeUp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToPartialWakeLock()V

    .line 177
    const-string v0, "CAR.POWER"

    const-string v1, "off display"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 180
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/car/CarPowerManagementService;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mService:Lcom/android/car/CarPowerManagementService;

    .line 153
    invoke-direct {p0}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->isMainDisplayOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayStateSet:Z

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1}, Lcom/android/car/CarPowerManagementService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 158
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopDisplayStateMonitoring()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    return-void
.end method
