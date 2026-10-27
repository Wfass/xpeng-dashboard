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

.field sSharePrefs:Lcom/xiaopeng/lib/utils/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAddressByHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method static create()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;
    .locals 1

    .line 188
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;-><init>()V

    return-object v0
.end method

.method private getAddressByHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 218
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->access$300()Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, "TimeoutDns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the ip getByHostAsync is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    :try_start_0
    const-string v1, "TimeoutDns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the inetAddress getByHttpDns is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "TimeoutDns"

    const-string v2, "exception occurs when getIpsByHttpDns, and details: "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 234
    const-string v1, "TimeoutDns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the inetAddress getByLocalDns is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    return-object v0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    const-string v1, "TimeoutDns"

    const-string v2, "exception occurs when getIpsByLocalDns, and details: "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method private getCacheAddress(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/h;->ay(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/lib/utils/h;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    const-string v0, "TimeoutDns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get ip from cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    return-object v1

    .line 254
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 255
    :catch_0
    move-exception p1

    .line 256
    const-string v0, "TimeoutDns"

    const-string v2, "exception occurs when get ip from cache, and details: "

    invoke-static {v0, v2, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    return-object v1
.end method

.method private saveValidIp([Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 5

    .line 262
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/h;->ay(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    .line 268
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 269
    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "10."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 272
    const-string v0, "TimeoutDns"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save valid ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->sSharePrefs:Lcom/xiaopeng/lib/utils/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/lib/utils/h;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    goto :goto_1

    .line 268
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_5
    :goto_1
    return-void

    .line 263
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
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

    .line 192
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-object v0
.end method
