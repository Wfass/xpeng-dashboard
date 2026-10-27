.class public Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartTestDriveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartTestDriveService"


# instance fields
.field private hasConditionDoorOpen:Z

.field private hasConditionGearP:Z

.field private hasIgOn:Z

.field private hasTestDrive:Z

.field private isRightRudder:Z

.field private mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mGearLevel:I

.field private mLastIgOnTs:J

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private final mNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

.field private mPassengerInfo:Lorg/json/JSONObject;

.field private mSrcCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mStartTestDriveTs:J

.field private mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

.field private final mTestdriveMinutes:I

.field private mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 491
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getDriveMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    .line 48
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->isRightRudder:Z

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mLastIgOnTs:J

    .line 51
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mPassengerInfo:Lorg/json/JSONObject;

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 55
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 56
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mSrcCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 58
    const-string v0, "persist.sys.xpeng.testdrive_minutes"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mTestdriveMinutes:I

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 492
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->registerObserver()V

    .line 493
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->registerPushMessage()V

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getDriveMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasGearP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasConditionDoorOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasConditionDoorOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->isRightRudder:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getSaleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->registerNavigationListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mStartTestDriveTs:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # J

    .line 43
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mStartTestDriveTs:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mTestdriveMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->unregisterNavigationListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mPassengerInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mPassengerInfo:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasIgOn:Z

    return p1
.end method

.method static synthetic access$600(J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J

    .line 43
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getSimpleData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mLastIgOnTs:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # J

    .line 43
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mLastIgOnTs:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # I

    .line 43
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    return p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasConditionGearP:Z

    return v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasConditionGearP:Z

    return p1
.end method

.method private addBcmManagerCallback()V
    .locals 1

    .line 211
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 261
    return-void
.end method

.method private addMcuManagerCallback()V
    .locals 1

    .line 151
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 182
    return-void
.end method

.method private addSrsManagerCallback()V
    .locals 1

    .line 264
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mSrcCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mSrcCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 344
    return-void
.end method

.method private addVcuManagerCallback()V
    .locals 1

    .line 185
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 208
    return-void
.end method

.method private getDisplayGearLevel()I
    .locals 5

    .line 363
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 366
    .local v0, "vcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayGearLevel failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private getDriveMode()I
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "model_setting_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDriverBeltWarning()I
    .locals 5

    .line 411
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 414
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverBeltWarning()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriverBeltWarning failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method private getDriverDoorState()I
    .locals 5

    .line 399
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 402
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverDoorState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriverDoorState failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private getDriverOnSeat()I
    .locals 5

    .line 375
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 378
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriveOnSeat failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private getIgStatusFromMcu()I
    .locals 5

    .line 351
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 354
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;
    .locals 1

    .line 502
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$InstanceHolder;->access$1700()Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    move-result-object v0

    return-object v0
.end method

.method private getPsnOnSeat()I
    .locals 5

    .line 387
    const-string/jumbo v0, "xp_srs"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/srs/CarSrsManager;

    .line 390
    .local v0, "srsManager":Landroid/car/hardware/srs/CarSrsManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPsnOnSeat()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartTestDriveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsnOnSeat failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static getSaleName()Ljava/lang/String;
    .locals 2

    .line 80
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines;->findByCduType(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$5TXJF840Vumq1mm-PCWC-EejTZ8;

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "\u5c0f\u9e4f"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method private static getSimpleData(J)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasGearP()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getDisplayGearLevel()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    .line 91
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic lambda$getSaleName$0(Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;)Ljava/lang/String;
    .locals 1
    .param p0, "ct"    # Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->saleName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$registerPushMessage$1(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 138
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onReceivePushMessage, messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mState:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mPassengerInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse passengerInfo failed,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerNavigationListener()V
    .locals 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->getInstance()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNavigationListener failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 111
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerObserver, hasTestDrive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "model_setting_disable"

    .line 114
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;

    new-instance v3, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Landroid/os/Handler;)V

    .line 113
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method private registerPushMessage()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v0

    const-string v1, "002"

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$_Lb3QwcdJrcYy-AHIDq6_YA5sRE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$_Lb3QwcdJrcYy-AHIDq6_YA5sRE;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/message/PushMessage;->registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V

    .line 148
    return-void
.end method

.method private removeCarListener()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 348
    return-void
.end method

.method private unregisterNavigationListener()V
    .locals 4

    .line 104
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->getInstance()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterNavigationListener failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 459
    const-string v0, "*dump-SmartTestDriveService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    if-eqz p2, :cond_5

    .line 462
    const/4 v0, 0x0

    move v1, v0

    .line 462
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 463
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x402e776a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0xc3938c6

    if-eq v4, v5, :cond_1

    const v5, 0x15424776

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "--startTestDrive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_2

    :cond_1
    const-string v4, "--setPassengerInfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_2
    const-string v4, "--stopTestDrive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 478
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getDriveMode()I

    move-result v2

    if-ne v2, v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v0

    :goto_3
    iput-boolean v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    goto :goto_4

    .line 475
    :pswitch_1
    iput-boolean v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasTestDrive:Z

    .line 476
    goto :goto_4

    .line 466
    :pswitch_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .local v2, "mPassengerInfo":Lorg/json/JSONObject;
    const-string v3, "name"

    const-string/jumbo v4, "\u5c0fP"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v3, "sex"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v2    # "mPassengerInfo":Lorg/json/JSONObject;
    goto :goto_4

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SmartTestDriveService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPassengerInfo failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 462
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_5
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

    .line 487
    const-string v0, "SmartTestDriveService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 2

    .line 429
    const-string v0, "SmartTestDriveService"

    const-string v1, "initCarListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasIgOn:Z

    .line 432
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getDisplayGearLevel()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->mGearLevel:I

    .line 434
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addMcuManagerCallback()V

    .line 435
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addVcuManagerCallback()V

    .line 436
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addBcmManagerCallback()V

    .line 437
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addSrsManagerCallback()V

    .line 438
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 442
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 443
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 424
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->hasIgOn:Z

    .line 425
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 447
    const-string v0, "SmartTestDriveService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 452
    const-string v0, "SmartTestDriveService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->removeCarListener()V

    .line 455
    return-void
.end method
