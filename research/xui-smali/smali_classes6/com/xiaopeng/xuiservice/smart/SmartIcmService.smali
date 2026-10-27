.class public Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartIcmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartIcmService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_SOUND_THEME_PATH:Ljava/lang/String; = "/system/media/audio/sndresource/theme/default"

.field private static final DEVICE:Ljava/lang/String;

.field public static final KEY_ICM_ALL_SWITCH_MODE:Ljava/lang/String; = "key_icm_all_switch_mode"

.field private static final KEY_ICM_LEFT_INTERCEPT_MODE:Ljava/lang/String; = "key_icm_left_intercept_mode"

.field private static final KEY_ICM_LEFT_SWITCH_MODE:Ljava/lang/String; = "key_icm_left_switch_mode"

.field private static final KEY_ICM_RIGHT_INTERCEPT_MODE:Ljava/lang/String; = "key_icm_right_intercept_mode"

.field private static final KEY_ICM_RIGHT_SWITCH_MODE:Ljava/lang/String; = "key_icm_right_switch_mode"

.field private static final KEY_ICM_VCU_CHARGE_MODE:Ljava/lang/String; = "key_vcu_charge_mode"

.field private static final PROPERTY_SOUND_THEME_PATH:Ljava/lang/String; = "persist.xiaopeng.soundtheme.path"


# instance fields
.field private curChargeGun:I

.field private curChargeMode:I

.field private currentWeather:Ljava/lang/String;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

.field private mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

.field private mContextNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

.field private mContextWeatherInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

.field private mIcmAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

.field mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

.field private mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

.field private mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->DEVICE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->currentWeather:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeGun:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeMode:I

    .line 84
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    .line 69
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mIcmAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mSoundResourceListener:Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Landroid/car/hardware/icm/CarIcmManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleVcuChargeMode()V

    return-void
.end method

.method static synthetic access$1102(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeGun:I

    return p1
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->currentWeather:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->parseWeather(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->sendWeatherToScu(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->sendWeatherToIcm()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->syncSwitchModeWhenIcmReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleSwitchModeByIcmSignal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleInterceptModeByIcmSignal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mIcmAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->resetSwitchModeIfNeed()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->resetAllSwitchModeStateWhenIGON()V

    return-void
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeMode:I

    return p1
.end method

.method private static createSignalContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "syncMode"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .line 322
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "SyncMode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "msgId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v1, "SyncProgress"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 331
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "syncMode"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 636
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 638
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "SyncMode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v1, "msgId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v1, "SyncProgress"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 641
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 645
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
    .locals 1

    .line 437
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$InstanceHolder;->access$1500()Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    move-result-object v0

    return-object v0
.end method

.method private getWeatherType(I)Ljava/lang/String;
    .locals 4
    .param p1, "weatherTypeId"    # I

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "weatherType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 556
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherType fail weatherType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :pswitch_0
    const-string/jumbo v0, "\u973e"

    .line 553
    goto/16 :goto_0

    .line 549
    :pswitch_1
    const-string/jumbo v0, "\u8f7b\u973e"

    .line 550
    goto/16 :goto_0

    .line 546
    :pswitch_2
    const-string/jumbo v0, "\u5f31\u9ad8\u5439\u96ea"

    .line 547
    goto/16 :goto_0

    .line 543
    :pswitch_3
    const-string/jumbo v0, "\u9f99\u5377\u98ce"

    .line 544
    goto/16 :goto_0

    .line 540
    :pswitch_4
    const-string/jumbo v0, "\u98d1"

    .line 541
    goto/16 :goto_0

    .line 537
    :pswitch_5
    const-string/jumbo v0, "\u5f3a\u6c99\u5c18\u66b4"

    .line 538
    goto/16 :goto_0

    .line 534
    :pswitch_6
    const-string/jumbo v0, "\u626c\u6c99"

    .line 535
    goto/16 :goto_0

    .line 531
    :pswitch_7
    const-string/jumbo v0, "\u6d6e\u5c18"

    .line 532
    goto/16 :goto_0

    .line 528
    :pswitch_8
    const-string/jumbo v0, "\u5927\u96ea-\u66b4\u96ea"

    .line 529
    goto/16 :goto_0

    .line 525
    :pswitch_9
    const-string/jumbo v0, "\u4e2d\u96ea-\u5927\u96ea"

    .line 526
    goto/16 :goto_0

    .line 522
    :pswitch_a
    const-string/jumbo v0, "\u5c0f\u96ea-\u4e2d\u96ea"

    .line 523
    goto/16 :goto_0

    .line 519
    :pswitch_b
    const-string/jumbo v0, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8"

    .line 520
    goto :goto_0

    .line 516
    :pswitch_c
    const-string/jumbo v0, "\u66b4\u96e8-\u5927\u66b4\u96e8"

    .line 517
    goto :goto_0

    .line 513
    :pswitch_d
    const-string/jumbo v0, "\u5927\u96e8-\u66b4\u96e8"

    .line 514
    goto :goto_0

    .line 510
    :pswitch_e
    const-string/jumbo v0, "\u4e2d\u96e8-\u5927\u96e8"

    .line 511
    goto :goto_0

    .line 507
    :pswitch_f
    const-string/jumbo v0, "\u5c0f\u96e8-\u4e2d\u96e8"

    .line 508
    goto :goto_0

    .line 504
    :pswitch_10
    const-string/jumbo v0, "\u6c99\u5c18\u66b4"

    .line 505
    goto :goto_0

    .line 501
    :pswitch_11
    const-string/jumbo v0, "\u51bb\u96e8"

    .line 502
    goto :goto_0

    .line 498
    :pswitch_12
    const-string/jumbo v0, "\u96fe"

    .line 499
    goto :goto_0

    .line 495
    :pswitch_13
    const-string/jumbo v0, "\u66b4\u96ea"

    .line 496
    goto :goto_0

    .line 492
    :pswitch_14
    const-string/jumbo v0, "\u5927\u96ea"

    .line 493
    goto :goto_0

    .line 489
    :pswitch_15
    const-string/jumbo v0, "\u4e2d\u96ea"

    .line 490
    goto :goto_0

    .line 486
    :pswitch_16
    const-string/jumbo v0, "\u5c0f\u96ea"

    .line 487
    goto :goto_0

    .line 483
    :pswitch_17
    const-string/jumbo v0, "\u9635\u96ea"

    .line 484
    goto :goto_0

    .line 480
    :pswitch_18
    const-string/jumbo v0, "\u7279\u5927\u66b4\u96e8"

    .line 481
    goto :goto_0

    .line 477
    :pswitch_19
    const-string/jumbo v0, "\u5927\u66b4\u96e8"

    .line 478
    goto :goto_0

    .line 474
    :pswitch_1a
    const-string/jumbo v0, "\u66b4\u96e8"

    .line 475
    goto :goto_0

    .line 471
    :pswitch_1b
    const-string/jumbo v0, "\u5927\u96e8"

    .line 472
    goto :goto_0

    .line 468
    :pswitch_1c
    const-string/jumbo v0, "\u4e2d\u96e8"

    .line 469
    goto :goto_0

    .line 465
    :pswitch_1d
    const-string/jumbo v0, "\u5c0f\u96e8"

    .line 466
    goto :goto_0

    .line 462
    :pswitch_1e
    const-string/jumbo v0, "\u96e8\u5939\u96ea"

    .line 463
    goto :goto_0

    .line 459
    :pswitch_1f
    const-string/jumbo v0, "\u96f7\u9635\u96e8\u5e76\u4f34\u6709\u51b0\u96f9"

    .line 460
    goto :goto_0

    .line 456
    :pswitch_20
    const-string/jumbo v0, "\u96f7\u9635\u96e8"

    .line 457
    goto :goto_0

    .line 453
    :pswitch_21
    const-string/jumbo v0, "\u9635\u96e8"

    .line 454
    goto :goto_0

    .line 450
    :pswitch_22
    const-string/jumbo v0, "\u9634"

    .line 451
    goto :goto_0

    .line 447
    :pswitch_23
    const-string/jumbo v0, "\u591a\u4e91"

    .line 448
    goto :goto_0

    .line 444
    :pswitch_24
    const-string/jumbo v0, "\u6674"

    .line 445
    nop

    .line 559
    :goto_0
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleInterceptModeByIcmSignal(Ljava/lang/String;)V
    .locals 7
    .param p1, "signal"    # Ljava/lang/String;

    .line 564
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 565
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "SyncMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 567
    .local v1, "syncMode":Ljava/lang/String;
    :goto_0
    const-string v2, "isLeft"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "isLeft"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 568
    .local v2, "isLeft":I
    :goto_1
    const-string v4, "SyncProgress"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "SyncProgress"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    nop

    .line 569
    .local v3, "syncProgress":I
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleInterceptModeByIcmSignal syncMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isLeft="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " signal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " syncProgress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v4, "ChangeKeyMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 571
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 572
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_icm_left_intercept_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 574
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_icm_right_intercept_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "syncMode":Ljava/lang/String;
    .end local v2    # "isLeft":I
    .end local v3    # "syncProgress":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInterceptModeByIcmSignal e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private handleSwitchModeByIcmSignal(Ljava/lang/String;)V
    .locals 8
    .param p1, "signal"    # Ljava/lang/String;

    .line 584
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 585
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "SyncMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 587
    .local v1, "syncMode":Ljava/lang/String;
    :goto_0
    const-string v2, "isLeft"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "isLeft"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 588
    .local v2, "isLeft":I
    :goto_1
    const-string v4, "isAll"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "isAll"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    .line 589
    .local v4, "isAll":I
    :goto_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSwitchModeByIcmSignal syncMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isLeft="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "isAll ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " signal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v5, "CancelList"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 592
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_icm_all_switch_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 594
    :cond_3
    if-ne v2, v5, :cond_4

    .line 595
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_icm_left_switch_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 597
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_icm_right_switch_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "syncMode":Ljava/lang/String;
    .end local v2    # "isLeft":I
    .end local v4    # "isAll":I
    :cond_5
    :goto_3
    goto :goto_4

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSwitchModeByIcmSignal e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private handleVcuChargeMode()V
    .locals 4

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "isInCharge":Z
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->isChargeGunChargingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x1

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_vcu_charge_mode"

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->resetSwitchModeIfNeed()V

    .line 343
    :cond_3
    return-void
.end method

.method private isChargeGunChargingStatus()Z
    .locals 2

    .line 346
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeGun:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeGun:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onConnectedCar$0(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->resetAllSwitchModeState()V

    .line 105
    return-void
.end method

.method private parseSyncSignal(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XUIService CarIcmEventCallback ID_ICM_SYNC_SIGNAL value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 422
    .local v0, "mGson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .local v1, "syncSinal":Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    nop

    .line 425
    nop

    .line 427
    iget-object v2, v1, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncMode:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x77c3c6f6

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "SysReady"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->sendWeatherToIcm()V

    .line 430
    nop

    .line 434
    :goto_1
    return-void

    .line 423
    .end local v1    # "syncSinal":Landroid/car/hardware/icm/CarIcmManager$SyncSinal;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string v3, "XUIService parseSyncSignal: json error!!! "

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method private parseWeather(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "weatherInfo"    # Ljava/lang/String;

    .line 350
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getIcmType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    return-object p1

    .line 371
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "weatherInfoObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v1, "icmObject":Lorg/json/JSONObject;
    const-string v2, "enable"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v2, "msgtype"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 379
    .local v2, "calendar":Ljava/util/Calendar;
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "timeBuffer":Ljava/lang/StringBuffer;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v4, "reporttime"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v4, "weatherObject":Lorg/json/JSONObject;
    const-string v5, "city"

    const-string v6, "city"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v5, "date"

    const-string v6, "date"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v5, "wendu"

    const-string v6, "temperature"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v5, "typeid"

    const-string/jumbo v6, "weatherType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v5, "type"

    const-string/jumbo v6, "weatherType"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getWeatherType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v5, "enviroment"

    const-string v6, "airdescription"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v5, "day"

    const-string v6, "highTemp"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v5, "night"

    const-string v6, "lowTemp"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string/jumbo v5, "weather"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 396
    .end local v0    # "weatherInfoObject":Lorg/json/JSONObject;
    .end local v1    # "icmObject":Lorg/json/JSONObject;
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "timeBuffer":Ljava/lang/StringBuffer;
    .end local v4    # "weatherObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private resetAllSwitchModeState()V
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_icm_all_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    const-string v1, "AllSwitchMode"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSignalContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "signal":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetAllSwitchModeState next will setIcmSyncSignal value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    .line 114
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_icm_all_switch_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    .end local v1    # "signal":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAllSwitchModeState next will setSwsControlSceneStatusInternal value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    .line 120
    return-void
.end method

.method private resetAllSwitchModeStateWhenIGON()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_icm_all_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAllSwitchModeStateWhenIGON start value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 125
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAllSwitchModeStateWhenIGON HERE 1 next will setSwsControlSceneStatusInternal value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "status= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAllSwitchModeStateWhenIGON  HERE 0 next will setSwsControlSceneStatusInternal value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    .line 135
    :goto_0
    return-void
.end method

.method private resetSwitchModeIfNeed()V
    .locals 7

    .line 607
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getIcmType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    const-string v0, "LeftSwitchMode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    move-result v0

    .line 609
    .local v0, "leftRet":Z
    const-string v2, "RightSwitchMode"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    move-result v2

    .line 610
    .local v2, "rightRet":Z
    const-string v3, "AllSwitchMode"

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    move-result v3

    .line 611
    .local v3, "allRet":Z
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetSwitchModeIfNeed leftRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " rightRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " allRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    if-eqz v3, :cond_0

    .line 613
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_icm_all_switch_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 615
    :cond_0
    if-eqz v0, :cond_1

    .line 616
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_icm_left_switch_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    :cond_1
    if-eqz v2, :cond_2

    .line 619
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_icm_right_switch_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    .end local v0    # "leftRet":Z
    .end local v2    # "rightRet":Z
    .end local v3    # "allRet":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private sendWeatherToIcm()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->currentWeather:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->currentWeather:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmWeather(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string v1, "sendWeatherToIcm currentWeather or mCarIcmManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_1
    return-void
.end method

.method private sendWeatherToScu(Ljava/lang/String;)V
    .locals 7
    .param p1, "weatherInfo"    # Ljava/lang/String;

    .line 661
    const-string/jumbo v0, "xp_scu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    .line 662
    .local v0, "scu":Landroid/car/CarManagerBase;
    if-eqz v0, :cond_0

    .line 664
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "temperature"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    .line 668
    .local v2, "temperature":I
    const-string v3, "humidity"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 669
    .local v3, "humidity":I
    const-string/jumbo v4, "weatherType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 679
    .local v4, "weather":I
    move-object v5, v0

    check-cast v5, Landroid/car/hardware/scu/CarScuManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/car/hardware/scu/CarScuManager;->setLocalWeather(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "temperature":I
    .end local v3    # "humidity":I
    .end local v4    # "weather":I
    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 684
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private syncSwitchModeWhenIcmReady()V
    .locals 7

    .line 625
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getIcmType()I

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_icm_left_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 627
    .local v0, "leftValue":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "key_icm_right_switch_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 628
    .local v1, "rightValue":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_icm_all_switch_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 629
    .local v3, "allValue":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetSwitchModeIfNeed leftValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rightValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " allValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v4, "AllSwitchMode"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    invoke-direct {p0, v4, v6}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    .line 631
    const-string v4, "LeftSwitchMode"

    if-ne v0, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-direct {p0, v4, v6}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    .line 632
    const-string v4, "RightSwitchMode"

    if-ne v1, v5, :cond_2

    move v2, v5

    nop

    :cond_2
    invoke-direct {p0, v4, v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->createSwitchContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->setIcmSyncSignal(Ljava/lang/String;)Z

    .line 634
    .end local v0    # "leftValue":I
    .end local v1    # "rightValue":I
    .end local v3    # "allValue":I
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "SmartIcmService"

    return-object v0
.end method

.method public initCarListener()V
    .locals 1

    .line 139
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 180
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 212
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mIcmAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mIcmAgent:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->onInit()V

    .line 250
    :cond_0
    return-void
.end method

.method protected initXUIManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 270
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "xuimanager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "contextinfo"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 276
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 293
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextWeatherInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextWeatherInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 317
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 710
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 1

    .line 253
    const-string/jumbo v0, "xp_icm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 254
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 255
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargingGunStatus()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeGun:I

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargeStatus()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->curChargeMode:I

    .line 261
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleVcuChargeMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 265
    :cond_0
    :goto_0
    return-void
.end method

.method public onConnectedCar()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$PVJbrPvJvccInMrCR4e356ZdEAI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$PVJbrPvJvccInMrCR4e356ZdEAI;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public onInit()V
    .locals 0

    .line 320
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->removeIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextNaviInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextInfoManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mContextWeatherInfoEventListener:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;)V

    .line 697
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->currentWeather:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setIcmSyncSignal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "signal"    # Ljava/lang/String;

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIcmSyncSignal signal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmSyncSignal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_0
    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIcmSyncSignal e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
