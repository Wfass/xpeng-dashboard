.class public Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
.super Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;
.source "CarControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlUtilsHolder;,
        Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;
    }
.end annotation


# static fields
.field private static final LAMP_TURNOFF_MIN_INTERVAL:I = 0x190

.field public static final RESTORED_STATUS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CarControlUtils"

.field public static final TURNOFF_LAMP_LANGLIGHT:I = 0x3

.field public static final TURNOFF_LAMP_LIGHTDANCE:I = 0x1

.field public static final TURNOFF_LAMP_MODEMONITER:I = 0x4

.field public static final TURNOFF_LAMP_SAYHI:I = 0x0

.field public static final TURNOFF_LAMP_XSAYHI:I = 0x2

.field public static final Waiting_For_SayHi:I = 0x1

.field private static final hasSeriesD:Z

.field private static lastTurnOffReason:I

.field private static last_turnOnOff_settime:J

.field private static last_turnoff_time:J

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private static mCarControlListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mRestore:Ljava/lang/Object;

.field private static mTurnOff:Ljava/lang/Object;

.field private static savedTurnOnOff:I

.field private static turnOffLightLock:Ljava/lang/Object;


# instance fields
.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mContext:Landroid/content/Context;

.field private saveDayLightMode:I

.field private saveHeadLampMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->hasSeriesD:Z

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->last_turnoff_time:J

    .line 47
    sput-wide v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->last_turnOnOff_settime:J

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    .line 52
    sput v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->lastTurnOffReason:I

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->turnOffLightLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mTurnOff:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mRestore:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarControlListeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveDayLightMode:I

    .line 378
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$2;-><init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->addCarListeners()V

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->setCarControl(Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 88
    sget-boolean v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->hasSeriesD:Z

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;-><init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 113
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mTurnOff:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mRestore:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCarListeners()V
    .locals 2

    .line 375
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 376
    return-void
.end method

.method private static getCarBcmManager()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 76
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;
    .locals 1

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlUtilsHolder;->access$300()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    return-object v0
.end method

.method private getLastStatus()I
    .locals 2

    .line 120
    const-string v0, "sys.xiaopeng.headlight_status"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTurnLampStatus()Z
    .locals 4

    .line 285
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 286
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v1, :cond_2

    .line 287
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getLeftAndRightTurnLampsActiveStatus()[I

    move-result-object v1

    .line 288
    .local v1, "lampStatus":[I
    aget v2, v1, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    aget v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    return v0

    .line 292
    .end local v1    # "lampStatus":[I
    :cond_2
    goto :goto_2

    .line 290
    :catch_0
    move-exception v1

    .line 293
    :goto_2
    return v0
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 391
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarControlListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;

    .line 394
    .local v1, "listener":Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;->onIgStatusChange(I)V

    .line 395
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;
    goto :goto_0

    .line 396
    :cond_1
    nop

    .line 400
    :goto_1
    return-void
.end method

.method private setLastStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 116
    const-string v0, "sys.xiaopeng.headlight_status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public addCarControlListener(Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/CarControlUtils$CarControlListener;

    .line 369
    if-eqz p1, :cond_0

    .line 370
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarControlListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    return-void
.end method

.method public getLampOffstatus()Z
    .locals 3

    .line 267
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLluTriggerLampOff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public recoveryLampSaveMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 271
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->last_turnOnOff_settime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 274
    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    goto :goto_0

    .line 276
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    .line 278
    :cond_1
    :goto_0
    return-void
.end method

.method public recoveryTurnOnoffSaveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 280
    sput p1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    .line 281
    return-void
.end method

.method public saveLampOffstatus(Z)V
    .locals 2
    .param p1, "turnOff"    # Z

    .line 263
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLluTriggerLampOff"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    return-void
.end method

.method public setHeadLight(Z)V
    .locals 10
    .param p1, "restore"    # Z

    .line 128
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getLastStatus()I

    move-result v2

    if-ne v2, v1, :cond_0

    monitor-exit v0

    return-void

    .line 198
    :catchall_0
    move-exception v1

    goto/16 :goto_c

    .line 131
    :cond_0
    const-string v2, "CarControlUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeadLight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, "RESTORE"

    goto :goto_0

    :cond_1
    const-string v4, "OFF"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v4, "0:1:"

    goto :goto_1

    :cond_2
    const-string v4, "1:0:"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "cmd":Ljava/lang/String;
    const-string v4, "CarControlUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHeadLight,cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",restore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lamp_control"

    .line 137
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->setLastStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v2    # "cmd":Ljava/lang/String;
    goto/16 :goto_b

    .line 145
    :cond_4
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 146
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const/4 v2, 0x0

    .line 147
    .local v2, "off":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getLastStatus()I

    move-result v4

    .line 149
    .local v4, "lampStatus":I
    const-wide/16 v5, 0x1f4

    if-eqz p1, :cond_9

    .line 151
    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    sget v7, Lcom/xiaopeng/util/FeatureOption;->FO_PARKING_FMB_LIGHT_AUTO_TYPE:I

    if-ne v7, v3, :cond_5

    .line 153
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getParkLightRelatedFMBLightConfigState()I

    move-result v7

    if-ne v7, v3, :cond_5

    .line 155
    const/4 v3, 0x4

    goto :goto_3

    :cond_5
    move v3, v4

    .line 157
    .local v3, "on":I
    :goto_3
    const-string v7, "CarControlUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore lampStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (last="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v7

    if-ne v4, v7, :cond_6

    if-eq v4, v3, :cond_8

    .line 160
    :cond_6
    sget-object v7, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mRestore:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampGroup(I)V

    .line 163
    sget-object v8, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mRestore:Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 165
    const-string v5, "CarControlUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore HeadLight "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v8

    if-ne v4, v8, :cond_7

    .line 167
    const-string v8, "succeed"

    goto :goto_4

    :cond_7
    const-string v8, "failed"

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    goto :goto_5

    .line 171
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 169
    :catch_0
    move-exception v5

    .line 171
    :goto_5
    :try_start_3
    monitor-exit v7

    .line 173
    .end local v3    # "on":I
    :cond_8
    goto :goto_a

    .line 171
    .restart local v3    # "on":I
    :goto_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5

    .line 174
    .end local v3    # "on":I
    :cond_9
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v3

    .line 175
    .end local v4    # "lampStatus":I
    .local v3, "lampStatus":I
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->setLastStatus(I)V

    .line 177
    const-string v4, "CarControlUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save lampStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v3, :cond_b

    .line 180
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mTurnOff:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v1, v7}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampGroup(I)V

    .line 183
    sget-object v7, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mTurnOff:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 185
    const-string v5, "CarControlUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turn off HeadLight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v7

    if-nez v7, :cond_a

    .line 187
    const-string v7, "succeed"

    goto :goto_7

    :cond_a
    const-string v7, "failed"

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 190
    goto :goto_8

    .line 191
    :catchall_2
    move-exception v5

    goto :goto_9

    .line 189
    :catch_1
    move-exception v5

    .line 191
    :goto_8
    :try_start_6
    monitor-exit v4

    goto :goto_a

    :goto_9
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v2    # "off":I
    .end local v3    # "lampStatus":I
    :cond_b
    :goto_a
    goto :goto_b

    .line 194
    :catch_2
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "CarControlUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeadLight failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :goto_c
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public setHighBeamOnOff(I)V
    .locals 3
    .param p1, "type"    # I

    .line 298
    :try_start_0
    const-string v0, "CarControlUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighBeamOnOff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 300
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHighBeamOnOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 306
    :goto_0
    return-void
.end method

.method public setMirrorOnOff(I)V
    .locals 3
    .param p1, "type"    # I

    .line 355
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 356
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "CarControlUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorOnOff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRearViewMirror(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 366
    :goto_0
    return-void
.end method

.method public setScissorsLeftGateOnOff(I)V
    .locals 1
    .param p1, "type"    # I

    .line 329
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 330
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcAutoControl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 336
    :goto_0
    return-void
.end method

.method public setScissorsRightGateOnOff(I)V
    .locals 1
    .param p1, "type"    # I

    .line 342
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 343
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcAutoControl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 349
    :goto_0
    return-void
.end method

.method public setWindowOnOff(I)V
    .locals 5
    .param p1, "type"    # I

    .line 312
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 313
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "pos":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 317
    const/16 v0, 0x64

    .line 318
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    int-to-float v2, v0

    int-to-float v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/car/hardware/bcm/CarBcmManager;->setWindowsMovePositions(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "pos":I
    :cond_1
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    return-void
.end method

.method public turnOffAndRestoreLight(IZ)I
    .locals 7
    .param p1, "turnoffReason"    # I
    .param p2, "turnoff"    # Z

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "ret":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "lamp_control"

    .line 209
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v3, "1:0:"

    goto :goto_0

    :cond_0
    const-string v3, "0:1:"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "CarControlUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turnOffAndRestoreLight,turnoff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->turnOffLightLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    monitor-exit v3

    .line 216
    return v0

    .line 214
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 220
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->turnOffLightLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    move v2, p2

    .line 223
    .local v2, "turnoffStatus":I
    const/4 v3, -0x1

    .line 224
    .local v3, "lampGroup":I
    if-eqz p2, :cond_2

    .line 225
    :try_start_1
    sput p1, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->lastTurnOffReason:I

    goto :goto_1

    .line 258
    .end local v2    # "turnoffStatus":I
    .end local v3    # "lampGroup":I
    :catchall_1
    move-exception v2

    goto/16 :goto_7

    .line 255
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 227
    .restart local v2    # "turnoffStatus":I
    .restart local v3    # "lampGroup":I
    :cond_2
    :goto_1
    sget v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    if-ne v4, v2, :cond_3

    .line 228
    const-string v4, "CarControlUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOffAndRestoreLight same setted :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|turnoff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 231
    :cond_3
    :try_start_3
    const-string v4, "CarControlUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOffAndRestoreLight reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "savedTurnOnOff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |turnoff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",saveHeadLampMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getCarBcmManager()V

    .line 235
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v4, :cond_7

    .line 236
    const/4 v4, -0x1

    sput v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    .line 237
    const-string v5, "persist.sys.xp.brightness.dark.ignore"

    if-eqz p2, :cond_4

    const-string v6, "true"

    goto :goto_2

    :cond_4
    const-string v6, "false"

    :goto_2
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p2, :cond_5

    .line 239
    const-string v5, "CarControlUtils"

    const-string v6, "setHeadLampGroup & DayLight OFF"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v5, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v5}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v5

    .line 241
    .local v5, "tempHeadLampMode":I
    iput v5, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    .line 242
    const/4 v3, 0x0

    .line 243
    .end local v5    # "tempHeadLampMode":I
    goto :goto_3

    .line 244
    :cond_5
    iget v5, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->saveHeadLampMode:I

    move v3, v5

    .line 246
    :goto_3
    if-eq v3, v4, :cond_6

    .line 247
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v4, v3}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampGroup(I)V

    .line 249
    sput v2, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->savedTurnOnOff:I

    .line 251
    :cond_6
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Landroid/car/hardware/bcm/CarBcmManager;->setDayLightMode(I)V

    goto :goto_4

    .line 253
    :cond_7
    const-string v4, "CarControlUtils"

    const-string v5, "turnOffAndRestoreLight, CarBcmManager not available"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    .end local v2    # "turnoffStatus":I
    .end local v3    # "lampGroup":I
    :goto_4
    goto :goto_6

    .line 255
    :goto_5
    nop

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "CarControlUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turnOffAndRestoreLight e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    monitor-exit v1

    .line 259
    return v0

    .line 258
    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
