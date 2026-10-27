.class public Lcom/alibaba/sdk/android/httpdns/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
.implements Lcom/alibaba/sdk/android/httpdns/k/d$b;
.implements Lcom/alibaba/sdk/android/httpdns/f/a$c;
.implements Lcom/alibaba/sdk/android/httpdns/SyncService;


# instance fields
.field protected a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private a:Lcom/alibaba/sdk/android/httpdns/e/h;

.field protected a:Lcom/alibaba/sdk/android/httpdns/g/b;

.field protected a:Lcom/alibaba/sdk/android/httpdns/j/c;

.field private a:Lcom/alibaba/sdk/android/httpdns/j/e;

.field protected a:Lcom/alibaba/sdk/android/httpdns/j/k;

.field private a:Lcom/alibaba/sdk/android/httpdns/j/m;

.field protected a:Lcom/alibaba/sdk/android/httpdns/j/n;

.field protected a:Lcom/alibaba/sdk/android/httpdns/k/d;

.field protected a:Lcom/alibaba/sdk/android/httpdns/l/b;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->b:Z

    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/j/e;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/h;

    invoke-direct {v0, p3}, Lcom/alibaba/sdk/android/httpdns/e/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/g/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-direct {p3, v0}, Lcom/alibaba/sdk/android/httpdns/g/b;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/l/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-direct {p3, v0}, Lcom/alibaba/sdk/android/httpdns/l/b;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/j/m;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/a/b;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/sdk/android/httpdns/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/httpdns/j/h;-><init>()V

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/alibaba/sdk/android/httpdns/j/m;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/a/b;Lcom/alibaba/sdk/android/httpdns/j/h;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/k/d;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-direct {p3, v0, p0}, Lcom/alibaba/sdk/android/httpdns/k/d;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d$b;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/k;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    invoke-direct {v0, v1, p3, v2}, Lcom/alibaba/sdk/android/httpdns/j/k;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/e/h;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/e/a;

    invoke-direct {p3}, Lcom/alibaba/sdk/android/httpdns/e/a;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/n;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    iget-object v7, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iget-object v8, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    move-object v3, v0

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/sdk/android/httpdns/j/n;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/j/k;Lcom/alibaba/sdk/android/httpdns/j/m;Lcom/alibaba/sdk/android/httpdns/j/e;Lcom/alibaba/sdk/android/httpdns/e/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/c;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    iget-object v7, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    iget-object v8, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    move-object v3, v0

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/sdk/android/httpdns/j/c;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/j/m;Lcom/alibaba/sdk/android/httpdns/j/k;Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/j/e;Lcom/alibaba/sdk/android/httpdns/e/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->getInstance()Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/e;->a()V

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->c(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->b:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p0, p1, p3}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V

    :cond_0
    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "init fail, crash defend"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/f/a;->a()Lcom/alibaba/sdk/android/httpdns/f/a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/f/a;->a()Lcom/alibaba/sdk/android/httpdns/f/a;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Lcom/alibaba/sdk/android/httpdns/f/a$c;)V

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/b/c;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/k/d;->a()V

    :cond_2
    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)V

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "httpdns service is init "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->auto:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/e/e$c;->a:[I

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;->getNetType(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object p1

    :cond_0
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object p1

    :cond_1
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object p1

    :cond_2
    return-object p2
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/e/e;)Lcom/alibaba/sdk/android/httpdns/j/m;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/e/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Z

    return p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getInitConfig(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isEnableHttps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Z)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isEnableDegradationLocalDns()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->b(Z)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isEnableExpiredIp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Z)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getIPRankingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getIPRankingList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getHostListWithFixedIp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isEnableCacheIp()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(ZZ)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getCacheTtlChanger()Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isResolveAfterNetworkChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Z

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getDegradationFilter()Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getDegradationFilter()Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/e;->a(Lcom/alibaba/sdk/android/httpdns/DegradationFilter;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getNotUseHttpDnsFilter()Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getNotUseHttpDnsFilter()Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/e;->a(Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->isEnableCrashDefend()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->b:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getSdnsGlobalParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/k;->a(Ljava/util/Map;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 6

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/e/e$a;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e$a;-><init>(Lcom/alibaba/sdk/android/httpdns/e/e;Lcom/alibaba/sdk/android/httpdns/e/b;)V

    const-string v1, "httpdns"

    const-string v2, "2.4.2"

    const/4 v3, 0x2

    const/4 v4, 0x7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/sdk/android/crashdefend/CrashDefendApi;->registerCrashDefendSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/sdk/android/crashdefend/CrashDefendCallback;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/e$b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/e/e$b;-><init>(Lcom/alibaba/sdk/android/httpdns/e/e;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->b()V

    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/k;->a()V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "set empty secret!?"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public cleanHostCache(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a()V

    :goto_1
    return-void
.end method

.method public getAllByHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host is invalid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host is ip. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getByHost(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "request in main thread, use async request"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host is invalid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host is ip. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    return-void
.end method

.method public getHttpDnsResultForHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p5, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p5, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p5, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    return-void
.end method

.method public getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "request in main thread, use async request"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostSync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "request in main thread, use async request"

    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getHttpDnsResultForHostSyncNonBlocking(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getIPv4ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/e/e;->getIPv4ListForHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getIPv4ListForHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIPv6ByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/e/e;->getIPv6sByHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getIPv6ForHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/e/e;->getIPv6sByHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getIPv6ListForHostASync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIPv6sByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/e/e;->getIPv4ListForHostAsync(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is invalid. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host is ip. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is invalid. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "host is ip. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is invalid. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isAnIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host is ip. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/m/a;->a()Lcom/alibaba/sdk/android/httpdns/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/m/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthCurrentTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/h;->a(J)V

    return-void
.end method

.method public setPreResolveHosts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/httpdns/e/e;->setPreResolveHosts(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p1, "setPreResolveHosts empty list"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setPreResolveHosts(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p1, "setPreResolveHosts empty list"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setRegion(Lcom/alibaba/sdk/android/httpdns/Region;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/Region;->getRegion()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/e/e;->setRegion(Ljava/lang/String;)V

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "service is disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->regionEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is same, do not update serverIps"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/m;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)V

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Ljava/lang/String;)V

    return-void
.end method
