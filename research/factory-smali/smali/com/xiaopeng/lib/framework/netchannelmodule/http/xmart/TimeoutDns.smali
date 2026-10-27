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

    .line 44
    const/16 v0, 0x2710

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    .line 45
    const/16 v0, 0x1388

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->create()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    return-object v0
.end method

.method private checkAndInitHttpDns(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 63
    monitor-exit v0

    return-void

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    .line 71
    const-string v1, "133084"

    const-string v2, "2bfcc6860a1eaa5ccfc9e54c020ba66e"

    invoke-static {p1, v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    .line 73
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setExpiredIPEnabled(Z)V

    .line 75
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setCachedIPEnabled(Z)V

    .line 77
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setLogEnabled(Z)V

    .line 79
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setHTTPSRequestEnabled(Z)V

    .line 81
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveAfterNetworkChanged(Z)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "preSolveHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "xmart.xiaopeng.com"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v3, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveHosts(Ljava/util/ArrayList;)V

    .line 87
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    sget v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    invoke-interface {v3, v4}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setTimeoutInterval(I)V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->hookHttpDns()V

    .line 89
    sput-boolean v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    .line 90
    .end local v1    # "preSolveHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0

    .line 91
    return-void

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not init GlobalConfig with applicationContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
    .locals 1

    .line 124
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v0

    return-object v0
.end method

.method private hookHttpDns()V
    .locals 13

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/log/d/b;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/alibaba/mtl/log/a;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 102
    .local v0, "targetClasses":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 104
    .local v5, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 105
    .local v6, "clazz":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 106
    .local v7, "fieldList":[Ljava/lang/reflect/Field;
    move v8, v2

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_2

    .line 107
    aget-object v9, v7, v8

    .line 108
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    .line 109
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 111
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v12, Landroid/content/Context;

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 112
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v9, v11, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_3

    .line 106
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 119
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "fieldList":[Ljava/lang/reflect/Field;
    .end local v8    # "i":I
    :cond_2
    :goto_3
    goto :goto_4

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, "ex":Ljava/lang/Exception;
    const-string v7, "TimeoutDns"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try to disable httpdns log:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_3
    return-void
.end method

.method public static timeout()I
    .locals 1

    .line 140
    sget v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    return v0
.end method

.method public static timeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .line 128
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 132
    const/16 p0, 0x3e8

    .line 135
    :cond_0
    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    .line 136
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 137
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

    .line 160
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->getAllByName(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 164
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

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimeoutDns"

    const-string v3, "get ip timeout"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 168
    .local v2, "cache":[Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 169
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "cache":[Ljava/net/InetAddress;
    :cond_0
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
.end method

.method public lookupAsync(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 145
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->checkAndInitHttpDns(Landroid/content/Context;)V

    .line 146
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "ip":Ljava/lang/String;
    const-string v1, "TimeoutDns"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "async get the ip getByHostAsync is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    .end local v0    # "ip":Ljava/lang/String;
    :cond_0
    nop

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "mE":Ljava/lang/Exception;
    const-string v1, "TimeoutDns"

    const-string v2, "exception occurs when getIpsByHttpDns, and details: "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
