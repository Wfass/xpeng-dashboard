.class public Lcom/xiaopeng/xuiservice/device/DeviceService;
.super Ljava/lang/Object;
.source "DeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/device/DeviceService$SettingsObserver;,
        Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;,
        Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;,
        Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;
    }
.end annotation


# static fields
.field public static final DEF_SCREEN_ANGLE:I = 0x49

.field public static final DEF_SCREEN_ANGLE_CALLBACK:I = 0x49

.field public static final DEF_SCREEN_MIN_ANGLE:I = 0x0

.field public static final DEF_SCREEN_SATE:I = 0x0

.field public static final DEF_SCREEN_STATE_CONTROL:I = 0x0

.field public static final DISABLE_CONTROL:I = 0x0

.field public static final ENABLE_CONTROL:I = 0x1

.field private static final ENABLE_FOLD_TAG:Ljava/lang/String; = "sys.xiaopeng.enable.fold"

.field public static final KEY_RES_LOCK:Ljava/lang/String; = "res_lock"

.field public static final KEY_RSE_ANGLE:Ljava/lang/String; = "screen_angle_3"

.field public static final KEY_RSE_STATE_CONTROL:Ljava/lang/String; = "screen_state_control_3"

.field public static final KEY_SCREEN_ANGLE:Ljava/lang/String; = "screen_angle"

.field public static final KEY_SCREEN_ANGLE_CALLBACK:Ljava/lang/String; = "screen_angle_callback"

.field public static final KEY_SCREEN_INTERCEPT_MODE:Ljava/lang/String; = "key_screen_intercept_mode"

.field public static final KEY_SCREEN_SATE:Ljava/lang/String; = "screen_state"

.field public static final KEY_SCREEN_STATE_CONTROL:Ljava/lang/String; = "screen_state_control"

.field private static final MSG_ANGLE_EVENT_NOTIFY:I = 0x0

.field private static final MSG_STATE_EVENT_NOTIFY:I = 0x1

.field public static final RET_BOOTANIM:I = 0x4

.field public static final RET_EXCEPTION:I = 0x2

.field public static final RET_OFF_FAIL:I = 0x3

.field public static final RET_RES_LOCK:I = 0x0

.field public static final RET_SUCCESS:I = 0x1

.field public static final SCREEN_CLOSE_CTRL:I = 0x0

.field public static final SCREEN_OPEN_CTRL:I = 0x1

.field public static final SFM_CLOSE:I = 0x2

.field public static final SFM_CLOSED_STATUS:I = 0x0

.field public static final SFM_CLOSING_STATUS:I = 0x2

.field public static final SFM_OPENED_STATUS:I = 0x1

.field public static final SFM_OPENING_STATUS:I = 0x3

.field public static final SFM_STOP_STATUS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceService"

.field public static final URI_RES_LOCK:Landroid/net/Uri;

.field public static final URI_RSE_ANGLE:Landroid/net/Uri;

.field public static final URI_RSE_STATE_CONTROL:Landroid/net/Uri;

.field private static final mLimitMotionEventListener:Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;

.field private static mSecondScreenId:I

.field private static sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    .line 78
    const-string v0, "screen_state_control_3"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_STATE_CONTROL:Landroid/net/Uri;

    .line 79
    const-string v0, "screen_angle_3"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_ANGLE:Landroid/net/Uri;

    .line 80
    const-string v0, "res_lock"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RES_LOCK:Landroid/net/Uri;

    .line 488
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceService$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mLimitMotionEventListener:Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    const-string v0, "sys.xiaopeng.enable.fold"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    .line 116
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceService$1;

    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/device/DeviceService$1;-><init>(Lcom/xiaopeng/xuiservice/device/DeviceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mHandler:Landroid/os/Handler;

    .line 540
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    .line 541
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getInstance()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 542
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    .line 543
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    .line 544
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->restoreDevice()V

    .line 545
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/device/DeviceService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/device/DeviceService;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/device/DeviceService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/device/DeviceService;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 529
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;

    if-nez v0, :cond_1

    .line 530
    const-class v0, Lcom/xiaopeng/xuiservice/device/DeviceService;

    monitor-enter v0

    .line 531
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;

    if-nez v1, :cond_0

    .line 532
    new-instance v1, Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/device/DeviceService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;

    .line 534
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 536
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->sDeviceService:Lcom/xiaopeng/xuiservice/device/DeviceService;

    return-object v0
.end method

.method private static getSecondScreenId()I
    .locals 5

    .line 449
    sget v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 450
    sget v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    return v0

    .line 452
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenDevices()Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, "mScreenDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/screen/ScreenDevice;>;"
    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/screen/ScreenDevice;

    .line 455
    .local v2, "device":Lcom/xiaopeng/screen/ScreenDevice;
    iget-object v3, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v3, v3, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget-object v4, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v4, v4, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    if-eq v3, v4, :cond_1

    .line 456
    const-string v1, "DeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecondScreenId screenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v4, v4, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v1, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    sput v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    .line 458
    sget v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    return v1

    .line 460
    .end local v2    # "device":Lcom/xiaopeng/screen/ScreenDevice;
    :cond_1
    goto :goto_0

    .line 462
    :cond_2
    const-string v1, "DeviceService"

    const-string v2, "getSecondScreenId mScreenDevices null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_3
    const/4 v1, 0x3

    sput v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    .line 465
    sget v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    return v1
.end method

.method private restoreDevice()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "res_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "screenLock":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->registerScreenLockObserver()V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public forceSetXpDeviceOpenEx(I)I
    .locals 4
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 245
    const-string v0, "DeviceService"

    const-string v2, "forceSetXpDeviceOpenEx mFoldEnable = false,return"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return v1

    .line 248
    :cond_0
    const-string v0, "service.bootanim.exit"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    .line 249
    const-string v0, "DeviceService"

    const-string v1, "forceSetXpDeviceOpenEx return 4"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return v2

    .line 252
    :cond_1
    if-eq v1, p1, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 258
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetXpDeviceOpenEx screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return v3

    .line 253
    :cond_3
    :goto_0
    const-string v0, "DeviceService"

    invoke-virtual {p0, p1, v3, v3, v0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->setDeviceState(IIZLjava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "ret":I
    return v0
.end method

.method public getDeviceAngle(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen_angle_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, "angle":I
    const-string v1, "DeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceAngle angle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v0
.end method

.method public getDeviceState(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 342
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen_state_control_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, "state":I
    return v0

    .line 345
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_state_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 347
    .restart local v0    # "state":I
    return v0

    .line 349
    .end local v0    # "state":I
    :cond_1
    return v1
.end method

.method public notifyAngleEvent(IIZLjava/lang/String;)V
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "angle"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;

    .line 263
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAngleEvent- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " angle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;

    .line 268
    .local v2, "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;->onDeviceAngleChange(IIZLjava/lang/String;)V

    .line 269
    const-string v3, "DeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAngleEvent- mDeviceListenerRecords:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    goto :goto_0

    .line 273
    :cond_0
    goto :goto_1

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method notifyStateEvent(IIZLjava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "state"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;

    .line 279
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateEvent- screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isForceOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;

    .line 284
    .local v2, "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;->onDeviceStateChange(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    goto :goto_0

    .line 288
    :cond_0
    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized onDeviceFoldAngleChanged(II)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "angle"    # I

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen_angle_callback_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceFoldAngleChanged type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " angle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 405
    .end local p1    # "screenId":I
    .end local p2    # "angle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/device/DeviceService;
    throw p1
.end method

.method public declared-synchronized onDeviceLockChanged()V
    .locals 5

    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "res_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, "screenLock":I
    const/4 v2, -0x1

    sget v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    if-ne v2, v3, :cond_0

    .line 472
    invoke-static {}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getSecondScreenId()I

    move-result v2

    sput v2, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    .line 474
    :cond_0
    const-string v2, "DeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceLockChanged mSecondScreenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 476
    sget v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    if-eq v3, v2, :cond_2

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_screen_intercept_mode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->registerScreenLockObserver()V

    goto :goto_0

    .line 480
    :cond_1
    if-nez v1, :cond_2

    .line 481
    sget v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    if-eq v3, v2, :cond_2

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_screen_intercept_mode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mSecondScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->unregisterScreenLockObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 468
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "screenLock":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/device/DeviceService;
    throw v0
.end method

.method public declared-synchronized onDeviceSettingChanged(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 548
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_STATE_CONTROL:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->onFoldSwitchChanged(I)V

    goto :goto_0

    .line 550
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_ANGLE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->onFoldAngleChanged(I)V

    goto :goto_0

    .line 552
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RES_LOCK:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    .end local p1    # "selfChange":Z
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/device/DeviceService;
    throw p1
.end method

.method public declared-synchronized onFoldAngleChanged(I)V
    .locals 5
    .param p1, "screenId"    # I

    monitor-enter p0

    .line 436
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    if-nez v0, :cond_0

    .line 437
    const-string v0, "DeviceService"

    const-string v1, "onFoldAngleChanged mFoldEnable = false,return"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 440
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getCarAngle(I)I

    move-result v0

    .line 441
    .local v0, "lastAngle":I
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getDeviceAngle(I)I

    move-result v1

    .line 443
    .local v1, "currentAngle":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setCarAngle(II)V

    .line 445
    const-string v2, "DeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFoldAngleChanged screenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  currentAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lastAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 435
    .end local v0    # "lastAngle":I
    .end local v1    # "currentAngle":I
    .end local p1    # "screenId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/device/DeviceService;
    throw p1
.end method

.method public declared-synchronized onFoldSwitchChanged(I)V
    .locals 7
    .param p1, "screenId"    # I

    monitor-enter p0

    .line 411
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    if-nez v0, :cond_0

    .line 412
    const-string v0, "DeviceService"

    const-string v1, "onFoldSwitchChanged mFoldEnable = false,return"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getDeviceState(I)I

    move-result v0

    .line 416
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getCarAngle(I)I

    move-result v1

    .line 417
    .local v1, "lastAngle":I
    const/16 v2, 0x49

    .line 418
    .local v2, "currentAngle":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 419
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 420
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const-string v6, "ScreenClose"

    invoke-virtual {v5, p1, v3, v6, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 421
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, p1}, Landroid/os/PowerManager;->disableXpScreen(I)V

    .line 422
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setCarFold(II)V

    goto :goto_0

    .line 423
    :cond_1
    if-ne v0, v3, :cond_2

    .line 424
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, p1}, Landroid/os/PowerManager;->enableXpScreen(I)V

    .line 425
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, p1, v5, v6}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    .line 426
    const-string v3, "DeviceService"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v5, v3}, Lcom/xiaopeng/xuiservice/device/DeviceService;->setDeviceAngle(IIZLjava/lang/String;)I

    .line 427
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setCarAngle(II)V

    .line 428
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const-string v6, "ScreenClose"

    invoke-virtual {v3, p1, v5, v6, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 430
    :cond_2
    const-string v3, "DeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFoldSwitchChanged error screenId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  switchState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lastAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_0
    const-string v3, "DeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFoldSwitchChanged screenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  switchState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lastAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 410
    .end local v0    # "state":I
    .end local v1    # "lastAngle":I
    .end local v2    # "currentAngle":I
    .end local p1    # "screenId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/device/DeviceService;
    throw p1
.end method

.method public registerScreenLockObserver()V
    .locals 4

    .line 508
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 509
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "screenId"

    invoke-static {}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getSecondScreenId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "screenId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/input/LimitMotionEventManager;->getInstance()Lcom/xiaopeng/input/LimitMotionEventManager;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mLimitMotionEventListener:Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/input/LimitMotionEventManager;->registerListener(Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "screenId":Ljava/lang/String;
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 515
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method removeDeviceManagerListener(Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    .line 311
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDeviceManagerListener listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "DeviceService"

    const-string v1, "removeDeviceManagerListener: removeDeviceManagerListener is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;

    .line 319
    .local v3, "listenerRecord":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    if-ne v4, p1, :cond_1

    .line 320
    move-object v0, v3

    .line 321
    goto :goto_1

    .line 323
    .end local v3    # "listenerRecord":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    :cond_1
    goto :goto_0

    .line 324
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 325
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    goto :goto_2

    .line 328
    :catch_0
    move-exception v2

    .line 332
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setDeviceAngle(IIZLjava/lang/String;)I
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "angle"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;

    .line 231
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getDeviceState(I)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 232
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenAngle return 3 screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " angle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isForceOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x3

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen_angle_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;-><init>(IIZLjava/lang/String;)V

    .line 237
    .local v0, "angleEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 238
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    const-string v2, "DeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenAngle angle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isForceOpen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " screenState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getDeviceState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x1

    return v2
.end method

.method public setDeviceDisable(IILjava/lang/String;)I
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "disable"    # I
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenDisable screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " disable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "sys.xiaopeng.enable.fold"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 357
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 358
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const-string v4, "ScreenClose"

    invoke-virtual {v3, p1, v2, v4, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->disableXpScreen(I)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setCarFold(II)V

    .line 361
    const-string v0, "DeviceService"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->setDeviceState(IIZLjava/lang/String;)I

    .line 362
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    goto :goto_0

    .line 364
    :cond_0
    const-string v3, "sys.xiaopeng.enable.fold"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    .line 366
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const-string v4, "ScreenClose"

    invoke-virtual {v3, p1, v1, v4, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->enableXpScreen(I)V

    .line 369
    :goto_0
    return v2
.end method

.method public setDeviceManagerListener(Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    .line 294
    const-string v0, "DeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceManagerListener listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    if-nez p1, :cond_0

    .line 296
    const-string v0, "DeviceService"

    const-string v1, "setDeviceManagerListener: listener is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/device/DeviceService;IILjava/lang/String;Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V

    .line 300
    .local v0, "record":Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    goto :goto_0

    .line 307
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DeviceService"

    const-string v4, "DeviceManagerListener is dead, ignoring it"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mDeviceListenerRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDeviceState(IIZLjava/lang/String;)I
    .locals 7
    .param p1, "screenId"    # I
    .param p2, "state"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x4

    if-ne v2, p1, :cond_2

    .line 204
    :cond_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mFoldEnable:Z

    if-nez v2, :cond_1

    .line 205
    const-string v1, "DeviceService"

    const-string v2, "setDeviceState mFoldEnable = false,return"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "res_lock"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, "screenLock":I
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getDeviceState(I)I

    move-result v4

    .line 211
    .local v4, "currentStatus":I
    if-nez v4, :cond_2

    if-ne v2, v1, :cond_2

    if-nez p3, :cond_2

    .line 212
    const-string v1, "DeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDeviceState return screenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Lock ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v3

    .line 216
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "screenLock":I
    .end local v4    # "currentStatus":I
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_state_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    if-ne p2, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/PowerManager;->setXpScreenOnEx(IJ)V

    goto :goto_0

    .line 219
    :cond_3
    if-nez p2, :cond_4

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/PowerManager;->setXpScreenOffEx(IJ)V

    .line 223
    :cond_4
    :goto_0
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;-><init>(IIZLjava/lang/String;)V

    .line 224
    .local v0, "stateEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 225
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    const-string v3, "DeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeviceState state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " screenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isForceOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return v1
.end method

.method public unregisterScreenLockObserver()V
    .locals 4

    .line 519
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 520
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "screenId"

    invoke-static {}, Lcom/xiaopeng/xuiservice/device/DeviceService;->getSecondScreenId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "screenId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/input/LimitMotionEventManager;->getInstance()Lcom/xiaopeng/input/LimitMotionEventManager;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/device/DeviceService;->mLimitMotionEventListener:Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/input/LimitMotionEventManager;->unregisterListener(Lcom/xiaopeng/input/LimitMotionEventManager$LimitMotionEventListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "screenId":Ljava/lang/String;
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 526
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
