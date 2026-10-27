.class public Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Packet;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;,
        Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    }
.end annotation


# static fields
.field private static final EAGAIN:I = 0x3

.field private static final EINVAL:I = 0x2

.field private static final EPERM:I = 0x1

.field private static final ERROR:I = 0x2

.field private static final MAKEUP_LUX:Ljava/lang/String; = "MakeupLux"

.field private static final MAKEUP_RGB:Ljava/lang/String; = "MakeupRgb"

.field private static final MAKEUP_WHITE:Ljava/lang/String; = "MakeupWhite"

.field private static final MSG_BI_COLORTEMP:I = 0x5

.field private static final MSG_BI_LUMINANCE:I = 0x6

.field private static final MSG_COLORTEMP:I = 0x0

.field private static final MSG_LUMINANCE:I = 0x1

.field private static final MSG_MAKEUPSTATUS:I = 0x4

.field private static final MSG_RUNEFFECT:I = 0x2

.field private static final MSG_STOPEFFECT:I = 0x3

.field private static final PATH:Ljava/lang/String; = "/system/etc/xuiservice/makeup/alias.conf"

.field private static final START:I = 0x0

.field private static final STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XpMakeupLightService"

.field private static final TICK_PERIOD:I = 0x64

.field private static mAliasMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private static mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private static mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mEffectMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private static mFadeTime:I

.field private static mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatus:Z

.field private static sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

.field private static taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 68
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    .line 69
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    .line 70
    const-string v1, "persist.sys.xpeng.makeup.fadetime"

    const/16 v2, 0x320

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mFadeTime:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    .line 72
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 75
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 76
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 79
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    .line 634
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->loadColorTemperature()V

    .line 635
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->addBcmManagerCallback()V

    .line 637
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 658
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XpMakeupLightThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 661
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 39
    sput-boolean p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendMakeupStatusMessage(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .param p2, "x2"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleColorTempMessage(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleLuminanceMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;
    .param p2, "x2"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleRunEffectMessage(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleStopEffectMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleMakeupStatusMessage(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->handleBiMakeup(Landroid/os/Message;)V

    return-void
.end method

.method private addBcmManagerCallback()V
    .locals 2

    .line 575
    const-string v0, "XpMakeupLightService"

    const-string v1, "addBcmManagerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 596
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 597
    return-void
.end method

.method private checkColorTemperature(II)Z
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "white"    # I

    .line 275
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkLuminance(I)Z
    .locals 1
    .param p1, "lux"    # I

    .line 279
    if-ltz p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 688
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    if-nez v0, :cond_1

    .line 689
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    monitor-enter v0

    .line 690
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    if-nez v1, :cond_0

    .line 691
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 693
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 696
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    return-object v0
.end method

.method private getProviderColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .locals 4

    .line 212
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MakeupRgb"

    .line 211
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "rgb":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MakeupWhite"

    .line 215
    const/16 v3, 0x2a

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 219
    .local v1, "white":I
    new-instance v2, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;-><init>(II)V

    return-object v2
.end method

.method private getProviderLuminance()I
    .locals 3

    .line 230
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MakeupLux"

    .line 229
    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleBiMakeup(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 602
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 603
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    move-result-object v0

    .line 606
    .local v0, "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget v2, v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderLuminance()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;II)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    goto :goto_0

    .line 607
    .end local v0    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    if-eqz v0, :cond_2

    .line 608
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->submit()V

    .line 609
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    goto :goto_0

    .line 611
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    if-eqz v0, :cond_2

    .line 612
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 624
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->storeLuminance(I)V

    .line 625
    goto :goto_0

    .line 618
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->storeColorTemperature(I)V

    .line 619
    goto :goto_0

    .line 627
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->addEffects(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;)V

    goto :goto_0

    .line 621
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->sendLuminance(I)V

    .line 622
    goto :goto_0

    .line 614
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    .line 615
    .restart local v0    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mBiMakeup:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;

    iget v2, v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->sendColorTemperature(I)V

    .line 616
    nop

    .line 631
    .end local v0    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleColorTempMessage(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V
    .locals 4
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .param p2, "fadeTime"    # I

    .line 330
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleColorTempMessage, colorTemp=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), fadeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 337
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->effect:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V

    .line 342
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setProviderColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showColorTemperatureEvent(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleColorTempMessage failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleLuminanceMessage(I)V
    .locals 4
    .param p1, "lux"    # I

    .line 350
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLuminanceMessage, lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverLuminance(I)V

    .line 355
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showLuminanceEvent(I)V

    .line 356
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setProviderLuminance(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLuminanceMessage failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleMakeupStatusMessage(Z)V
    .locals 5
    .param p1, "status"    # Z

    .line 306
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMakeupStatusMessage, status="

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

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    move-result-object v0

    .line 310
    .local v0, "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderLuminance()I

    move-result v1

    .line 311
    .local v1, "lux":I
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 313
    .local v2, "hasTaskRunning":Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 314
    sget v3, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mFadeTime:I

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V

    .line 315
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverLuminance(I)V

    goto :goto_2

    .line 316
    :cond_2
    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 317
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 320
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverCtrl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .end local v1    # "lux":I
    .end local v2    # "hasTaskRunning":Z
    goto :goto_3

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMakeupStatusMessage failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showAvailableEvent(Z)V

    .line 327
    return-void
.end method

.method private handleRunEffectMessage(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)V
    .locals 7
    .param p1, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;
    .param p2, "count"    # I

    .line 363
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRunEffectMessage, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 368
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->effect:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V

    .line 371
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 375
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;-><init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    .line 376
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRunEffectMessage failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleStopEffectMessage()V
    .locals 5

    .line 385
    const-string v0, "XpMakeupLightService"

    const-string v1, "handleStopEffectMessage"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    move-result-object v0

    .line 390
    .local v0, "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    const-string v1, "XpMakeupLightService"

    const-string v2, "handleStopEffectMessage"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 395
    sget v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mFadeTime:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setDriverColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V

    .line 397
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->effect:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpMakeupLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopEffectMessage failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->taskInfo:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$TaskInfo;->effect:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->showEffectEvent(Ljava/lang/String;I)V

    .line 404
    .end local v0    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private sendColorTempMessage(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)I
    .locals 4
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .param p2, "fadeTime"    # I

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 408
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 409
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 411
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    const-string v2, "XpMakeupLightService"

    const-string v3, "sendColorTempMessage"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1
.end method

.method private sendLuminanceMessage(I)I
    .locals 3
    .param p1, "lux"    # I

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 420
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 421
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 422
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    const-string v1, "XpMakeupLightService"

    const-string v2, "sendLuminanceMessage"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1
.end method

.method private sendMakeupStatusMessage(Z)I
    .locals 4
    .param p1, "status"    # Z

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 454
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMakeupStatusMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "on"

    goto :goto_0

    :cond_0
    const-string v3, "off"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x3

    :goto_1
    return v1
.end method

.method private sendRunEffectMessage(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)I
    .locals 3
    .param p1, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;
    .param p2, "count"    # I

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 432
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    const-string v1, "XpMakeupLightService"

    const-string v2, "sendRunEffectMessage"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1
.end method

.method private sendStopEffectMassage()I
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 444
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    const-string v1, "XpMakeupLightService"

    const-string v2, "sendStopEffectMassage"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1
.end method

.method private setDriverColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V
    .locals 3
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .param p2, "fadeTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 292
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    iget v1, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    .line 293
    .local v1, "temperature":I
    div-int/lit8 v2, p2, 0x32

    and-int/lit8 v2, v2, 0x3f

    .line 295
    .local v2, "tick":I
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setGroupLedFadeTime(IIII)V

    .line 296
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setGroupLedTemperature(IIII)V

    .line 297
    return-void
.end method

.method private setDriverCtrl(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    move v0, p1

    .line 284
    .local v0, "status":I
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 286
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setGroupLedControlStatus(IIII)V

    .line 287
    return-void
.end method

.method private setDriverLuminance(I)V
    .locals 2
    .param p1, "lux"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 302
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setGroupLedBrigntness(IIII)V

    .line 303
    return-void
.end method

.method private setProviderColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V
    .locals 3
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    .line 202
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MakeupRgb"

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    .line 201
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MakeupWhite"

    iget v2, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    .line 205
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    return-void
.end method

.method private setProviderLuminance(I)V
    .locals 2
    .param p1, "lux"    # I

    .line 224
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MakeupLux"

    .line 223
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    return-void
.end method

.method private showAvailableEvent(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 235
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 239
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;->onAvailable(Z)V

    .line 240
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    goto :goto_0

    .line 241
    :cond_1
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showColorTemperatureEvent(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V
    .locals 3
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    .line 245
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 248
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 249
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;->onColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V

    .line 250
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    goto :goto_0

    .line 251
    :cond_1
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showEffectEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 265
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 268
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 269
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;->onEffect(Ljava/lang/String;I)V

    .line 270
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    goto :goto_0

    .line 271
    :cond_1
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showLuminanceEvent(I)V
    .locals 3
    .param p1, "lux"    # I

    .line 255
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 258
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 259
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;->onLuminance(I)V

    .line 260
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
    goto :goto_0

    .line 261
    :cond_1
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearMakeupEffect()V
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public declared-synchronized getColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    .locals 1

    monitor-enter p0

    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderColorTemperature()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public declared-synchronized getLuminance()I
    .locals 1

    monitor-enter p0

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->getProviderLuminance()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public declared-synchronized getMakeupAvailable()I
    .locals 1

    monitor-enter p0

    .line 516
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public loadColorTemperature()V
    .locals 7

    .line 482
    const-string v0, "/system/etc/xuiservice/makeup/alias.conf"

    const-class v1, [Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;

    .line 484
    .local v0, "array":[Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;
    if-eqz v0, :cond_1

    .line 485
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 486
    .local v3, "alias":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;->colorTemp:Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v3    # "alias":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Alias;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_0
    const-string v1, "XpMakeupLightService"

    const-string v2, "loadColorTemperature /system/etc/xuiservice/makeup/alias.conf succeed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void
.end method

.method public declared-synchronized loadMakeupEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 494
    :try_start_0
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    .line 496
    .local v0, "effect":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMakeupEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    monitor-exit p0

    return-void

    .line 493
    .end local v0    # "effect":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public declared-synchronized runEffect(Ljava/lang/String;I)I
    .locals 1
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I

    monitor-enter p0

    .line 558
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendRunEffectMessage(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 559
    :goto_0
    monitor-exit p0

    return v0

    .line 563
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 557
    .end local p1    # "effect":Ljava/lang/String;
    .end local p2    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public declared-synchronized setAliasColorTemperature(Ljava/lang/String;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 533
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_1

    .line 534
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->setColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 534
    :goto_0
    monitor-exit p0

    return v0

    .line 538
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 532
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public declared-synchronized setColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)I
    .locals 2
    .param p1, "colorTemp"    # Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    monitor-enter p0

    .line 524
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_1

    .line 525
    iget v0, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    iget v1, p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->checkColorTemperature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendColorTempMessage(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 525
    :goto_0
    monitor-exit p0

    return v0

    .line 529
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 523
    .end local p1    # "colorTemp":Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public declared-synchronized setLuminance(I)I
    .locals 1
    .param p1, "lux"    # I

    monitor-enter p0

    .line 546
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_1

    .line 547
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->checkLuminance(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendLuminanceMessage(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .line 550
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 545
    .end local p1    # "lux":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public setMakeupLightListener(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 462
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMakeupLightListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    if-eqz p1, :cond_1

    .line 465
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 466
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 469
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setMakeupLightStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    monitor-enter p0

    .line 520
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendMakeupStatusMessage(Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "status":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw p1
.end method

.method public declared-synchronized showAliasColorTemperature()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mAliasMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public declared-synchronized showMakeupEffect()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 508
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mEffectMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public declared-synchronized stopEffect()I
    .locals 1

    monitor-enter p0

    .line 567
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mStatus:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->sendStopEffectMassage()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 571
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    throw v0
.end method

.method public unsetMakeupLightListener(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;

    .line 472
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetMakeupLightListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    if-eqz p1, :cond_1

    .line 475
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 476
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 479
    :cond_1
    :goto_1
    return-void
.end method
