.class public Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
.source "BlueLightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final BLUE_LIGHT_DAY_MODE:I = 0x0

.field private static final BLUE_LIGHT_MTU_SIZE:I = 0x41

.field private static final BLUE_LIGHT_NIGHT_MODE:I = 0x2

.field private static final CMD_BLUE_LIGHT_CLOSE_BROADCAST_METHOD:Ljava/lang/String; = "100"

.field private static final CMD_BLUE_LIGHT_CLOSE_METHOD:Ljava/lang/String; = "002"

.field private static final CMD_BLUE_LIGHT_DAY_MODE:Ljava/lang/String; = "010"

.field private static final CMD_BLUE_LIGHT_NIGHT_MODE:Ljava/lang/String; = "011"

.field private static final CMD_BLUE_LIGHT_OPEN_METHOD:Ljava/lang/String; = "001"

.field private static final CMD_BLUE_LIGHT_PREFIX:Ljava/lang/String; = "/CX/XB0/"

.field private static final CMD_BLUE_LIGHT_SUFFIX:Ljava/lang/String; = "/000/#"

.field private static final DeviceTag:Ljava/lang/String; = "BlueLight"

.field private static final NOTIFY_PREFIX:Ljava/lang/String; = "/S/XB0/"

.field private static final TAG:Ljava/lang/String; = "BlueLightManager"

.field private static mBlueLightDevice:Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;

.field private static final mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mLightColor:Ljava/lang/String;

.field private static mLightStatus:Ljava/lang/String;

.field private static mLightVersion:Ljava/lang/String;


# instance fields
.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private volatile mDayNightMode:I

.field private volatile mIsLightNeedActive:Z

.field private mLightControl:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;

.field private mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

.field private volatile tempDayNightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 45
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightStatus:Ljava/lang/String;

    .line 46
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightColor:Ljava/lang/String;

    .line 47
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->tempDayNightMode:I

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    .line 57
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    .line 27
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLight()V

    return-void
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLightDayMode()V

    return-void
.end method

.method private cbTest(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 343
    const-string v0, "callback test..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$BlueLightManager$PVCCfTQPkrn03drjaQ_f9XPZH_M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$BlueLightManager$PVCCfTQPkrn03drjaQ_f9XPZH_M;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method private controlBlueLight()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "BlueLightManager"

    const-string v1, "controlBlueLight error,mDevice is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_0
    const-string v0, "100"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mConnectState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const-string v0, "BlueLightManager"

    const-string v1, "controlBlueLight error,mDevice is not connected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method private controlBlueLightDayMode()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "BlueLightManager"

    const-string v1, "controlBlueLight error,mDevice is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void

    .line 286
    :cond_0
    const-string v0, "100"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mConnectState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const-string v0, "BlueLightManager"

    const-string v1, "controlBlueLight error,mDevice is not connected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->tempDayNightMode:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    if-ne v0, v1, :cond_2

    .line 291
    const-string v0, "BlueLightManager"

    const-string v1, "controlBlueLightDayMode error,mDevice DayNightMode is not changed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void

    .line 294
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->tempDayNightMode:I

    .line 295
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    if-nez v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$3;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 299
    :cond_3
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$4;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    :cond_4
    :goto_0
    return-void
.end method

.method private disableBleBroadcast()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "BlueLightManager"

    const-string v1, "enableBleBroadcast error,mDevice is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$5;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    return-void
.end method

.method private dumpAll(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->selfGetPropertyMap()V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private getEnvironmentMode()I
    .locals 4

    .line 327
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 328
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getEnvironmentMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 333
    .end local v0    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_0
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BlueLightManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnvironmentMode,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
    .locals 1

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$SingletonHolder;->access$200()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    move-result-object v0

    return-object v0
.end method

.method private handleTimedData(Ljava/lang/String;)V
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .line 225
    const-string v0, "BlueLightManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimedData,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    const-string v0, "/S/XB0/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "props":[Ljava/lang/String;
    const-string v1, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get props length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mLightStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mLightColor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mLightVersion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mErrorCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-object v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "jsonObject":Lorg/json/JSONObject;
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightStatus:Ljava/lang/String;

    aget-object v7, v0, v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    aget-object v3, v0, v4

    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightStatus:Ljava/lang/String;

    .line 233
    const-string v3, "BlueLightManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotify mLightStatus="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightStatus:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightColor:Ljava/lang/String;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    aget-object v2, v0, v2

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightColor:Ljava/lang/String;

    .line 237
    const-string v2, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify mLightColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightVersion:Ljava/lang/String;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    aget-object v2, v0, v5

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightVersion:Ljava/lang/String;

    .line 241
    const-string v2, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify mLightVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mErrorCode:Ljava/lang/String;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    aget-object v2, v0, v6

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mErrorCode:Ljava/lang/String;

    .line 246
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 247
    const-string v2, "errorCode"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_3
    if-eqz v1, :cond_4

    .line 250
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "notifyString":Ljava/lang/String;
    const-string v3, "BlueLightManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotify str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->notifyPropEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "props":[Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "notifyString":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BlueLightManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimedData,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 4

    .line 85
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;

    const-string v1, "BlueLight"

    const-string v2, "BlueLight"

    const-string v3, "XPeng-bluelight"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mBlueLightDevice:Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;

    .line 86
    const-string v0, "BlueLight"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mBlueLightDevice:Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;

    const-string v2, "key_iot_blue_light_address"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->baseInit(Ljava/lang/String;Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;)V

    .line 87
    const-string v0, "BlueLight"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$BlueLightManager$lpJ8tH1CEFRym7FP8Ppd8iBqcFc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$BlueLightManager$lpJ8tH1CEFRym7FP8Ppd8iBqcFc;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 90
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->setTargetMtu(I)V

    .line 91
    return-void
.end method

.method private initEnvrModeListener()V
    .locals 2

    .line 97
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 99
    return-void
.end method

.method public static synthetic lambda$cbTest$1(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 1

    .line 345
    const-string v0, "/S/XB0/0,01,01,000000#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->onNotify([B)V

    .line 346
    const-string v0, "/S/XB0/1,01,01,000001#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->onNotify([B)V

    .line 347
    return-void
.end method

.method public static synthetic lambda$initData$0(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 103
    if-nez p2, :cond_0

    .line 104
    const-string v0, "please dump with args"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return-void

    .line 107
    :cond_0
    const-string v0, "dump-BlueLightManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    array-length v0, p2

    .line 109
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 110
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d4

    if-eq v5, v6, :cond_2

    const v6, 0xb54c

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "-cb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->cbTest(Ljava/io/PrintWriter;)V

    .line 121
    return-void

    .line 112
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->dumpAll(Ljava/io/PrintWriter;)V

    .line 117
    return-void

    .line 126
    .end local v2    # "i":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPropertyCommand(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "cmdBytes":[B
    const/4 v1, 0x0

    .line 140
    .local v1, "cmdString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "closeBlueLight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "openBlueLight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "blueLightDayMode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "closeBleBroadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "blueLightNightMode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 149
    const-string v2, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyCommand,unknown command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/XB0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/000/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    nop

    .line 154
    :goto_2
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 156
    const-string v2, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c2d1fa1 -> :sswitch_4
        0x25e65fbe -> :sswitch_3
        0x41de6ee3 -> :sswitch_2
        0x68e7a9b2 -> :sswitch_1
        0x7c5eb5c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .line 76
    const-string v0, "BlueLightManager"

    const-string v1, "BlueLightManager init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->initEnvrModeListener()V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->initData()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlFactory;->createLightControl(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightControl:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightControl:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;->isLightNeedActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLight()V

    .line 82
    return-void
.end method

.method protected onBleDeviceConnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceType"    # Ljava/lang/String;

    .line 194
    const-string v0, "BlueLightManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBleDeviceConnected,deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "BlueLightManager"

    const-string v1, "onBleDeviceConnected error,mDevice is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    .line 199
    :cond_0
    const-string v0, "BlueLight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->disableBleBroadcast()V

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->getEnvironmentMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mDayNightMode:I

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLightDayMode()V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightControl:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;->isLightNeedActive()Z

    move-result v0

    .line 206
    .local v0, "active":Z
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    if-eq v1, v0, :cond_1

    .line 207
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->controlBlueLight()V

    .line 211
    .end local v0    # "active":Z
    :cond_1
    return-void
.end method

.method protected onGetPropMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 185
    const-string v0, "BlueLightManager"

    const-string v1, "onGetPropMap error,map is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 188
    :cond_0
    const-string v0, "connect_state"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mConnectState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "errorCode"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mErrorCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method protected onNotify([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "BlueLightManager"

    const-string v1, "onNotify, data null!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 171
    .local v0, "val":Ljava/lang/String;
    const-string v1, "/S/XB0/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 172
    .local v1, "matchBlue":Z
    if-eqz v1, :cond_2

    .line 173
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mNotifyString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v2, "BlueLightManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify,repeated data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mNotifyString:Ljava/lang/String;

    .line 177
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->handleTimedData(Ljava/lang/String;)V

    .line 180
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResetStatus()V
    .locals 1

    .line 130
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightStatus:Ljava/lang/String;

    .line 131
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightColor:Ljava/lang/String;

    .line 132
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mLightVersion:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->mIsLightNeedActive:Z

    .line 134
    return-void
.end method
