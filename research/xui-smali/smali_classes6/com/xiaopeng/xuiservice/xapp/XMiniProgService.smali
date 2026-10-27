.class public Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "XMiniProgService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;,
        Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;,
        Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$Constants;,
        Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOCATION_INFO_ERROR:Ljava/lang/String; = "255"

.field private static final MAX_CHINA_LAT:D = 55.5783446722

.field private static final MAX_CHINA_LON:D = 140.2734375

.field private static final MINI_PROG_EVENT:I = 0x1

.field private static final MIN_CHINA_LAT:D = -0.8788717828

.field private static final MIN_CHINA_LON:D = 69.08203125

.field private static final NAVI_CLASS_NAME:Ljava/lang/String; = "com.xiaopeng.montecarlo.MainActivity"

.field private static final NAVI_PKG_NAME:Ljava/lang/String; = "com.xiaopeng.montecarlo"

.field private static final RETRY_UPLOAD_INTERVAL:I = 0x2710

.field private static final RETRY_UPLOAD_MAX_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "XMiniProgService"

.field private static final UPLOAD_EVENT:I = 0x2

.field private static mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;


# instance fields
.field private alipayVersion:Ljava/lang/String;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mContext:Landroid/content/Context;

.field private mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mLocationInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

.field private mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

.field private mMiniProgEventListener:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

.field private mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

.field private retryTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->alipayVersion:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->registerReceiver()V

    .line 125
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->init(Landroid/app/Application;)V

    .line 126
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 127
    const-string v0, "com.alipay.arome.app"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->putPackageVersionName(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getCurrentAccountInfo()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v2, 0x1

    const-string v3, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 133
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->initNaviListener()V

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getNaviInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->uploadAlipayLogInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->checkIdentityValidInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startCustomServiceInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;ILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->doMiniProgFunction(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginSuccessGetUserInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->putPackageVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;DD)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->launchNavigation(DD)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->pushValidValue(Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isTempAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->registerNavigation()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestLoginInfoInternal(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginAccountInternal(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->logoutAccountInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->exitAppInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->preloadAppInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkIdentityValidInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "userKey"    # Ljava/lang/String;

    .line 680
    const-string v0, "XMiniProgService"

    const-string v1, "checkIdentityValidInternal:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;-><init>()V

    .line 682
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 683
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 684
    .local v2, "parmas":Ljava/util/Map;
    const-string v3, "userKey"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setParams(Ljava/util/Map;)V

    .line 686
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 687
    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v3, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v3}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 688
    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    .line 977
    const-string v0, "XMiniProgService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method private doLogic(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "response"    # Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    .line 947
    if-nez p2, :cond_0

    .line 948
    const-string v0, "XMiniProgService"

    const-string v1, "response is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void

    .line 951
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getMiniAppId()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "miniAppId":Ljava/lang/String;
    const-string v1, "XMiniProgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    return-void

    .line 956
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 957
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 958
    const-string v1, ""

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniAppConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginAccountInternal(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 962
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 963
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 964
    const-string v1, ""

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniAppConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 966
    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    .line 967
    const-string v1, ""

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startMiniProgramInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 969
    :cond_5
    :goto_0
    return-void
.end method

.method private doMiniProgFunction(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "code"    # I

    .line 915
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doMiniProgFunction  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->handlerError(I)V

    .line 918
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;-><init>()V

    .line 919
    .local v0, "response":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    instance-of v1, p2, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    if-eqz v1, :cond_0

    .line 920
    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    .line 923
    :cond_0
    const-string v1, "XMiniProgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p3, :cond_1

    .line 926
    const-string v1, "XMiniProgService"

    const-string v2, "login success, will get the information of user"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginSuccessGetUserInfo()V

    .line 929
    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    if-nez p3, :cond_2

    .line 930
    const-string v1, "XMiniProgService"

    const-string v2, "get user info success, will upload the information of device"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->uploadInfo(Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniProgEventListener:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    if-eqz v1, :cond_3

    .line 934
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniProgEventListener:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;->onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 936
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->doLogic(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 937
    return-void
.end method

.method private exitAppInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 822
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitAppInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeExitAppRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeExitAppRequest;-><init>()V

    .line 824
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeExitAppRequest;
    iput-object p1, v0, Lcom/alipay/arome/aromecli/requst/AromeExitAppRequest;->appId:Ljava/lang/String;

    .line 825
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 826
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 827
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setMiniAppId(Ljava/lang/String;)V

    .line 828
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 829
    return-void
.end method

.method private getCurrentAccountInfo()Landroid/accounts/Account;
    .locals 9

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 306
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 309
    .local v1, "account":Landroid/accounts/Account;
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAccountInfo accounts length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";account[0].name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "avatar"

    invoke-virtual {v2, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "avatar":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "update"

    invoke-virtual {v3, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "update":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v5, "uid"

    invoke-virtual {v4, v1, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "user_type"

    invoke-virtual {v5, v1, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "type":Ljava/lang/String;
    const-string v6, "XMiniProgService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentAccountInfo name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";icon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";update="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v2    # "avatar":Ljava/lang/String;
    .end local v3    # "update":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XMiniProgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentAccountInfo Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 328
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_0
    const-string v1, "XMiniProgService"

    const-string v2, "getCurrentAccountInfo account is empty"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    return-object v1
.end method

.method private getNaviInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;
    .locals 5
    .param p1, "naviInfo"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "bodyJSONObject":Lorg/json/JSONObject;
    const-string v2, "msgType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "msgType":Ljava/lang/String;
    const-string v3, "255"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "XMiniProgService"

    const-string v4, "Location info is error:"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v0

    .line 180
    :cond_0
    const-string v3, "locInfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "dataJSONObject":Ljava/lang/String;
    const-class v4, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 182
    .end local v1    # "bodyJSONObject":Lorg/json/JSONObject;
    .end local v2    # "msgType":Ljava/lang/String;
    .end local v3    # "dataJSONObject":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private handlerError(I)V
    .locals 3
    .param p1, "code"    # I

    .line 892
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 894
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init()V

    goto :goto_0

    .line 895
    :cond_0
    const/16 v0, 0x7d6

    if-ne p1, v0, :cond_1

    .line 897
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    const-string v1, "MiniProgSignature"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init()V

    .line 900
    :cond_1
    :goto_0
    return-void
.end method

.method private initNaviListener()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "XMiniProgService"

    const-string v1, "mContextInfoService is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->registerNaviInfoListener()V

    .line 150
    return-void
.end method

.method private isInChina(DD)Z
    .locals 3
    .param p1, "lon"    # D
    .param p3, "lat"    # D

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "inInChina":Z
    const-wide v1, -0x4013e048486fe5a9L    # -0.8788717828

    cmpg-double v1, v1, p3

    if-gez v1, :cond_0

    const-wide v1, 0x404bca0732be7519L    # 55.5783446722

    cmpl-double v1, v1, p3

    if-lez v1, :cond_0

    const-wide v1, 0x4051454000000000L    # 69.08203125

    cmpg-double v1, v1, p1

    if-gez v1, :cond_0

    const-wide v1, 0x406188c000000000L    # 140.2734375

    cmpl-double v1, v1, p1

    if-lez v1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :cond_0
    return v0
.end method

.method private isTempAccount()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$requestMiniAppConfig$0(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "miniProgramResponse"    # Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "parmas"    # Ljava/util/Map;

    .line 756
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setMiniAppId(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniAppDetails(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    move-result-object v0

    .line 759
    .local v0, "miniBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    move-object v1, p3

    .line 760
    .local v1, "localMap":Ljava/util/Map;
    if-nez v1, :cond_0

    .line 761
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 763
    :cond_0
    if-eqz v0, :cond_1

    .line 764
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miniBean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v2, "config"

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->getParam()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_1
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setParams(Ljava/util/Map;)V

    .line 768
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 769
    return-void
.end method

.method private launchNavigation(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 1169
    const-string v0, "XMiniProgService"

    const-string v1, "launchNavigation"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.montecarlo"

    const-string v2, "com.xiaopeng.montecarlo.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1173
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1175
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "uri"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xpengmap://map/navi?data={\"dest\":{\"lat\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",\"lon\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v2, "action"

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1178
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1179
    return-void
.end method

.method private loginAccountInternal(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;

    .line 803
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginAccountInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeLoginRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeLoginRequest;-><init>()V

    .line 805
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeLoginRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 806
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 807
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setMiniAppId(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setParams(Ljava/util/Map;)V

    .line 809
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 811
    return-void
.end method

.method private loginSuccessGetUserInfo()V
    .locals 3

    .line 691
    const-string v0, "XMiniProgService"

    const-string v1, "loginSuccessGetUserInfo:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;-><init>()V

    .line 693
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 694
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 695
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 696
    return-void
.end method

.method private logoutAccountInternal()V
    .locals 3

    .line 814
    const-string v0, "XMiniProgService"

    const-string v1, "logoutAccountInternal"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeLogoutRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeLogoutRequest;-><init>()V

    .line 816
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeLogoutRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 817
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 818
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 819
    return-void
.end method

.method private preloadAppInternal(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "loadToMemory"    # Z

    .line 832
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadAppInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;-><init>()V

    .line 834
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;
    iput-object p1, v0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;->appId:Ljava/lang/String;

    .line 835
    iput-boolean p2, v0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;->loadToMemory:Z

    .line 836
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 837
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 838
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setMiniAppId(Ljava/lang/String;)V

    .line 839
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 840
    return-void
.end method

.method private pushValidValue(Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;)V
    .locals 6
    .param p1, "locationInfo"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->getCarLat()D

    move-result-wide v0

    .line 164
    .local v0, "carLat":D
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->getCarLon()D

    move-result-wide v2

    .line 165
    .local v2, "carLon":D
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isInChina(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const-string v4, "XMiniProgService"

    const-string v5, "onNavigationInfo: is China !"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mLocationInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    .line 170
    .end local v0    # "carLat":D
    .end local v2    # "carLon":D
    :cond_0
    return-void
.end method

.method private putPackageVersionName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 191
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->alipayVersion:Ljava/lang/String;

    .line 193
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apliapy verisonName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->alipayVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "MINI_ALIPAY_VERISON_NAME"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->alipayVersion:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 198
    const-string v1, "XMiniProgService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method private registerNaviInfoListener()V
    .locals 3

    .line 242
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNaviInfoListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->registerMiniNaviInfoListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;)V

    .line 245
    const-string v0, "XMiniProgService"

    const-string v1, "registerNaviInfoListener success"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method private registerNavigation()V
    .locals 3

    .line 1135
    const-string v0, "XMiniProgService"

    const-string v1, "registerNavigation"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;-><init>()V

    .line 1137
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v1, "extensionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "startNavigation"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    iput-object v1, v0, Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;->mExtensionList:Ljava/util/ArrayList;

    .line 1141
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$16;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$16;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 1148
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$17;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$17;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->registerBridgeExtension(Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;)V

    .line 1166
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 235
    const-string v0, "XMiniProgService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 239
    :cond_0
    return-void
.end method

.method private requestLoginInfoInternal(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "parmas"    # Ljava/util/Map;

    .line 743
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLoginInfoInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;-><init>()V

    .line 745
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeGetUserInfoRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 746
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setParams(Ljava/util/Map;)V

    .line 747
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 748
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setMiniAppId(Ljava/lang/String;)V

    .line 749
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 750
    return-void
.end method

.method private requestMiniAppConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parmas"    # Ljava/util/Map;

    .line 753
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;-><init>()V

    .line 755
    .local v0, "miniProgramResponse":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method private requestMiniAppDetails(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniAppDetails(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 851
    .local v1, "miniBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;

    return-object v2

    .line 852
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private requestMiniAppDetails(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;",
            ">;"
        }
    .end annotation

    .line 863
    .local p1, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 864
    :cond_0
    const-string v0, "XMiniProgService"

    const-string v1, "appId is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_1
    const/4 v0, 0x0

    .line 867
    .local v0, "miniBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, "ali_ids"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "body":Ljava/lang/String;
    const-string v3, "XMiniProgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_DETAIL_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " request body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_DETAIL_URL:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->XP_ALIPAY_HEAD:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->alipayVersion:Ljava/lang/String;

    .line 873
    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    const-string v4, "XP-Mo"

    .line 874
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 875
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v3

    .line 876
    .local v3, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, "responseBody":Ljava/lang/String;
    const-string v5, "XMiniProgService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestMiniAppDetails success..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 879
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 880
    .local v5, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 881
    .local v6, "jsonElement":Lcom/google/gson/JsonElement;
    const-string v7, "XMiniProgService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestMiniAppDetails jsonElement"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$15;

    invoke-direct {v7, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$15;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    .line 883
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 882
    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 887
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v4    # "responseBody":Ljava/lang/String;
    .end local v5    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v6    # "jsonElement":Lcom/google/gson/JsonElement;
    goto :goto_0

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XMiniProgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private startCustomServiceInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceCode"    # Ljava/lang/String;
    .param p2, "userIdentity"    # Ljava/lang/String;

    .line 723
    const-string v0, "XMiniProgService"

    const-string v1, "startCustomServiceInternal:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 725
    .local v0, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 726
    new-instance v1, Lcom/alipay/arome/aromecli/requst/AromeLaunchCustomServiceRequest;

    invoke-direct {v1}, Lcom/alipay/arome/aromecli/requst/AromeLaunchCustomServiceRequest;-><init>()V

    .line 727
    .local v1, "request":Lcom/alipay/arome/aromecli/requst/AromeLaunchCustomServiceRequest;
    iput-object p1, v1, Lcom/alipay/arome/aromecli/requst/AromeLaunchCustomServiceRequest;->mServiceCode:Ljava/lang/String;

    .line 728
    iput-object p2, v1, Lcom/alipay/arome/aromecli/requst/AromeLaunchCustomServiceRequest;->mUserIdentity:Ljava/lang/String;

    .line 730
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v1, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 731
    return-void
.end method

.method private startMiniProgramInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 779
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMiniProgramInternal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;-><init>()V

    .line 781
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;
    iput-object p1, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->appId:Ljava/lang/String;

    .line 782
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->closeAllApp:Z

    .line 783
    const/16 v1, 0x262

    iput v1, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->launchWidth:I

    .line 784
    invoke-static {p3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgramBeanUtil;->parseMini(Ljava/util/Map;)Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;

    move-result-object v1

    .line 785
    .local v1, "config":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;
    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->getPage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->page:Ljava/lang/String;

    .line 787
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->getQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->query:Ljava/lang/String;

    .line 789
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 790
    .local v2, "showConfig":Landroid/os/Bundle;
    const-string v3, "showType"

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->getShowType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const-string v3, "titleBarType"

    const-string v4, "car"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v3, "XMiniProgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniConfig;->getShowType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iput-object v2, v0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->themeConfig:Landroid/os/Bundle;

    .line 795
    .end local v2    # "showConfig":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 796
    .local v2, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 797
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setMiniAppId(Ljava/lang/String;)V

    .line 799
    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v3, v2, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v3}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 800
    return-void
.end method

.method private uploadAlipayLogInternal()V
    .locals 3

    .line 734
    const-string v0, "XMiniProgService"

    const-string v1, "uploadAlipayLogInternal:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance v0, Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;-><init>()V

    .line 736
    .local v0, "request":Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;-><init>()V

    .line 737
    .local v1, "param":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->setType(I)V

    .line 738
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;

    invoke-direct {v2, v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-static {v0, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 739
    return-void
.end method

.method private uploadInfo(Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 16
    .param p1, "response"    # Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    move-object/from16 v1, p0

    .line 1055
    if-nez p1, :cond_0

    .line 1056
    const-string v0, "XMiniProgService"

    const-string v2, "uploadInfo response is null "

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void

    .line 1059
    :cond_0
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mLocationInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1060
    const-string v0, "XMiniProgService"

    const-string v3, "uploadInfo mLocationInfo is null "

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->initNaviListener()V

    .line 1062
    iget v0, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 1063
    const-string v0, "XMiniProgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadInfo failure: retry time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    if-nez v0, :cond_1

    .line 1065
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    .line 1067
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1069
    :cond_2
    iput v2, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    .line 1071
    :goto_0
    return-void

    .line 1073
    :cond_3
    iput v2, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->retryTime:I

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getUserKey()Ljava/lang/String;

    move-result-object v2

    .line 1075
    .local v2, "userKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getUserRoute()Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, "userRoute":Ljava/lang/String;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mLocationInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->getCarLat()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, "latitude":Ljava/lang/String;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mLocationInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/LocationInfo;->getCarLon()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1079
    .local v5, "longitude":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;

    invoke-direct {v0, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .local v0, "deviceData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJsonNoHTML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1081
    .local v6, "deviceDataJson":Ljava/lang/String;
    const-string v7, "XMiniProgService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceData json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;

    invoke-direct {v7, v2, v3, v6}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .local v7, "miniReportData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJsonNoHTML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1084
    .local v8, "jsonData":Ljava/lang/String;
    const-string v9, "XMiniProgService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uploadInfo url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_UPLOAD_DATA_URL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " upload data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v9

    invoke-interface {v9}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v9

    sget-object v10, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_UPLOAD_DATA_URL:Ljava/lang/String;

    .line 1086
    invoke-interface {v9, v10, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v9

    const-string v10, "XP-Mo"

    .line 1087
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v9

    .line 1088
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getSecret()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v9

    invoke-interface {v9}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v9

    .line 1089
    .local v9, "httpResponse":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-interface {v9}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v10

    .line 1090
    .local v10, "httpResponseBody":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v11, "bodyJSONObject":Lorg/json/JSONObject;
    const-string v12, "XMiniProgService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uploadInfo success..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v12, "code"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1093
    .local v12, "code":I
    const-string v13, "XMiniProgService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    const-string v0, "uploadInfo code: "

    .end local v0    # "deviceData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;
    .local v15, "deviceData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const/16 v0, 0xc8

    if-ne v12, v0, :cond_4

    .line 1095
    const-string v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1096
    .local v0, "data":Z
    if-eqz v0, :cond_4

    .line 1097
    const-string v13, "XMiniProgService"

    const-string v14, "uploadInfo success !!! "

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v0    # "data":Z
    .end local v6    # "deviceDataJson":Ljava/lang/String;
    .end local v7    # "miniReportData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniUploadData;
    .end local v8    # "jsonData":Ljava/lang/String;
    .end local v9    # "httpResponse":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v10    # "httpResponseBody":Ljava/lang/String;
    .end local v11    # "bodyJSONObject":Lorg/json/JSONObject;
    .end local v12    # "code":I
    .end local v15    # "deviceData":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;
    :cond_4
    goto :goto_1

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "XMiniProgService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public activeArome(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;

    .line 377
    return-void
.end method

.method public attachContext()V
    .locals 0

    .line 343
    return-void
.end method

.method public checkIdentityValid(Ljava/lang/String;)V
    .locals 3
    .param p1, "userKey"    # Ljava/lang/String;

    .line 659
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIdentityValid userKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$13;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$13;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 674
    return-void

    .line 676
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->checkIdentityValidInternal(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public checkOrderValid(Ljava/lang/String;)Z
    .locals 9
    .param p1, "orderId"    # Ljava/lang/String;

    .line 1109
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v0, "orderBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJsonNoHTML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "jsonData":Ljava/lang/String;
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOrderValid url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_ORDER_CHECK_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " orderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_ORDER_CHECK_URL:Ljava/lang/String;

    .line 1113
    invoke-interface {v2, v3, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    const-string v3, "XP-Mo"

    .line 1114
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    .line 1115
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v2

    .line 1116
    .local v2, "httpResponse":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "httpResponseBody":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v4, "bodyJSONObject":Lorg/json/JSONObject;
    const-string v5, "XMiniProgService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkOrderValid success..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1120
    .local v5, "code":I
    const-string v6, "XMiniProgService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkOrderValid code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 1122
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    .local v6, "data":Z
    if-eqz v6, :cond_0

    .line 1124
    const/4 v7, 0x1

    return v7

    .line 1130
    .end local v0    # "orderBean":Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;
    .end local v1    # "jsonData":Ljava/lang/String;
    .end local v2    # "httpResponse":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v3    # "httpResponseBody":Ljava/lang/String;
    .end local v4    # "bodyJSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "data":Z
    :cond_0
    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XMiniProgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 983
    const-string v0, "*XMiniProg HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public exitApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 519
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "XMiniProgService"

    const-string v1, "mini app id not be null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$8;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$8;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 541
    return-void

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->exitAppInternal(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public getCurrentMiniAppStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    .line 381
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMiniAppStatus:appid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 387
    .local v0, "object":Ljava/lang/Object;
    new-instance v1, Lcom/alipay/arome/aromecli/requst/AromeGetAppStatusRequest;

    invoke-direct {v1}, Lcom/alipay/arome/aromecli/requst/AromeGetAppStatusRequest;-><init>()V

    .line 388
    .local v1, "request":Lcom/alipay/arome/aromecli/requst/AromeGetAppStatusRequest;
    iput-object p1, v1, Lcom/alipay/arome/aromecli/requst/AromeGetAppStatusRequest;->appId:Ljava/lang/String;

    .line 389
    new-instance v2, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    invoke-direct {v2}, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;-><init>()V

    .line 390
    .local v2, "aromeResponse":Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isForeground:Ljava/lang/Boolean;

    .line 391
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isRunnning:Ljava/lang/Boolean;

    .line 392
    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 408
    monitor-enter v0

    .line 410
    const-wide/32 v3, 0x1d4c0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    nop

    .line 416
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    iget v3, v2, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->code:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->handlerError(I)V

    .line 418
    iget-object v3, v2, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isForeground:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 419
    .local v3, "code":I
    return v3

    .line 416
    .end local v3    # "code":I
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 411
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 413
    const-string v4, "XMiniProgService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentMiniAppStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x2

    monitor-exit v0

    return v4

    .line 416
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 384
    .end local v0    # "object":Ljava/lang/Object;
    .end local v1    # "request":Lcom/alipay/arome/aromecli/requst/AromeGetAppStatusRequest;
    .end local v2    # "aromeResponse":Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;
    :cond_1
    :goto_1
    const/4 v0, 0x3

    return v0
.end method

.method public handleHalEvents()V
    .locals 0

    .line 972
    return-void
.end method

.method protected initCarListener()V
    .locals 1

    .line 204
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 227
    return-void
.end method

.method public initService()V
    .locals 2

    .line 350
    const-string v0, "XMiniProgService"

    const-string v1, "initService..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 362
    return-void
.end method

.method public isServiceOnline()Z
    .locals 4

    .line 365
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->isServiceOnline()Z

    move-result v0

    .line 367
    .local v0, "isServiceOnline":Z
    const-string v1, "XMiniProgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceOnline:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return v0
.end method

.method public loginAccount()V
    .locals 2

    .line 465
    const-string v0, "XMiniProgService"

    const-string v1, "loginAccount"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 481
    return-void

    .line 483
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginAccountInternal(Ljava/lang/String;Ljava/util/Map;)V

    .line 484
    return-void
.end method

.method public logoutAccount()V
    .locals 2

    .line 491
    const-string v0, "XMiniProgService"

    const-string v1, "logoutAccount"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$7;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 507
    return-void

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->logoutAccountInternal()V

    .line 510
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 283
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountsUpdated  lenth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    array-length v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->logoutAccount()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    aget-object v0, p1, v0

    const-string v2, "uid"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "newUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    const-string v3, "uid"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "oldUid":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    const-string v2, "XMiniProgService"

    const-string v3, "onAccountsUpdated  exchange account"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->logoutAccount()V

    .line 296
    .end local v0    # "newUid":Ljava/lang/String;
    .end local v1    # "oldUid":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getCurrentAccountInfo()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCurrentAccount:Landroid/accounts/Account;

    .line 297
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 231
    const-string v0, "XMiniProgService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->initService()V

    .line 267
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 272
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->release()V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->unregisterReceiver()V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->unregisterNaviInfoListener()V

    .line 278
    return-void
.end method

.method public preloadApp(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "loadToMemory"    # Z

    .line 554
    const-string v0, "XMiniProgService"

    const-string v1, "preloadApp"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$9;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 570
    return-void

    .line 572
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->preloadAppInternal(Ljava/lang/String;Z)V

    .line 573
    return-void
.end method

.method public registerMiniProgListener(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniProgEventListener:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    .line 335
    return-void
.end method

.method public requestLoginInfo()V
    .locals 2

    .line 579
    const-string v0, "XMiniProgService"

    const-string v1, "requestLoginInfo:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$10;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 594
    return-void

    .line 596
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestLoginInfoInternal(Ljava/lang/String;Ljava/util/Map;)V

    .line 597
    return-void
.end method

.method public requestMiniList(Ljava/lang/String;)V
    .locals 5
    .param p1, "alipayVersion"    # Ljava/lang/String;

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?alipay_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "param":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_MINI_LIST_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "url":Ljava/lang/String;
    const-string v2, "XMiniProgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " alipayVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    .line 634
    invoke-interface {v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    const-string v3, "XP-Mo"

    .line 635
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    .line 636
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$12;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$12;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    .line 637
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 653
    return-void
.end method

.method public sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 2
    .param p1, "msgType"    # I
    .param p2, "response"    # Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    .line 903
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    if-eqz v0, :cond_0

    .line 904
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 906
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 907
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 908
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->getCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 909
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mHandler:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 911
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public startCustomService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceCode"    # Ljava/lang/String;
    .param p2, "userIdentity"    # Ljava/lang/String;

    .line 702
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCustomService serviceCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$14;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 717
    return-void

    .line 719
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startCustomServiceInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 435
    const-string v0, "XMiniProgService"

    const-string v1, "startMiniProgram"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 455
    return-void

    .line 457
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestLoginInfoInternal(Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    return-void
.end method

.method public unregisterMiniProgListener(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniProgEventListener:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;

    .line 339
    return-void
.end method

.method public unregisterNaviInfoListener()V
    .locals 2

    .line 250
    const-string v0, "XMiniProgService"

    const-string v1, "unregisterNaviInfoListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mContextInfoService:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mMiniNaviInfoListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->unRegisterMiniNaviInfoListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;)V

    .line 253
    const-string v0, "XMiniProgService"

    const-string v1, "unregisterNaviInfoListener success"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 258
    const-string v0, "XMiniProgService"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->mPackageMonitor:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$AlipayPackageMonitor;->unregister()V

    .line 262
    :cond_0
    return-void
.end method

.method public uploadAlipayLog()V
    .locals 2

    .line 604
    const-string v0, "XMiniProgService"

    const-string v1, "uploadAlipayLog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$11;-><init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 618
    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->uploadAlipayLogInternal()V

    .line 621
    return-void
.end method
