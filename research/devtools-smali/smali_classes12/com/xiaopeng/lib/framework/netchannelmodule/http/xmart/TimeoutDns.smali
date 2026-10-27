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
    .locals 3

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

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    .line 73
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setExpiredIPEnabled(Z)V

    .line 75
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setCachedIPEnabled(Z)V

    .line 77
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setLogEnabled(Z)V

    .line 79
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setHTTPSRequestEnabled(Z)V

    .line 81
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveAfterNetworkChanged(Z)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-string v2, "xmart.xiaopeng.com"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    invoke-interface {v2, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setPreResolveHosts(Ljava/util/ArrayList;)V

    .line 87
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDns:Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    sget v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    invoke-interface {p1, v2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setTimeoutInterval(I)V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->hookHttpDns()V

    .line 89
    sput-boolean v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sInitialized:Z

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Not init GlobalConfig with applicationContext"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
    .locals 1

    .line 124
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    move-result-object v0

    return-object v0
.end method

.method private hookHttpDns()V
    .locals 11

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
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 104
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 106
    move v6, v2

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 107
    aget-object v7, v5, v6

    .line 108
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 109
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 111
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v10, Landroid/content/Context;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v7, v9, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_3

    .line 106
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_2
    :goto_3
    goto :goto_4

    .line 117
    :catch_0
    move-exception v5

    .line 118
    const-string v6, "TimeoutDns"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to disable httpdns log:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
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

    .line 128
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 132
    nop

    .line 135
    move p0, v0

    :cond_0
    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    .line 136
    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x3

    sput p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sHttpDnsTimeout:I

    .line 137
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
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
    :try_start_0
    sget v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->sTimeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v0, "TimeoutDns"

    const-string v1, "get ip timeout"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;->mLookupService:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$LookupService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 168
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 169
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    throw p1
.end method

.method public lookupAsync(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
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

    move-result-object p1

    .line 147
    const-string v0, "TimeoutDns"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "async get the ip getByHostAsync is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 154
    :cond_0
    nop

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    const-string v0, "TimeoutDns"

    const-string v1, "exception occurs when getIpsByHttpDns, and details: "

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
