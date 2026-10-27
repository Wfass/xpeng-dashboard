.class public Lcom/alibaba/sdk/android/httpdns/HttpDns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final holder:Lcom/alibaba/sdk/android/httpdns/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/d;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/e/f;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/e/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/d;-><init>(Lcom/alibaba/sdk/android/httpdns/e/c;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->holder:Lcom/alibaba/sdk/android/httpdns/e/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 4

    const-class v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->holder:Lcom/alibaba/sdk/android/httpdns/e/d;

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/sdk/android/httpdns/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 3

    const-class v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->holder:Lcom/alibaba/sdk/android/httpdns/e/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/alibaba/sdk/android/httpdns/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/HttpDns;->holder:Lcom/alibaba/sdk/android/httpdns/e/d;

    invoke-virtual {v1, p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/InitConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->addConfig(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/InitConfig;)V

    return-void
.end method

.method public static declared-synchronized switchDnsService(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class p0, Lcom/alibaba/sdk/android/httpdns/HttpDns;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
