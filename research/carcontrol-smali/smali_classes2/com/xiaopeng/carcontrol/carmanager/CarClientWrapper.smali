.class public Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;
.super Ljava/lang/Object;
.source "CarClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;,
        Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$SingleHolder;
    }
.end annotation


# static fields
.field static final CAR_SVC_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarClientWrapper"

.field public static final XP_ATL_SERVICE:Ljava/lang/String; = "xp_atl"

.field public static final XP_AVAS_SERVICE:Ljava/lang/String; = "xp_avas"

.field public static final XP_AVM_SERVICE:Ljava/lang/String; = "xp_avm"

.field public static final XP_BCM_SERVICE:Ljava/lang/String; = "xp_bcm"

.field public static final XP_CAMERA_AUTH_SERVICE:Ljava/lang/String; = "xp_CameraAuthService"

.field public static final XP_CAR_INFO_SERVICE:Ljava/lang/String; = "xp_CarInfoService"

.field public static final XP_CDC_SERVICE:Ljava/lang/String; = "xp_cdc"

.field public static final XP_CIU_SERVICE:Ljava/lang/String; = "xp_ciu"

.field public static final XP_DCDC_SERVICE:Ljava/lang/String; = "xp_dcdc"

.field public static final XP_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "xp_diagnostic"

.field public static final XP_EPS_SERVICE:Ljava/lang/String; = "xp_eps"

.field public static final XP_ESP_SERVICE:Ljava/lang/String; = "xp_esp"

.field public static final XP_ICM_SERVICE:Ljava/lang/String; = "xp_icm"

.field public static final XP_LLU_SERVICE:Ljava/lang/String; = "xp_llu"

.field public static final XP_MCU_SERVICE:Ljava/lang/String; = "xp_mcu"

.field public static final XP_MSM_SERVICE:Ljava/lang/String; = "xp_msm"

.field public static final XP_REMIND_SERVICE:Ljava/lang/String; = "xp_remind"

.field public static final XP_SCU_SERVICE:Ljava/lang/String; = "xp_scu"

.field public static final XP_SFS_SERVICE:Ljava/lang/String; = "xp_sfs"

.field public static final XP_TBOX_SERVICE:Ljava/lang/String; = "xp_tbox"

.field public static final XP_TPMS_SERVICE:Ljava/lang/String; = "xp_tpms"

.field public static final XP_USER_SCENARIO_SERVICE:Ljava/lang/String; = "xp_UserScenarioService"

.field public static final XP_VCU_SERVICE:Ljava/lang/String; = "xp_vcu"

.field public static final XP_XPU_SERVICE:Ljava/lang/String; = "xp_xpu"


# instance fields
.field private mCarClient:Landroid/car/Car;

.field private final mCarConnectionCb:Landroid/content/ServiceConnection;

.field private final mControllerLock:Ljava/lang/Object;

.field private final mControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
            "**>;>;"
        }
    .end annotation
.end field

.field private mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mIsCarSvcConnected:Z

.field private mListener:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

.field private mSvcCountdown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string/jumbo v0, "xp_mcu"

    const-string/jumbo v1, "xp_vcu"

    const-string/jumbo v2, "xp_bcm"

    const-string/jumbo v3, "xp_esp"

    const-string/jumbo v4, "xp_msm"

    const-string/jumbo v5, "xp_eps"

    const-string/jumbo v6, "xp_icm"

    const-string/jumbo v7, "xp_llu"

    const-string/jumbo v8, "xp_atl"

    const-string/jumbo v9, "xp_avas"

    const-string/jumbo v10, "xp_scu"

    const-string/jumbo v11, "xp_tpms"

    const-string/jumbo v12, "xp_ciu"

    const-string/jumbo v13, "xp_tbox"

    const-string/jumbo v14, "xp_diagnostic"

    const-string/jumbo v15, "xp_xpu"

    const-string/jumbo v16, "xp_sfs"

    const-string/jumbo v17, "xp_avm"

    const-string/jumbo v18, "xp_UserScenarioService"

    const-string/jumbo v19, "xp_dcdc"

    const-string/jumbo v20, "xp_cdc"

    const-string/jumbo v21, "xp_remind"

    const-string/jumbo v22, "xp_CameraAuthService"

    .line 146
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->CAR_SVC_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllerLock:Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->CAR_SVC_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    .line 196
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarConnectionCb:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->initCarControllers()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mListener:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    return p1
.end method

.method private createCarController(Ljava/lang/String;Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceName",
            "carClient"
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "xp_remind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "xp_CameraAuthService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "xp_UserScenarioService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "xp_diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "xp_xpu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "xp_sfs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "xp_scu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "xp_msm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "xp_llu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "xp_icm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "xp_esp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "xp_eps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "xp_ciu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "xp_cdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "xp_avm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "xp_atl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "xp_tpms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "xp_tbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "xp_dcdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_16
    const-string/jumbo v0, "xp_avas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 432
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not create controller for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 426
    :pswitch_0
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;-><init>(Landroid/car/Car;)V

    goto/16 :goto_1

    .line 429
    :pswitch_1
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;-><init>(Landroid/car/Car;)V

    goto/16 :goto_1

    .line 417
    :pswitch_2
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScenarioController;-><init>(Landroid/car/Car;)V

    goto/16 :goto_1

    .line 405
    :pswitch_3
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;-><init>(Landroid/car/Car;)V

    goto/16 :goto_1

    .line 408
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$XpuControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

    move-result-object p1

    goto/16 :goto_1

    .line 384
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$VcuControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    move-result-object p1

    goto :goto_1

    .line 411
    :pswitch_6
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/SfsController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/SfsController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 381
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$ScuControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    move-result-object p1

    goto :goto_1

    .line 393
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$MsmControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    move-result-object p1

    goto :goto_1

    .line 396
    :pswitch_9
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/McuController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/McuController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 387
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$LluControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    move-result-object p1

    goto :goto_1

    .line 378
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$IcmControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;

    move-result-object p1

    goto :goto_1

    .line 372
    :pswitch_c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$EspControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    move-result-object p1

    goto :goto_1

    .line 369
    :pswitch_d
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/EpsController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 399
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController$CiuControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;

    move-result-object p1

    goto :goto_1

    .line 423
    :pswitch_f
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 363
    :pswitch_10
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$BcmControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    move-result-object p1

    goto :goto_1

    .line 414
    :pswitch_11
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/AvmController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvmController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 390
    :pswitch_12
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$AtlControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;

    move-result-object p1

    goto :goto_1

    .line 375
    :pswitch_13
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 402
    :pswitch_14
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/TboxController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 420
    :pswitch_15
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/DcdcController;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/DcdcController;-><init>(Landroid/car/Car;)V

    goto :goto_1

    .line 366
    :pswitch_16
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$AvasControllerFactory;->createCarController(Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    move-result-object p1

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz p1, :cond_17

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;-><init>(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;Landroid/car/Car;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_17
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6f8cdbf2 -> :sswitch_16
        -0x6f8bc5db -> :sswitch_15
        -0x6f848242 -> :sswitch_14
        -0x6f844df7 -> :sswitch_13
        -0x2ce3832e -> :sswitch_12
        -0x2ce382ef -> :sswitch_11
        -0x2ce3817b -> :sswitch_10
        -0x2ce37da5 -> :sswitch_f
        -0x2ce37cf8 -> :sswitch_e
        -0x2ce3749f -> :sswitch_d
        -0x2ce37445 -> :sswitch_c
        -0x2ce36734 -> :sswitch_b
        -0x2ce35ad2 -> :sswitch_a
        -0x2ce35828 -> :sswitch_9
        -0x2ce35640 -> :sswitch_8
        -0x2ce341a2 -> :sswitch_7
        -0x2ce34147 -> :sswitch_6
        -0x2ce3365f -> :sswitch_5
        -0x2ce32d4a -> :sswitch_4
        0xfbe974e -> :sswitch_3
        0x2e395dd3 -> :sswitch_2
        0x4474a9e1 -> :sswitch_1
        0x5c52882c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private createInitCbThreadPool()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x6

    .line 453
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method private getCarClient()Landroid/car/Car;
    .locals 7

    const-string v0, "CarClientWrapper"

    .line 313
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "Waiting car service ready internal"

    const/4 v2, 0x0

    .line 315
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    :cond_0
    const/4 v1, 0x1

    .line 320
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    const-string v1, "Car service has been ready internal"

    .line 321
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 323
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;
    .locals 1

    .line 182
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    return-object v0
.end method

.method private initCarControllers()V
    .locals 1

    .line 331
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$tpdo77EvTD24vbTM7Rc9j85lEu0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$tpdo77EvTD24vbTM7Rc9j85lEu0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$createCarController$2(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;Landroid/car/Car;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "controller",
            "carClient"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->dependOnXuiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->initXuiManager()V

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->initCarManager(Landroid/car/Car;)V

    return-void
.end method

.method private shutdownInitCbThreadPool()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$FjpG1FNsHnRCPs86jlMZe0hVw7I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$FjpG1FNsHnRCPs86jlMZe0hVw7I;-><init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public connectToCar(Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarConnectionCb:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, p1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    const/4 p1, 0x0

    const-string v0, "CarClientWrapper"

    const-string v1, "Start to connect Car service"

    .line 235
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    invoke-virtual {p1}, Landroid/car/Car;->connect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    :cond_0
    return-void
.end method

.method public getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceName"
        }
    .end annotation

    const-string/jumbo v0, "xp_CarInfoService"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;-><init>(Landroid/car/Car;)V

    .line 294
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getCarClient()Landroid/car/Car;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    if-nez v2, :cond_2

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->createCarController(Ljava/lang/String;Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_2
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCarServiceConnected()Z
    .locals 3

    const-string v0, "CarClientWrapper"

    .line 262
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    if-nez v1, :cond_0

    .line 264
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting car service ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    const-string v1, "Car service has been ready"

    .line 268
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 270
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    return v0
.end method

.method public isCarServiceConnectedSync()Z
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarServiceConnectedSync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarClientWrapper"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mIsCarSvcConnected:Z

    return v0
.end method

.method public synthetic lambda$initCarControllers$1$CarClientWrapper()V
    .locals 10

    .line 332
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->isXuiServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CarClientWrapper"

    const-string v1, "initCarControllers start"

    .line 333
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    .line 336
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->CAR_SVC_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->createInitCbThreadPool()V

    .line 340
    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->CAR_SVC_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 341
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    if-nez v6, :cond_2

    .line 343
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    invoke-direct {p0, v5, v6}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->createCarController(Ljava/lang/String;Landroid/car/Car;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v6

    .line 344
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v7, "CarClientWrapper"

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "re-initCarController "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;

    invoke-direct {v7, p0, v6}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;-><init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 349
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mSvcCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->shutdownInitCbThreadPool()V

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CarClientWrapper"

    const-string v1, "initCarControllers end"

    .line 354
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 353
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic lambda$null$0$CarClientWrapper(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "finaController"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mCarClient:Landroid/car/Car;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->initCarManager(Landroid/car/Car;)V

    return-void
.end method

.method public synthetic lambda$shutdownInitCbThreadPool$3$CarClientWrapper()V
    .locals 5

    const-string v0, "CarClientWrapper"

    const-string v1, "Sleep 10 seconds to shutdown init thread pool"

    const/4 v2, 0x0

    .line 460
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x2710

    .line 462
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 464
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v1, "Start to shutdown init thread pool now"

    .line 466
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mInitCbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread pool has been init shutdown, remain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " tasks"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setListener(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->mListener:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;

    return-void
.end method
