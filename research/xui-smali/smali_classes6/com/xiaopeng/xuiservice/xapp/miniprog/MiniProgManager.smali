.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
.super Ljava/lang/Object;
.source "MiniProgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;
    }
.end annotation


# static fields
.field private static final ACTIVATE_SUCCESS_EVENT:I = 0x3

.field private static final AROME_SUCCESS_EVENT:I = 0x5

.field private static final ERROR_EVENT:I = 0x6

.field private static final REGISTER_SUCCESS_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiniProgManager"

.field private static mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

.field private static sInstance:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;


# instance fields
.field private final DEFAULT_INIT_AROME_COUNT:I

.field private mHasInitArome:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->DEFAULT_INIT_AROME_COUNT:I

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHasInitArome:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->handlerEvent(IIJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHasInitArome:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
    .param p1, "x1"    # Z

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->reset(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->initArome()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->activate()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->dispatchInitMiniListener(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
    .param p1, "x1"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->handlerError(I)V

    return-void
.end method

.method private activate()V
    .locals 6

    .line 166
    const-string v0, "MiniProgSignature"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "signature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "MiniProgManager"

    const-string v2, "mSignature is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;

    invoke-direct {v1}, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;-><init>()V

    .line 177
    .local v1, "request":Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;
    const-string v2, "2021001153668035"

    iput-object v2, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->hostAppId:Ljava/lang/String;

    .line 178
    const-wide/32 v2, 0x495599

    iput-wide v2, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->productId:J

    .line 179
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/AlipayConstants;->HARDWARE_ID:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->deviceId:Ljava/lang/String;

    .line 180
    iput-object v0, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->signature:Ljava/lang/String;

    .line 182
    const-string v2, "MiniProgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param=>hostAppId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->hostAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";productId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->productId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";deviceId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";signature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    invoke-static {v1, v2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 202
    return-void
.end method

.method private dispatchInitMiniListener(IZ)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "isSuccess"    # Z

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;->onInitMiniProg(IZ)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    .line 270
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    return-object v0
.end method

.method private handlerError(I)V
    .locals 2
    .param p1, "code"    # I

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->dispatchInitMiniListener(IZ)V

    .line 250
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    const-string v0, "MiniProgSignature"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init()V

    .line 259
    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init()V

    .line 254
    nop

    .line 263
    :goto_0
    return-void
.end method

.method private handlerEvent(IIJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "delayMillis"    # J

    .line 205
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 210
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 211
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 212
    return-void
.end method

.method private initArome()V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->isConnectAromeService()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x5

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->handlerEvent(IIJ)V

    .line 119
    return-void

    .line 121
    :cond_0
    const-string v0, "MiniProgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init Arome=>mHasInitArome: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHasInitArome:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->reset(Z)V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "themeConfig":Landroid/os/Bundle;
    const-string v1, "mode"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "bgColor"

    const-string v2, "#5c000000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "panelBgColor"

    const-string v2, "#404752"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "titleColor"

    const-string v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "subTitleColor"

    const-string v2, "#8fFFFFFF"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "accentTitleColor"

    const-string v2, "#8fFFFFFF"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "logoType"

    const-string v2, "round"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/AromeInit;->attachApplicationContext(Landroid/content/Context;)V

    .line 133
    new-instance v1, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;

    invoke-direct {v1}, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareType(I)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;

    move-result-object v1

    const-string/jumbo v2, "xiaopeng p5"

    invoke-virtual {v1, v2}, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareName(Ljava/lang/String;)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->themeConfig(Landroid/os/Bundle;)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->build()Lcom/alipay/arome/aromecli/AromeInitOptions;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    invoke-static {v1, v2}, Lcom/alipay/arome/aromecli/AromeInit;->init(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V

    .line 155
    return-void
.end method

.method private register()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->hasRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "MiniProgManager"

    const-string v1, "has register mini prog..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->handlerEvent(IIJ)V

    .line 80
    return-void

    .line 82
    :cond_0
    const-string v0, "MiniProgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_REGISTER_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->ALIPAY_REGISTER_URL:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    const-string v1, "XP-Mo"

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/ApiConstants;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 110
    return-void
.end method

.method private reset(Z)V
    .locals 1
    .param p1, "isReset"    # Z

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHasInitArome:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    return-void
.end method


# virtual methods
.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 244
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRegister()Z
    .locals 2

    .line 224
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MiniProgSignature"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public init()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V

    .line 70
    return-void
.end method

.method public init(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->register()V

    .line 66
    return-void
.end method

.method public isConnectAromeService()Z
    .locals 1

    .line 230
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->isServiceOnline()Z

    move-result v0

    return v0
.end method

.method public putStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    return-void
.end method

.method public putValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 234
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    return-void
.end method

.method public release()V
    .locals 2

    .line 215
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mHandler:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    if-eqz v0, :cond_1

    .line 219
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->mMiniProgManagerInitCallBack:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManagerInitCallBack;

    .line 221
    :cond_1
    return-void
.end method
