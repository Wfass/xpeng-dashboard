.class public Lcom/xiaopeng/xuiservice/smart/SmartLampService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartLampService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartLampService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final ACTION_XKEY:Ljava/lang/String; = "com.xiaopeng.intent.action.xkey"

.field private static final TAG:Ljava/lang/String; = "SmartLampService"

.field private static hasAvhActive:Z

.field private static hasBootCompleted:Z

.field private static final hasDomestic:Z

.field private static hasGearLevelP:Z

.field private static hasHeadLightOff:Z

.field private static hasIgOn:Z

.field private static hasRearFogLampOff:Z

.field private static final hasSeriesD:Z

.field private static hasTemporaryLock:Z

.field private static hasTurnLampOff:Z

.field private static mGearLevelStatus:I

.field private static mLastRatioTs:J


# instance fields
.field private mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mEspCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mLluCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private mProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

.field private mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasSeriesD:Z

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasDomestic:Z

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasBootCompleted:Z

    .line 49
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z

    .line 50
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasRearFogLampOff:Z

    .line 51
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTurnLampOff:Z

    .line 52
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasGearLevelP:Z

    .line 53
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasAvhActive:Z

    .line 54
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasHeadLightOff:Z

    .line 55
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTemporaryLock:Z

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mLastRatioTs:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 60
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 61
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mEspCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 62
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mLluCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    .line 442
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasHeadLightOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasHeadLightOff:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->checkHeadLampModeOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasAvhActive:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasAvhActive:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 38
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mGearLevelStatus:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 38
    sput p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mGearLevelStatus:I

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasGearLevelP:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasGearLevelP:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->initCarStatus()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasSeriesD:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTurnLampOff:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTurnLampOff:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasRearFogLampOff:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasRearFogLampOff:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTemporaryLock:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 38
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTemporaryLock:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasDomestic:Z

    return v0
.end method

.method private addBcmManagerCallback()V
    .locals 1

    .line 141
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 208
    return-void
.end method

.method private addEspManagerCallback()V
    .locals 1

    .line 211
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mEspCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mEspCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 240
    return-void
.end method

.method private addLluManagerCallback()V
    .locals 1

    .line 275
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mLluCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mLluCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 316
    return-void
.end method

.method private addMcuManagerCallback()V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 138
    return-void
.end method

.method private addVcuManagerCallback()V
    .locals 1

    .line 243
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 272
    return-void
.end method

.method private checkHeadLampModeOff()Z
    .locals 5

    .line 83
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "c_head_lamp_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartLampService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkHeadLampModeOff failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLampService;
    .locals 1

    .line 455
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$InstanceHolder;->access$1300()Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initCarStatus()V
    .locals 7

    monitor-enter p0

    .line 328
    :try_start_0
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 329
    .local v0, "vcuMgr":Landroid/car/hardware/vcu/CarVcuManager;
    const-string/jumbo v1, "xp_esp"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    .line 330
    .local v1, "espMgr":Landroid/car/hardware/esp/CarEspManager;
    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/bcm/CarBcmManager;

    .line 332
    .local v2, "bcmMgr":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v3

    sput v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mGearLevelStatus:I

    .line 333
    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mGearLevelStatus:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sput-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasGearLevelP:Z

    .line 334
    invoke-virtual {v1}, Landroid/car/hardware/esp/CarEspManager;->getAvh()I

    move-result v3

    if-ne v3, v6, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasAvhActive:Z

    .line 335
    invoke-virtual {v2}, Landroid/car/hardware/bcm/CarBcmManager;->getRearFogLamp()I

    move-result v3

    if-eq v3, v6, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    sput-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasRearFogLampOff:Z

    .line 337
    invoke-virtual {v2}, Landroid/car/hardware/bcm/CarBcmManager;->getLeftAndRightTurnLampsActiveStatus()[I

    move-result-object v3

    .line 338
    .local v3, "data":[I
    aget v4, v3, v5

    if-eq v4, v6, :cond_3

    aget v4, v3, v6

    if-eq v4, v6, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTurnLampOff:Z

    .line 340
    sget-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasSeriesD:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->checkHeadLampModeOff()Z

    move-result v4

    goto :goto_4

    .line 341
    :cond_4
    invoke-virtual {v2}, Landroid/car/hardware/bcm/CarBcmManager;->getHeadLampGroup()I

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    sput-boolean v4, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasHeadLightOff:Z

    .line 342
    nop

    .line 343
    invoke-virtual {v2}, Landroid/car/hardware/bcm/CarBcmManager;->getTemporaryStopLockActivateStatus()I

    move-result v4

    if-ne v4, v6, :cond_6

    move v5, v6

    nop

    :cond_6
    sput-boolean v5, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTemporaryLock:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v0    # "vcuMgr":Landroid/car/hardware/vcu/CarVcuManager;
    .end local v1    # "espMgr":Landroid/car/hardware/esp/CarEspManager;
    .end local v2    # "bcmMgr":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v3    # "data":[I
    goto :goto_5

    .line 327
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCarStatus failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    monitor-exit p0

    return-void

    .line 327
    :goto_6
    monitor-exit p0

    .line 327
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartLampService;
    throw v0
.end method

.method private registerProvider()V
    .locals 5

    .line 94
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasSeriesD:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "c_head_lamp_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->checkHeadLampModeOff()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasHeadLightOff:Z

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;

    new-instance v4, Lcom/xiaopeng/xuiservice/utils/UiHandler;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/utils/UiHandler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "com.xiaopeng.intent.action.xkey"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 76
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasBootCompleted:Z

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasBootCompleted:Z

    .line 79
    :cond_0
    return-void
.end method

.method private removeCarListener()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mEspCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mLluCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 324
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 446
    const-string v0, "SmartLampService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addMcuManagerCallback()V

    .line 369
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addBcmManagerCallback()V

    .line 370
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addEspManagerCallback()V

    .line 371
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addVcuManagerCallback()V

    .line 372
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addLluManagerCallback()V

    .line 373
    return-void
.end method

.method protected initXUIManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 400
    const-string v0, "SmartLampService"

    const-string v1, "initXUIManager, registerVisualizerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "mediacenter"

    .line 403
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 405
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    .line 423
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 352
    :try_start_0
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 353
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIgStatusFromMcu failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->initCarStatus()V

    .line 360
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarManagerInited, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasRearFogLampOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasRearFogLampOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasTurnLampOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTurnLampOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasGearLevelP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasGearLevelP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasTemporaryLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasTemporaryLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method protected onInit()V
    .locals 3

    .line 427
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit, hasDomestic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasDomestic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->registerReceiver()V

    .line 430
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->registerProvider()V

    .line 431
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 377
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasBootCompleted:Z

    if-nez v1, :cond_0

    .line 382
    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasBootCompleted:Z

    .line 385
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasDomestic:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->hasIgOn:Z

    if-eqz v1, :cond_1

    const-string v1, "com.xiaopeng.intent.action.xkey"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "keyfunc"

    const/4 v3, 0x0

    .line 387
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "keytype"

    .line 388
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playXSayhiEffect()I

    move-result v1

    .line 392
    .local v1, "resId":I
    const-string v3, "SmartLampService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play XSayhiEffect, resId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 396
    .end local v1    # "resId":I
    :cond_1
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 435
    const-string v0, "SmartLampService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->removeCarListener()V

    .line 438
    return-void
.end method
