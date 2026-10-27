.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;
.super Ljava/lang/Object;
.source "XpuActivatePresenter.java"


# static fields
.field private static final wd:Ljava/lang/String;

.field private static final xA:Ljava/lang/String;


# instance fields
.field private mVin:Ljava/lang/String;

.field private wj:Z

.field private wl:Landroid/os/CountDownTimer;

.field private wm:Ljava/lang/Runnable;

.field private xB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ACTIVATE_XPU"

    .line 37
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xA:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CHECK_XPU_FACTORY_ACTIVATE_STATUS"

    .line 39
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wd:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;)V
    .locals 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wj:Z

    .line 55
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;

    const-wide/32 v3, 0x57e40

    const-wide/32 v5, 0x57e40

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;JJ)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wl:Landroid/os/CountDownTimer;

    .line 68
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wm:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    .line 52
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iu()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iE()V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Landroid/os/CountDownTimer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wl:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private iE()V
    .locals 4

    .line 132
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wj:Z

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 136
    const-string v0, "XpuActivatePresenter"

    const-string v1, "checkXpuActivateStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v1, "vin"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 141
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wd:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 142
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wd:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wd:Ljava/lang/String;

    .line 146
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 147
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 175
    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "XpuActivatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkXpuActivateStatus fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    const/4 v1, -0x1

    .line 179
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1004d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 181
    :goto_0
    return-void
.end method

.method private iu()V
    .locals 2

    .line 78
    const-string v0, "XpuActivatePresenter"

    const-string v1, "stopCheckXpuStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wj:Z

    .line 80
    return-void
.end method

.method private synthetic jv()V
    .locals 4

    .line 88
    const-string v0, "XpuActivatePresenter"

    const-string v1, "activateXpu"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "vin"

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 93
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xA:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 94
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xA:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xA:Ljava/lang/String;

    .line 98
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 99
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "XpuActivatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateXpu fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->xB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    const/4 v1, 0x3

    .line 120
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1004d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public static synthetic lambda$ek0ImrzkbbULdO5gmCpjN7wW-qQ(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->jv()V

    return-void
.end method


# virtual methods
.method public iD()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wj:Z

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wm:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 129
    return-void
.end method

.method public ju()V
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/-$$Lambda$a$ek0ImrzkbbULdO5gmCpjN7wW-qQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/-$$Lambda$a$ek0ImrzkbbULdO5gmCpjN7wW-qQ;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->wl:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iu()V

    .line 186
    return-void
.end method
