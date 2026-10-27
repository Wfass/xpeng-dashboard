.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
.super Ljava/lang/Object;
.source "TimeoutDns.java"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$DowngradeStrategy;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "133084"

.field private static final MEANINGFUL_MIN_TIMEOUT:I = 0x3e8

.field private static final SECRET_KEY:Ljava/lang/String; = "2bfcc6860a1eaa5ccfc9e54c020ba66e"

.field private static final TAG:Ljava/lang/String; = "TimeoutDns"

.field private static final XMART_EU_HOST:Ljava/lang/String; = "xmart-eu.xiaopeng.com"

.field private static final XMART_HOST:Ljava/lang/String; = "xmart.xiaopeng.com"

.field private static sCacheKey:Ljava/lang/String; = null

.field private static sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService; = null

.field private static sHttpDnsParams:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHttpDnsTimeout:I = 0x1388

.field private static sInitialized:Z = false

.field private static sLocalParams:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeout:I = 0x2710


# instance fields
.field private mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->create()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    return-object v0
.end method

.method private checkAndInitHttpDns(Landroid/content/Context;)V
    .locals 5

    .line 84
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 90
    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 97
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    .line 99
    new-instance v2, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;-><init>()V

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableExpiredIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableCacheIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableHttps(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    if-eqz v1, :cond_2

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/Region;->DE:Lcom/alibaba/sdk/android/httpdns/Region;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/alibaba/sdk/android/httpdns/Region;->DEFAULT:Lcom/alibaba/sdk/android/httpdns/Region;

    .line 107
    :goto_0
    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setPreResolveAfterNetworkChanged(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    sget v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 111
    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setTimeoutMillis(I)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v2

    const-string v4, "133084"

    .line 112
    invoke-virtual {v2, v4}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->buildFor(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;

    const-string v2, "133084"

    const-string v4, "2bfcc6860a1eaa5ccfc9e54c020ba66e"

    .line 114
    invoke-static {p1, v2, v4}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    .line 116
    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->enable(Z)V

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    const-string/jumbo v1, "xmart-eu.xiaopeng.com"

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "xmart.xiaopeng.com"

    .line 120
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveHosts(Ljava/util/List;)V

    .line 126
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->initParams()V

    .line 128
    sput-boolean v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    .line 129
    monitor-exit v0

    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Not init GlobalConfig with applicationContext"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
    .locals 1

    .line 163
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v0

    return-object v0
.end method

.method private static initParams()V
    .locals 8

    .line 400
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 401
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/PackageUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    .line 402
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/PackageUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "unknown"

    if-eqz v5, :cond_0

    move-object v4, v6

    .line 407
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 410
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 413
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    .line 414
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    .line 415
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v7, "vin"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v4, "iccid"

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v4, "cduid"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v4, "ostype"

    const-string/jumbo v5, "xmartos"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v4, "osversion"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v2, "appversion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v1, "appname"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sHttpDnsParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeoutDns"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sLocalDnsParams = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sLocalParams:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->updateCacheKey()V

    :cond_2
    return-void
.end method

.method public static timeout()I
    .locals 1

    .line 179
    sget v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    return v0
.end method

.method public static timeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    move p0, v0

    .line 174
    :cond_0
    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    mul-int/lit8 p0, p0, 0x2

    .line 175
    div-int/lit8 p0, p0, 0x3

    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    return-void
.end method

.method private static updateCacheKey()V
    .locals 4

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    const-string v3, "cduid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sCacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 212
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 216
    :try_start_0
    sget v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string v0, "TimeoutDns"

    const-string v1, "get ip timeout"

    .line 218
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    array-length v0, p1

    if-lez v0, :cond_0

    .line 221
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    throw p1
.end method

.method public lookupAsync(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "TimeoutDns"

    .line 185
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 187
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsParams:Ljava/util/Map;

    sget-object v5, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sCacheKey:Ljava/lang/String;

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "async get the ips getByHostAsync is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 193
    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    aget-object p1, v1, v2

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$DowngradeStrategy;->needDowngrade(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the inetAddress getByLocalDns is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 207
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "exception occurs when getIpsByHttpDns, and details: "

    .line 204
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
