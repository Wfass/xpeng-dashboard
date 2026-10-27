.class public abstract Lcom/xiaopeng/carcontrol/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static final CAR_IMG_D55A:Ljava/lang/String; = "_d55a"

.field private static final CAR_IMG_TOP_SUFFIX:Ljava/lang/String; = "_top"

.field private static final CAR_PROP_HANDLE_THREAD:Ljava/lang/String; = "CarPropHandleThread"

.field private static final DRIVE_PAGE_CAR_IMG_PREFIX:Ljava/lang/String; = "img_drive_carbody_color_"

.field private static final LOG_TIME:I = 0x927c0

.field private static final MAIN_PAGE_CAR_IMG_PREFIX:Ljava/lang/String; = "img_main_carbody_color_"

.field public static final TAG:Ljava/lang/String; = "CarControlApp"

.field private static mIsSpFileExistAtStartup:Z = false

.field protected static sAppInstance:Lcom/xiaopeng/carcontrol/App;

.field protected static sIsMainProcess:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/App;
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/carcontrol/App;->sAppInstance:Lcom/xiaopeng/carcontrol/App;

    return-object v0
.end method

.method public static getMainControlPageCarBodyImg()I
    .locals 6

    const-string v0, "isSupportTopCamera"

    .line 331
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "img_main_carbody_color_"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSupportCarImgWithCarType"

    .line 335
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "Q3A"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_d55a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", res name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , MainControlPageCarBodyImg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CarControlApp"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_3

    .line 345
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->img_main_carbody_color_1:I

    .line 347
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", MainControlPageCarBodyImg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getSpStateAtStartup()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/xiaopeng/carcontrol/App;->mIsSpFileExistAtStartup:Z

    return v0
.end method

.method private initSync()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->initXid()V

    .line 262
    sget-object v0, Lcom/xiaopeng/carcontrol/-$$Lambda$App$e8Gna-IdufxcT1gea8xA5er-b3o;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$App$e8Gna-IdufxcT1gea8xA5er-b3o;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initXid()V
    .locals 3

    .line 269
    sget-object v0, Lcom/xiaopeng/carcontrol/CarConfig;->ACCOUNT_APP_ID:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getProductModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/xvs/xid/XId;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/xiaopeng/carcontrol/App;->sIsMainProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/App;->sIsMainProcess:Ljava/lang/Boolean;

    .line 82
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/App;->sIsMainProcess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$init$0()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->setLogBackUp(Z)V

    return-void
.end method

.method static synthetic lambda$initSync$2()V
    .locals 2

    const-string v0, "CarControlApp"

    const-string v1, "init DataSyncModel"

    .line 263
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->init()V

    return-void
.end method

.method private observeSettingFollowedVehicleLostConfig()V
    .locals 4

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "followed_vehicle_lost_config"

    .line 286
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/App$2;

    const/4 v3, 0x0

    .line 288
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/carcontrol/App$2;-><init>(Lcom/xiaopeng/carcontrol/App;Landroid/os/Handler;)V

    const/4 v3, 0x1

    .line 285
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private observeSettingLowSpdEnable()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_low_speed_sound"

    .line 274
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/App$1;

    const/4 v3, 0x0

    .line 276
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/carcontrol/App$1;-><init>(Lcom/xiaopeng/carcontrol/App;Landroid/os/Handler;)V

    const/4 v3, 0x1

    .line 273
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private printVersionInfo()V
    .locals 6

    const-string v0, "CarControlApp"

    const-string v1, "\n"

    const/4 v2, 0x0

    .line 222
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "====print CarControl information===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "swVersion : "

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "hwVersion : "

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/car/Car;->getHardwareVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vehicleType : "

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cduType : "

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "buildVersion : "

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "V5.1.5_20250821203741_Release_HEAD_d0d7f9ef12_2025/08/21 12:38:40"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v5, "app version : "

    .line 232
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private registerModules()V
    .locals 3

    .line 243
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->init(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appOnCreateBegin()V

    .line 101
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->setProcessName(Z)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarPropHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->connectToCar(Landroid/os/Handler;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->connectToXui()V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->initBugHunter()V

    .line 115
    invoke-static {p0}, Lcom/xiaopeng/xui/Xui;->init(Landroid/app/Application;)V

    .line 116
    invoke-static {v2}, Lcom/xiaopeng/xui/Xui;->setFontScaleDynamicChangeEnable(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->onAppCreate()V

    .line 120
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CarControl"

    .line 122
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sput-boolean v2, Lcom/xiaopeng/carcontrol/App;->mIsSpFileExistAtStartup:Z

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSpFileExistAtStartup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/xiaopeng/carcontrol/App;->mIsSpFileExistAtStartup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarControlApp"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->printVersionInfo()V

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->registerModules()V

    .line 131
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->init(Landroid/app/Application;)V

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->initSync()V

    .line 135
    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$App$c2HRlWeiJu2Z5ZTR5QIX19E1eRk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$App$c2HRlWeiJu2Z5ZTR5QIX19E1eRk;-><init>(Lcom/xiaopeng/carcontrol/App;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 161
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->init()V

    .line 162
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->initSpeechService()V

    .line 164
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appOnCreateEnd()V

    return-void
.end method

.method protected initBugHunter()V
    .locals 0

    .line 168
    invoke-static {p0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected initSmartControlSDK()V
    .locals 2

    const-string v0, "CarControlApp"

    const-string v1, "initSmartControlSDK"

    .line 180
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->init(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerSeatImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;)V

    .line 183
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerCarBodyImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerLampImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer$Implementation;)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerWindowImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer$Implementation;)V

    .line 186
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerAtlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;)V

    .line 187
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerXpilotImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer$Implementation;)V

    .line 188
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerCarControlShowImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;)V

    .line 189
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerDriveControlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;)V

    .line 190
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerAccountImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer$Implementation;)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerMirrorControlImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer$Implementation;)V

    .line 192
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->registerCameraAuthImpl(Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;)V

    .line 193
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->initComplete()V

    return-void
.end method

.method public isUnityPreload()Z
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unity_preload"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$1$App()V
    .locals 4

    const-string v0, "CarControlApp"

    const-string v1, "Check if car service connected"

    .line 136
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    .line 139
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait car service connect exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->observeSettingLowSpdEnable()V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;->observeSettingFollowedVehicleLostConfig()V

    .line 147
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/SpeechClient;->init(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->app_car_control:I

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->app_car_control_hint:I

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/SpeechClient;->setAppName([Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->registerResolver()V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->preloadControlPanel()V

    :cond_0
    return-void
.end method

.method public notifyPreloadComplete(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReady"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_ready"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreloadComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarControlApp"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/App;->setUnityPreload(Z)V

    return-void
.end method

.method abstract onAppCreate()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 321
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 91
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 92
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->init(Landroid/content/Context;)V

    const-string v0, "CarControlApp"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    .line 93
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    sput-object p0, Lcom/xiaopeng/carcontrol/App;->sAppInstance:Lcom/xiaopeng/carcontrol/App;

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->init()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->disconnect()V

    .line 200
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/LogUtils;->isLogBackUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->setLogBackUp(Z)V

    .line 203
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method abstract preloadControlPanel()V
.end method

.method protected reloadControlPanel(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method

.method public setUnityPreload(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unity_preload"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
