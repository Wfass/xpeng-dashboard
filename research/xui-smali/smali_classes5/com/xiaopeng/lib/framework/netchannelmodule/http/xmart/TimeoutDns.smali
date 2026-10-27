.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
.super Ljava/lang/Object;
.source "TimeoutDns.java"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "133084"

.field private static final MEANINGFUL_MIN_TIMEOUT:I = 0x3e8

.field private static final SECRET_KEY:Ljava/lang/String; = "2bfcc6860a1eaa5ccfc9e54c020ba66e"

.field private static final TAG:Ljava/lang/String; = "TimeoutDns"

.field private static final XMART_HOST:Ljava/lang/String; = "xmart.xiaopeng.com"

.field private static sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

.field private static sHttpDnsTimeout:I

.field private static sInitialized:Z

.field private static sTimeout:I


# instance fields
.field private mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/16 v0, 0x2710

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    .line 50
    const/16 v0, 0x1388

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->create()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    return-object v0
.end method

.method private checkAndInitHttpDns(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 68
    monitor-exit v0

    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_3

    .line 76
    new-instance v1, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;-><init>()V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableExpiredIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableCacheIp(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setEnableHttps(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/Region;->DE:Lcom/alibaba/sdk/android/httpdns/Region;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/alibaba/sdk/android/httpdns/Region;->DEFAULT:Lcom/alibaba/sdk/android/httpdns/Region;

    :goto_0
    invoke-virtual {v1, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setPreResolveAfterNetworkChanged(Z)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    sget v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 88
    invoke-virtual {v1, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->setTimeoutMillis(I)Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;

    move-result-object v1

    const-string v3, "133084"

    .line 89
    invoke-virtual {v1, v3}, Lcom/alibaba/sdk/android/httpdns/InitConfig$Builder;->buildFor(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;

    .line 91
    const-string v1, "133084"

    const-string v3, "2bfcc6860a1eaa5ccfc9e54c020ba66e"

    invoke-static {p1, v1, v3}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    .line 93
    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->enable(Z)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "preSolveHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "xmart.xiaopeng.com"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v3, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveHosts(Ljava/util/List;)V

    .line 102
    sput-boolean v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    .line 103
    .end local v1    # "preSolveHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 104
    return-void

    .line 72
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not init GlobalConfig with applicationContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
    .locals 1

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v0

    return-object v0
.end method

.method public static timeout()I
    .locals 1

    .line 153
    sget v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    return v0
.end method

.method public static timeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .line 141
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 145
    const/16 p0, 0x3e8

    .line 148
    :cond_0
    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    .line 149
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 150
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 179
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 183
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[Ljava/net/InetAddress;>;"
    :try_start_0
    sget v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimeoutDns"

    const-string v3, "get ip timeout"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 187
    .local v2, "cache":[Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 188
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "cache":[Ljava/net/InetAddress;
    :cond_0
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
.end method

.method public lookupAsync(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 159
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "ips":[Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-interface {v1, p1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v1

    .line 162
    .local v1, "httpDnsResult":Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 166
    :cond_0
    const-string v2, "TimeoutDns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "async get the ips getByHostAsync is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 173
    .end local v0    # "ips":[Ljava/lang/String;
    .end local v1    # "httpDnsResult":Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    :cond_1
    nop

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "mE":Ljava/lang/Exception;
    const-string v1, "TimeoutDns"

    const-string v2, "exception occurs when getIpsByHttpDns, and details: "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
