.class public Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/alibaba/sdk/android/httpdns/NetType;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/concurrent/ExecutorService;

.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetType"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/n/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Z

    const-string v0, "www.taobao.com"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Landroid/content/Context;

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStack(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/aliyun/ams/ipdetector/Inet64Util;->getIpStackCheckLocal(Landroid/content/Context;)I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip detector type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/NetType;->both:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/NetType;->v4:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/NetType;->v6:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1

    :cond_4
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ip detector not exist."

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;Lcom/alibaba/sdk/android/httpdns/NetType;)Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$b;->a()Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanCache(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;-><init>(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public disableCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->b:Z

    return-void
.end method

.method public getNetType(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->b:Z

    const-string v1, "ipdetector type is "

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;

    if-eq v0, v2, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p1
.end method

.method public setCheckInterface(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Z

    return-void
.end method

.method public setHostToCheckNetType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a:Ljava/lang/String;

    return-void
.end method
