.class public Lcom/android/car/GarageModeService;
.super Ljava/lang/Object;
.source "GarageModeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;
.implements Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
.implements Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/GarageModeService$DefaultDeviceIdleController;,
        Lcom/android/car/GarageModeService$GarageModePolicy;,
        Lcom/android/car/GarageModeService$WakeupTime;,
        Lcom/android/car/GarageModeService$GarageModeHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final KEY_GARAGE_MODE_INDEX:Ljava/lang/String; = "garage_mode_index"

.field protected static final MAINTENANCE_ACTIVITY_START_GRACE_PERIOUD:I = 0x2710

.field private static final MSG_EXIT_GARAGE_MODE_EARLY:I = 0x0

.field private static final MSG_WRITE_TO_PREF:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContentObserver:Landroid/car/settings/GarageModeSettingsObserver;

.field protected final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Lcom/android/car/DeviceIdleControllerWrapper;

.field private mGarageModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected mGarageModeIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

.field protected mInGarageMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mMaintenanceActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mMaintenanceWindow:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPolicy:Lcom/android/car/GarageModeService$GarageModePolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "GarageModeService"

    sput-object v0, Lcom/android/car/GarageModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManagementService"    # Lcom/android/car/CarPowerManagementService;

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/car/GarageModeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/DeviceIdleControllerWrapper;Landroid/os/Looper;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/DeviceIdleControllerWrapper;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManagementService"    # Lcom/android/car/CarPowerManagementService;
    .param p3, "deviceIdleController"    # Lcom/android/car/DeviceIdleControllerWrapper;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/car/GarageModeService;->mPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 126
    new-instance v0, Lcom/android/car/GarageModeService$GarageModeHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/car/GarageModeService$GarageModeHandler;-><init>(Lcom/android/car/GarageModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    .line 127
    if-nez p3, :cond_0

    .line 128
    new-instance v0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;-><init>(Lcom/android/car/GarageModeService$1;)V

    iput-object v0, p0, Lcom/android/car/GarageModeService;->mDeviceIdleController:Lcom/android/car/DeviceIdleControllerWrapper;

    goto :goto_0

    .line 130
    :cond_0
    iput-object p3, p0, Lcom/android/car/GarageModeService;->mDeviceIdleController:Lcom/android/car/DeviceIdleControllerWrapper;

    .line 132
    :goto_0
    new-instance v0, Lcom/android/car/GarageModeService$1;

    iget-object v1, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/GarageModeService$1;-><init>(Lcom/android/car/GarageModeService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/GarageModeService;->mContentObserver:Landroid/car/settings/GarageModeSettingsObserver;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/GarageModeService;)Lcom/android/car/CarPowerManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/GarageModeService;

    .line 55
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mPowerManagementService:Lcom/android/car/CarPowerManagementService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/GarageModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/GarageModeService;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/android/car/GarageModeService;->writeToPref(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/GarageModeService;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/GarageModeService;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/car/GarageModeService;->onSettingsChangedInternal(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/car/GarageModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/android/car/GarageModeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 432
    sget-object v0, Lcom/android/car/GarageModeService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private onSettingsChangedInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content Observer onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 457
    sget-object v0, Landroid/car/settings/GarageModeSettingsObserver;->GARAGE_MODE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "android.car.GARAGE_MODE_ENABLED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->readFromSettingsLocked([Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_0
    sget-object v0, Landroid/car/settings/GarageModeSettingsObserver;->GARAGE_MODE_WAKE_UP_TIME_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string v0, "android.car.GARAGE_MODE_WAKE_UP_TIME"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->readFromSettingsLocked([Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_1
    sget-object v0, Landroid/car/settings/GarageModeSettingsObserver;->GARAGE_MODE_MAINTENANCE_WINDOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    const-string v0, "android.car.GARAGE_MODE_MAINTENANCE_WINDOW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->readFromSettingsLocked([Ljava/lang/String;)V

    .line 464
    :cond_2
    :goto_0
    const-string v0, "onSettingsChanged %s. enabled: %s, windowSize: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/car/GarageModeService;->mGarageModeEnabled:Z

    .line 466
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/car/GarageModeService;->mMaintenanceWindow:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 464
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 467
    monitor-exit p0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private varargs readFromSettingsLocked([Ljava/lang/String;)V
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 437
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 438
    .local v3, "key":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x297518fc

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    const v6, -0x170a6d07

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "android.car.GARAGE_MODE_MAINTENANCE_WINDOW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_1
    const-string v5, "android.car.GARAGE_MODE_ENABLED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v1

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 449
    sget-object v4, Lcom/android/car/GarageModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown setting key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_3

    .line 444
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v5, 0x7d0

    .line 444
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/car/GarageModeService;->mMaintenanceWindow:I

    .line 447
    goto :goto_3

    .line 440
    :pswitch_1
    iget-object v4, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iput-boolean v7, p0, Lcom/android/car/GarageModeService;->mGarageModeEnabled:Z

    .line 442
    nop

    .line 437
    .end local v3    # "key":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readPolicyLocked([Ljava/lang/String;)V
    .locals 1
    .param p1, "policyArray"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 251
    const-string v0, "readPolicy"

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/android/car/GarageModeService$GarageModePolicy;

    invoke-direct {v0, p1}, Lcom/android/car/GarageModeService$GarageModePolicy;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/GarageModeService;->mPolicy:Lcom/android/car/GarageModeService$GarageModePolicy;

    .line 253
    return-void
.end method

.method private writeToPref(I)V
    .locals 2
    .param p1, "index"    # I

    .line 256
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "garage_mode_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGarageModeIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inGarageMode? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GarageModeEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/GarageModeService;->mGarageModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GarageModeTimeWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/GarageModeService;->mMaintenanceWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public getWakeupTime()I
    .locals 2

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/GarageModeService;->mGarageModeEnabled:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mPolicy:Lcom/android/car/GarageModeService$GarageModePolicy;

    iget v1, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/car/GarageModeService$GarageModePolicy;->getNextWakeUpTime(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/GarageModeService;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/android/car/GarageModeService;->init([Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 145
    return-void
.end method

.method protected init([Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "policyArray"    # [Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    const-string v0, "init GarageMode"

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 150
    iput-object p2, p0, Lcom/android/car/GarageModeService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 151
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "garage_mode_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "index":I
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/car/GarageModeService;->mDeviceIdleController:Lcom/android/car/DeviceIdleControllerWrapper;

    invoke-virtual {v1, p0}, Lcom/android/car/DeviceIdleControllerWrapper;->startTracking(Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/GarageModeService;->mMaintenanceActive:Z

    .line 154
    iput v0, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/car/GarageModeService;->readPolicyLocked([Ljava/lang/String;)V

    .line 156
    const-string v1, "android.car.GARAGE_MODE_MAINTENANCE_WINDOW"

    const-string v2, "android.car.GARAGE_MODE_ENABLED"

    const-string v3, "android.car.GARAGE_MODE_WAKE_UP_TIME"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/GarageModeService;->readFromSettingsLocked([Ljava/lang/String;)V

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v1, p0, Lcom/android/car/GarageModeService;->mContentObserver:Landroid/car/settings/GarageModeSettingsObserver;

    invoke-virtual {v1}, Landroid/car/settings/GarageModeSettingsObserver;->register()V

    .line 161
    iget-object v1, p0, Lcom/android/car/GarageModeService;->mPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v1, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventProcessingHandler(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 162
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isInGarageMode()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    return v0
.end method

.method public onMaintenanceActivityChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "shouldReportCompletion":Z
    monitor-enter p0

    .line 265
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMaintenanceActivityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 266
    iput-boolean p1, p0, Lcom/android/car/GarageModeService;->mMaintenanceActive:Z

    .line 267
    iget-boolean v1, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    if-nez v1, :cond_0

    .line 268
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 272
    const/4 v0, 0x1

    .line 273
    iput-boolean v1, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    invoke-virtual {v2, v1}, Lcom/android/car/GarageModeService$GarageModeHandler;->removeMessages(I)V

    .line 278
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v0, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/car/GarageModeService;->mPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v1, p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerEventProcessingCompletion(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 283
    :cond_2
    return-void

    .line 278
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPowerOn(Z)V
    .locals 2
    .param p1, "displayOn"    # Z

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_0

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    .line 216
    :cond_0
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPrepareShutdown(Z)J
    .locals 4
    .param p1, "shuttingDown"    # Z

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrePowerEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    .line 189
    iget v1, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    .line 190
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/GarageModeService$GarageModeHandler;->removeMessages(I)V

    .line 191
    iget-boolean v0, p0, Lcom/android/car/GarageModeService;->mMaintenanceActive:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    iget-object v2, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    .line 193
    invoke-virtual {v2, v1}, Lcom/android/car/GarageModeService$GarageModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/GarageModeService$GarageModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareShutdown shutdownTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/GarageModeService;->mMaintenanceWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logi(Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/android/car/GarageModeService;->mMaintenanceWindow:I

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 198
    :cond_0
    const-string v0, "onPrepareShutdown shutdownTime 0"

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logi(Ljava/lang/String;)V

    .line 199
    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShutdown()V
    .locals 5

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    iget-object v1, p0, Lcom/android/car/GarageModeService;->mHandler:Lcom/android/car/GarageModeService$GarageModeHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/car/GarageModeService;->mGarageModeIndex:I

    const/4 v4, 0x0

    .line 245
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/car/GarageModeService$GarageModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/car/GarageModeService$GarageModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSleepEntry()V
    .locals 1

    .line 236
    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/GarageModeService;->mInGarageMode:Z

    .line 238
    monitor-exit p0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSleepExit()V
    .locals 0

    .line 232
    return-void
.end method

.method public release()V
    .locals 1

    .line 170
    const-string v0, "release GarageModeService"

    invoke-direct {p0, v0}, Lcom/android/car/GarageModeService;->logd(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mDeviceIdleController:Lcom/android/car/DeviceIdleControllerWrapper;

    invoke-virtual {v0}, Lcom/android/car/DeviceIdleControllerWrapper;->stopTracking()V

    .line 172
    iget-object v0, p0, Lcom/android/car/GarageModeService;->mContentObserver:Landroid/car/settings/GarageModeSettingsObserver;

    invoke-virtual {v0}, Landroid/car/settings/GarageModeSettingsObserver;->unregister()V

    .line 173
    return-void
.end method
