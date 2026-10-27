.class public Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;
.super Ljava/lang/Object;
.source "IHttpManager.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final DNS_TIMEOUT:I = 0x1388

.field private static final READ_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "IHttpManager"

.field public static final WEATHER_URL_DOMESTIC:Ljava/lang/String; = "https://xmart.xiaopeng.com/assistant/assistant_skills/batch"

.field public static final WEATHER_URL_INTERNATIONAL:Ljava/lang/String; = "https://xmart-eu.xiaopeng.com/assistant/assistant_skills/batch"

.field public static final WEATHER_URL_MOCK:Ljava/lang/String; = "http://logan-gateway.test.logan.xiaopeng.local/xp-assistant-boot/assistant_skills/batch"

.field private static final WRITE_TIMEOUT:I = 0xbb8

.field private static final appid:Ljava/lang/String; = "xp_car_camera_biz"

.field private static final bucketName:Ljava/lang/String; = "bjmarket"

.field private static hasInternational:Z = false

.field private static mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager; = null

.field private static final secret:Ljava/lang/String; = "8akHD02indsn2slC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->hasInternational:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->mInstance:Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    return-object v0
.end method

.method public static getWeatherUrl()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->hasMockUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://logan-gateway.test.logan.xiaopeng.local/xp-assistant-boot/assistant_skills/batch"

    goto :goto_0

    .line 84
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->hasInternational:Z

    if-eqz v0, :cond_1

    const-string v0, "https://xmart-eu.xiaopeng.com/assistant/assistant_skills/batch"

    goto :goto_0

    :cond_1
    const-string v0, "https://xmart.xiaopeng.com/assistant/assistant_skills/batch"

    .line 83
    :goto_0
    return-object v0
.end method

.method private static hasMockUrl()Z
    .locals 2

    .line 40
    const-string v0, "data.weather.product.env"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 59
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->registerHttp(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 61
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/http/HttpsUtils;->init(Landroid/app/Application;Z)Z

    .line 62
    return-void
.end method

.method private static registerHttp(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .locals 4
    .param p0, "context"    # Landroid/app/Application;

    .line 65
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 66
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 67
    const/16 v3, 0xbb8

    invoke-interface {v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->readTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 68
    invoke-interface {v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->writeTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 69
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->dnsTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 70
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 71
    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/contextinfo/TrafficeStaInterceptor;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/contextinfo/TrafficeStaInterceptor;-><init>()V

    .line 72
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    .line 75
    return-object v0
.end method


# virtual methods
.method public getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .locals 2

    .line 79
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    return-object v0
.end method
