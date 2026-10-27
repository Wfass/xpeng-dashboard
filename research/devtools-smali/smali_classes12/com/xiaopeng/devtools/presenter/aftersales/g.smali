.class public Lcom/xiaopeng/devtools/presenter/aftersales/g;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"


# static fields
.field private static final vY:Ljava/lang/String;

.field private static final vZ:Ljava/lang/String;

.field private static final wa:Ljava/lang/String;

.field private static final wb:Ljava/lang/String;

.field private static final wc:Ljava/lang/String;

.field private static final wd:Ljava/lang/String;


# instance fields
.field private mCduId:Ljava/lang/String;

.field private mIccid:Ljava/lang/String;

.field private mVin:Ljava/lang/String;

.field private we:Ljava/lang/String;

.field private wf:Ljava/lang/String;

.field private wg:Ljava/lang/String;

.field private wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

.field private wi:Lcom/xiaopeng/devtools/view/aftersales/e;

.field private wj:Z

.field private wk:[Ljava/lang/String;

.field private wl:Landroid/os/CountDownTimer;

.field private wm:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPDATE_CDUID"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vY:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPDATE_ICCID"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vZ:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPDATE_NFC_SEID"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wa:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE_BLEKEY_MACADDR"

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/i;->cE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPDATE_BLEKEY_MACADDR"

    .line 55
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wb:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "REPLACE_XPU"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wc:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CHECK_XPU_ACTIVATE_STATUS"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/e;)V
    .locals 7

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wj:Z

    .line 88
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/g$1;

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0x493e0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/devtools/presenter/aftersales/g$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;JJ)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wl:Landroid/os/CountDownTimer;

    .line 100
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/g$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$2;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wm:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    .line 71
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mCduId:Ljava/lang/String;

    .line 72
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    .line 73
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    .line 74
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    .line 75
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wg:Ljava/lang/String;

    .line 76
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    .line 77
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    .line 78
    const-string p1, "BLE_POSITION_NAMES"

    invoke-static {p1}, Lcom/xiaopeng/a/a$a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wk:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iu()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iE()V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Landroid/os/CountDownTimer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wl:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mCduId:Ljava/lang/String;

    return-object p0
.end method

.method private iE()V
    .locals 4

    .line 445
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wj:Z

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 449
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "checkXpuActivateStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    const-string v1, "vin"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 454
    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wd:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 455
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wd:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wd:Ljava/lang/String;

    .line 459
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 460
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 495
    goto :goto_0

    .line 496
    :cond_1
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkXpuActivateStatus fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1004d1

    .line 499
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void
.end method

.method private synthetic iF()V
    .locals 4

    .line 392
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "replaceXpu"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 395
    const-string v1, "vin"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 397
    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wc:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 398
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wc:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wc:Ljava/lang/String;

    .line 402
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 403
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 432
    goto :goto_0

    .line 433
    :cond_0
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceXpu fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void
.end method

.method private synthetic iG()V
    .locals 5

    .line 346
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "updateNfcSeid2Cloud"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 348
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 349
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 350
    const-string v3, "vin"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "seId"

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 354
    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wa:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 355
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wa:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wa:Ljava/lang/String;

    .line 359
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$7;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 360
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 384
    goto :goto_0

    .line 385
    :cond_0
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNfcSeid2Cloud fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void
.end method

.method private synthetic iH()V
    .locals 5

    .line 289
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "updateBleMac2Cloud"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 291
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    const-string v2, "SUPPORT_MULTI_BLE_KEY"

    invoke-static {v2}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->setTime(J)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->setVin(Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 299
    const-string v3, "vin"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "mac"

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 306
    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wb:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 307
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wb:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wb:Ljava/lang/String;

    .line 311
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$6;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 312
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 338
    goto :goto_1

    .line 339
    :cond_1
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBleMac2Cloud fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    :goto_1
    return-void
.end method

.method private synthetic iI()V
    .locals 5

    .line 243
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "updateIccid2Cloud"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 245
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v3, "vin"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "iccid"

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 251
    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 252
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vZ:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vZ:Ljava/lang/String;

    .line 256
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 257
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 281
    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccid2Cloud fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void
.end method

.method private synthetic iJ()V
    .locals 5

    .line 197
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "updateCduid2Cloud"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v3, "vin"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "cduId"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mCduId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 205
    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vY:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/g;->vY:Ljava/lang/String;

    .line 210
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 211
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 235
    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCduid fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void
.end method

.method private iu()V
    .locals 2

    .line 109
    const-string v0, "UpdateDevicesIdPresenter"

    const-string v1, "stopCheckXpuStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wj:Z

    .line 111
    return-void
.end method

.method public static synthetic lambda$8OWc6loZXrnp8GLZYCVlwc7n6tQ(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iF()V

    return-void
.end method

.method public static synthetic lambda$GCC7moZSRWnmT27jxYqK6IrebwE(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iG()V

    return-void
.end method

.method public static synthetic lambda$JMzTzx20xxJeE0M0l1gmgFERkT0(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iH()V

    return-void
.end method

.method public static synthetic lambda$U-f-WvOYSiOVNjHPP_3CEmocBp8(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iI()V

    return-void
.end method

.method public static synthetic lambda$es0xAlFu5s184WlaBeVYqmQA56E(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iJ()V

    return-void
.end method


# virtual methods
.method public getCduId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mCduId:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public getXpuSn()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wg:Ljava/lang/String;

    return-object v0
.end method

.method public iA()V
    .locals 1

    .line 288
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$JMzTzx20xxJeE0M0l1gmgFERkT0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$JMzTzx20xxJeE0M0l1gmgFERkT0;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public iB()V
    .locals 1

    .line 345
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$GCC7moZSRWnmT27jxYqK6IrebwE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$GCC7moZSRWnmT27jxYqK6IrebwE;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public iC()V
    .locals 1

    .line 391
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$8OWc6loZXrnp8GLZYCVlwc7n6tQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$8OWc6loZXrnp8GLZYCVlwc7n6tQ;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public iD()V
    .locals 1

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wj:Z

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wm:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 442
    return-void
.end method

.method public it()V
    .locals 1

    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public iv()V
    .locals 5

    .line 160
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    const-string v1, "replace"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->sendRenewalPartsRequest(Ljava/lang/String;)V

    .line 161
    const-string v0, "SUPPORT_MULTI_BLE_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/xiaopeng/devtools/bean/car/CarBase;

    const-string v3, "ble_replace_req"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/devtools/bean/car/CarBase;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->sendMultiBleRenewalRequest(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    return-object v0
.end method

.method public ix()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    return-object v0
.end method

.method public iy()V
    .locals 1

    .line 196
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$es0xAlFu5s184WlaBeVYqmQA56E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$es0xAlFu5s184WlaBeVYqmQA56E;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public iz()V
    .locals 1

    .line 242
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$U-f-WvOYSiOVNjHPP_3CEmocBp8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$g$U-f-WvOYSiOVNjHPP_3CEmocBp8;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 504
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 508
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iu()V

    .line 509
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101046

    if-eq v0, v1, :cond_2

    const v1, 0x2110104f

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 132
    :cond_0
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_MUL_BLE_REPLACE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/g$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g$3;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 135
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/g$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/CarBase;

    .line 136
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/CarBase;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wk:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_4

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wk:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->getMainMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->getSlaveList()[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 145
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wk:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->getPosition()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->getSlaveMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->cZ(Ljava/lang/String;)V

    .line 152
    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;

    .line 118
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_REPLACE_REQ :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;->getIccid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->mIccid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->cX(Ljava/lang/String;)V

    .line 121
    const-string v0, "SUPPORT_NFC_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;->getNfc_seid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->we:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->cY(Ljava/lang/String;)V

    .line 125
    :cond_3
    const-string v0, "SUPPORT_BLE_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SUPPORT_MULTI_BLE_KEY"

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxReplaceDevicesId;->getBle_mac()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wi:Lcom/xiaopeng/devtools/view/aftersales/e;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g;->wf:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->cZ(Ljava/lang/String;)V

    .line 157
    :cond_4
    :goto_1
    return-void
.end method
