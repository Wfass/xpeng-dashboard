.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
.super Ljava/lang/Object;
.source "TimeoutDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupService"
.end annotation


# static fields
.field private static final IP_CACHE:Ljava/lang/String; = "ipCache"


# instance fields
.field executor:Ljava/util/concurrent/ExecutorService;

.field sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAddressByHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static create()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    .locals 1

    .line 207
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;-><init>()V

    return-object v0
.end method

.method private getAddressByHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .param p1, "mHost"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "ips":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->access$300()Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-interface {v1, p1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v1

    .line 239
    .local v1, "httpDnsResult":Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    aget-object v2, v0, v2

    .line 246
    .local v2, "ip":Ljava/lang/String;
    :try_start_0
    const-string v3, "TimeoutDns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the inetAddress getByHttpDns is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 248
    .local v3, "result":[Ljava/net/InetAddress;
    invoke-direct {p0, v3, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-object v3

    .line 250
    .end local v3    # "result":[Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "mE":Ljava/net/UnknownHostException;
    const-string v4, "TimeoutDns"

    const-string v5, "exception occurs when getIpsByHttpDns, and details: "

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "mE":Ljava/net/UnknownHostException;
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 258
    .local v2, "inetAddresses":[Ljava/net/InetAddress;
    const-string v3, "TimeoutDns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the inetAddress getByLocalDns is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    return-object v2

    .line 261
    .end local v2    # "inetAddresses":[Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 262
    .local v2, "mE":Ljava/net/UnknownHostException;
    const-string v3, "TimeoutDns"

    const-string v4, "exception occurs when getIpsByLocalDns, and details: "

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    return-object v3
.end method

.method private getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "cacheIp":Ljava/lang/String;
    const-string v1, "TimeoutDns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ip from cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    return-object v2

    .line 278
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "TimeoutDns"

    const-string v4, "exception occurs when get ip from cache, and details: "

    invoke-static {v3, v4, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .end local v1    # "e":Ljava/net/UnknownHostException;
    return-object v2
.end method

.method private saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 5
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "host"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    if-nez v0, :cond_1

    .line 290
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    .line 292
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 293
    .local v2, "adr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "10."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "ip":Ljava/lang/String;
    const-string v1, "TimeoutDns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save valid ip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/lib/utils/SharedPreferencesUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    goto :goto_1

    .line 292
    .end local v0    # "ip":Ljava/lang/String;
    .end local v2    # "adr":Ljava/net/InetAddress;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_5
    :goto_1
    return-void

    .line 287
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 223
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<[Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-object v0
.end method
