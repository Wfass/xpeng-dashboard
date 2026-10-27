.class public Lcom/xiaopeng/xuiservice/smart/SmartShowService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartShowService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;,
        Lcom/xiaopeng/xuiservice/smart/SmartShowService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_TIME_EFFECT_AC_CHARGE:I = 0x1838

.field private static final DELAY_TIME_EFFECT_AWAKE:I = 0x6978

.field private static final DELAY_TIME_EFFECT_DC_CHARGE:I = 0xc80

.field private static final DELAY_TIME_EFFECT_FIND_CAR:I = 0x1388

.field private static final DELAY_TIME_EFFECT_FULL_CHARGED:I = 0xad70

.field private static final DELAY_TIME_EFFECT_SHOW_OFF:I = 0x10cc

.field private static final DELAY_TIME_EFFECT_SLEEP:I = 0x571c

.field private static final DELAY_TIME_INTERVAL:I = 0xbb8

.field private static final MESSAGE_EFFECT_AC_CHARGE:I = 0x3

.field private static final MESSAGE_EFFECT_AWAKE:I = 0x1

.field private static final MESSAGE_EFFECT_DC_CHARGE:I = 0x4

.field private static final MESSAGE_EFFECT_FIND_CAR:I = 0x0

.field private static final MESSAGE_EFFECT_FULL_CHARGED:I = 0x2

.field private static final MESSAGE_EFFECT_SHOW_OFF:I = 0x6

.field private static final MESSAGE_EFFECT_SLEEP:I = 0x5

.field static xpExpandControl:Z


# instance fields
.field private mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarShowHandler:Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;

.field private mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

.field private mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-string v0, "persist.sys.xiaopeng.xui.ExpandControl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->xpExpandControl:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarShowHandler:Lcom/xiaopeng/xuiservice/smart/SmartShowService$CarShowHandler;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartShowService;
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartShowService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "SmartShowService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 160
    return-void
.end method

.method protected initXUIManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 67
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->registerListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

    const-string v2, "initXUIManager error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 166
    const-string/jumbo v0, "xp_avas"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    .line 167
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 172
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->mSmartEventListener:Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService;->TAG:Ljava/lang/String;

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method
