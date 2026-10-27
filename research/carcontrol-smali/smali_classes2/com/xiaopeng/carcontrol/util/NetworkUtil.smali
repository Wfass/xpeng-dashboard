.class public Lcom/xiaopeng/carcontrol/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configHttp(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 36
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;-><init>()V

    .line 37
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    const/4 v2, 0x2

    .line 38
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 39
    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    return-object v0
.end method

.method public static doPost(ILjava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "service",
            "jsonStr",
            "callback"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->getUrl(I)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v0

    const-string v1, "NetworkUtil"

    if-nez v0, :cond_0

    const-string p0, "doPost getHttp is null"

    .line 54
    invoke-static {v1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " doPost URL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 59
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    const-string/jumbo p1, "xp_car_setting_car"

    .line 60
    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 63
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    new-instance p1, Lcom/xiaopeng/carcontrol/util/NetworkUtil$1;

    invoke-direct {p1, p2}, Lcom/xiaopeng/carcontrol/util/NetworkUtil$1;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 64
    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method

.method private static getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .locals 2

    .line 46
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;->INSTANCE:Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    return-object v0
.end method

.method private static getSelfCheckHost()Ljava/lang/String;
    .locals 2

    .line 92
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getEnv()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "https://xmart.deploy-test.xiaopeng.com/flow/cv2/vehicle/selfCheck"

    goto :goto_0

    :cond_0
    const-string v0, "https://xmart.xiaopeng.com/flow/cv2/vehicle/selfCheck"

    goto :goto_0

    :cond_1
    const-string v0, "https://10.0.13.28:8553/flow/cv2/vehicle/selfCheck"

    :goto_0
    return-object v0
.end method

.method private static getUrl(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->getSelfCheckHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/http/HttpsUtils;->init(Landroid/app/Application;Z)Z

    .line 25
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->configHttp(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "NetworkUtil"

    const-string v0, " NetworkUtil init exception"

    .line 29
    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getHttp$0(Lcom/xiaopeng/lib/framework/module/IModuleEntry;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {p0, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    return-object p0
.end method
