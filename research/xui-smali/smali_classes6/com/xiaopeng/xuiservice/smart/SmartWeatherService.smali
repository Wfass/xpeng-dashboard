.class public Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartWeatherService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;
    }
.end annotation


# static fields
.field private static final OPS_CITY:Ljava/lang/String; = "103101"

.field private static final OPS_TIME:Ljava/lang/String; = "100102"

.field private static final OPS_WEATHER:Ljava/lang/String; = "100101"

.field private static final TAG:Ljava/lang/String; = "SmartWeatherService"

.field private static hasBootCompleted:Z

.field private static hasInit:Z

.field private static hasResponse:Z

.field private static isGPSEnabled:Z

.field private static isNetWorkEnabled:Z

.field private static mDebug:Z

.field private static mHumidity:D

.field private static mLastTime:J

.field private static mLock:Ljava/lang/Object;

.field private static mPM25:D

.field private static mResult:Ljava/lang/String;

.field private static mTemperature:D

.field private static mWeather:I

.field private static mWeatherInfo:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

.field private mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mLocListener:Landroid/location/LocationListener;

.field private mLocManager:Landroid/location/LocationManager;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSkyconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;

.field private mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

.field private mWeatherType:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mResult:Ljava/lang/String;

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mTemperature:D

    .line 76
    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mHumidity:D

    .line 77
    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mPM25:D

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeather:I

    .line 79
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isGPSEnabled:Z

    .line 80
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isNetWorkEnabled:Z

    .line 81
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasInit:Z

    .line 82
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasResponse:Z

    .line 83
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasBootCompleted:Z

    .line 84
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLastTime:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 480
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    .line 87
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    .line 88
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;

    .line 89
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    .line 90
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    .line 92
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 93
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 94
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mSkyconMap:Ljava/util/Map;

    .line 276
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 482
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartWeatherThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$1;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 63
    sget-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 63
    sput-wide p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLastTime:J

    return-wide p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 63
    sput-object p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    .param p1, "x1"    # Landroid/location/Location;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->postRequest(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasResponse:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 63
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasResponse:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->updateWeatherInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->setLocalWeather()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasInit:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 63
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasInit:Z

    return p0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    .locals 1

    .line 492
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$InstanceHolder;->access$1300()Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    move-result-object v0

    return-object v0
.end method

.method private getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWeatherType(Ljava/lang/String;)I
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 152
    :cond_0
    const-string v0, "SmartWeatherService"

    const-string v1, "getWeatherType failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized handleBootComplete()V
    .locals 8

    monitor-enter p0

    .line 363
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasBootCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 365
    :cond_0
    :try_start_1
    const-string v0, "SmartWeatherService"

    const-string v1, "handleBootComplete"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasBootCompleted:Z

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->initParams()V

    .line 369
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->initWeatherType()V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isGPSEnabled:Z

    .line 374
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS provider has been "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isGPSEnabled:Z

    if-eqz v2, :cond_2

    const-string v2, "enabled"

    goto :goto_1

    :cond_2
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isNetWorkEnabled:Z

    .line 377
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network has been "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isConnecting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "connected"

    goto :goto_2

    :cond_3
    const-string v2, "disconnected"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetWork provider has been "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isNetWorkEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    goto :goto_3

    :cond_4
    const-string v2, "disabled"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isGPSEnabled:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isNetWorkEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    monitor-exit p0

    return-void

    .line 383
    :cond_5
    :try_start_2
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :try_start_3
    const-string v0, "SmartWeatherService"

    const-string v1, "request location updates"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isGPSEnabled:Z

    if-eqz v0, :cond_6

    .line 421
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x4e20

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    .line 422
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 421
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 425
    :cond_6
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->isNetWorkEnabled:Z

    if-eqz v0, :cond_7

    .line 426
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x4e20

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    .line 427
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 426
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    :cond_7
    goto :goto_4

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "SmartWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request location updates failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    throw v0
.end method

.method private initParams()V
    .locals 5

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "100101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const-string v1, "103101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "100102"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "scence"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "cduId"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string/jumbo v2, "vin"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "ops"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "lang"

    const-string v3, "ro.product.locale"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private initWeatherType()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "CLEAR_DAY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "CLEAR_NIGHT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "PARTLY_CLOUDY_DAY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "PARTLY_CLOUDY_NIGHT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "CLOUDY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "LIGHT_RAIN"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "MODERATE_RAIN"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "HEAVY_RAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "STORM_RAIN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "LIGHT_SNOW"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "MODERATE_SNOW"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "HEAVY_SNOW"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "STORM_SNOW"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "FOG"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "DUST"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "SAND"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "LIGHT_HAZE"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "MODERATE_HAZE"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherType:Landroid/util/ArrayMap;

    const-string v1, "HEAVY_HAZE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method private static isConnecting(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 355
    const-string v0, "connectivity"

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 357
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 359
    .local v1, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private makeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 178
    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private mockPostRequest()V
    .locals 5

    .line 335
    new-instance v0, Landroid/location/Location;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "location":Landroid/location/Location;
    const-wide/high16 v1, 0x4037000000000000L    # 23.0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 338
    const-wide v1, 0x405c400000000000L    # 113.0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 339
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string/jumbo v2, "vin"

    const-string v3, "L1NSPGHB6LA000077"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "cduId"

    const-string v3, "XPENGE2840808D1601806429"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "SmartWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mockPostRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getWeatherUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->postRequest(Landroid/location/Location;)V

    .line 346
    return-void
.end method

.method private declared-synchronized postRequest(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    monitor-enter p0

    .line 324
    :try_start_0
    const-string v0, "SmartWeatherService"

    const-string v1, "postRequest..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->setParams(DD)V

    .line 328
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getWeatherUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    const-string v1, "dj5pyz4qpamfg9c1"

    .line 330
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 331
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 323
    .end local p1    # "location":Landroid/location/Location;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
    throw p1
.end method

.method private registerReceiver()V
    .locals 3

    .line 436
    const-string v0, "SmartWeatherService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 442
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->handleBootComplete()V

    .line 445
    :cond_0
    return-void
.end method

.method private setLocalWeather()V
    .locals 5

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    const/4 v1, 0x1

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mTemperature:D

    double-to-int v2, v2

    sget-wide v3, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mHumidity:D

    double-to-int v3, v3

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeather:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/car/hardware/scu/CarScuManager;->setLocalWeather(IIII)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    sget-wide v1, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mPM25:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->setExternalAirPm25(I)V

    .line 268
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalWeather, temperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mTemperature:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", humidity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mHumidity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", weatherType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeather:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pm25="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mPM25:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocalWeather failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setParams(DD)V
    .locals 4
    .param p1, "curLat"    # D
    .param p3, "curLng"    # D

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v1, "curLat"

    double-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mParams:Ljava/util/Map;

    const-string v1, "curLng"

    double-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private updateWeatherInfo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v1, "weatherInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 196
    const-string v3, "100101"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 198
    .local v3, "weather":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 199
    const-string v4, "temperature"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sput-wide v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mTemperature:D

    .line 200
    const-string v4, "humidity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sput-wide v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mHumidity:D

    .line 201
    const-string v4, "skycon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getWeatherType(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeather:I

    .line 203
    const-string/jumbo v4, "weatherType"

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeather:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v4, "temperature"

    sget-wide v5, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mTemperature:D

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 205
    const-string v4, "Press"

    const-string v5, "pressure"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 206
    const-string v4, "humidity"

    sget-wide v5, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mHumidity:D

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v4, "windDirection"

    const-string/jumbo v5, "windDirection"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 208
    const-string/jumbo v4, "windSpeed"

    const-string/jumbo v5, "windSpeed"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    const-string/jumbo v4, "visibility"

    const-string/jumbo v5, "visibility"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 210
    const-string v4, "skycon"

    const-string v5, "skycon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v4, "comfortIndex"

    const-string v5, "comfortIndex"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v4, "comfortDes"

    const-string v5, "comfortDes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v4, "ultravioletIndex"

    const-string v5, "ultravioletIndex"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v4, "ultravioletDes"

    const-string v5, "ultravioletDes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v4, "airQuality"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 218
    .local v4, "air":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 219
    const-string v5, "aqi"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 220
    .local v5, "aqi":Lorg/json/JSONObject;
    const-string v6, "description"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 221
    .local v6, "desc":Lorg/json/JSONObject;
    const-string v7, "pm25"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    sput-wide v7, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mPM25:D

    .line 223
    const-string v7, "pm25"

    sget-wide v8, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mPM25:D

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 224
    const-string v7, "airQualityIndex"

    if-eqz v5, :cond_0

    const-string v8, "usa"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 225
    const-string v7, "airdescription"

    if-eqz v6, :cond_1

    const-string v8, "chn"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string v8, ""

    :goto_1
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .end local v5    # "aqi":Lorg/json/JSONObject;
    .end local v6    # "desc":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 229
    const-string v5, "103101"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 231
    .local v5, "city":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 232
    const-string v6, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    const-string v6, "province"

    const-string v7, "province"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v6, "city"

    const-string v7, "city"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v6, "district"

    const-string v7, "district"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_3
    const-string v6, "100102"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 239
    const-string v6, "100102"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "temperature"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 241
    .local v6, "array":Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    .line 242
    move v7, v0

    .line 242
    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 243
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 245
    .local v8, "element":Lorg/json/JSONObject;
    const-string v9, "date"

    invoke-direct {p0, v9, v7}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->makeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "date"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v9, "highTemp"

    invoke-direct {p0, v9, v7}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->makeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "max"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 247
    const-string v9, "lowTemp"

    invoke-direct {p0, v9, v7}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->makeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "min"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 242
    .end local v8    # "element":Lorg/json/JSONObject;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 252
    .end local v5    # "city":Lorg/json/JSONObject;
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v1    # "weatherInfo":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v3    # "weather":Lorg/json/JSONObject;
    .end local v4    # "air":Lorg/json/JSONObject;
    :cond_5
    goto :goto_3

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartWeatherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWeatherInfo failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return v0
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 502
    const-string v0, "*dump-SmartWeatherService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    if-nez p2, :cond_0

    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_a

    .line 506
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3fc24a23

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x5395eb2c

    if-eq v4, v5, :cond_2

    const v5, 0x7c8b17dc

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "--endSkycon"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    const-string v4, "--getWeatherInfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_3
    const-string v4, "--setSkycon"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 540
    :pswitch_0
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    if-eqz v2, :cond_9

    .line 541
    const-string v2, "<<< stop skycon debug"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    goto/16 :goto_7

    .line 519
    :pswitch_1
    array-length v2, p2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_9

    .line 521
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 522
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, "object":Lorg/json/JSONObject;
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mSkyconMap:Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p2, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 524
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mSkyconMap:Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p2, v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string v3, "CLEAR_DAY"

    .line 526
    .local v3, "skycon":Ljava/lang/String;
    :goto_4
    sget-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    if-nez v4, :cond_7

    .line 527
    sput-boolean v6, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mDebug:Z

    .line 528
    const-string v4, "start skycon debug >>>"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    :cond_7
    const-string v4, "skycon"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;->onChangeEvent(Ljava/lang/String;)V

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSkycon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", weatherInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "skycon":Ljava/lang/String;
    goto :goto_5

    .line 535
    :catch_0
    move-exception v2

    .line 536
    :goto_5
    goto :goto_7

    .line 509
    :pswitch_2
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    :try_start_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mockPostRequest()V

    .line 511
    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: gps("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->hasInit:Z

    if-eqz v4, :cond_8

    const-string v4, "ready) "

    goto :goto_6

    :cond_8
    const-string v4, "not ready) "

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    monitor-exit v2

    .line 516
    goto :goto_7

    .line 514
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 515
    :catch_1
    move-exception v2

    .line 517
    nop

    .line 505
    :cond_9
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 551
    const-string v0, "SmartWeatherService"

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 3

    .line 349
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 449
    const-string v0, "SmartWeatherService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "xp_scu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 452
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 453
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 466
    const-string v0, "SmartWeatherService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->registerReceiver()V

    .line 468
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 457
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->handleBootComplete()V

    .line 462
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 477
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    .line 122
    const-string v0, "SmartWeatherService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mWeatherListener:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    .line 124
    return-void
.end method
