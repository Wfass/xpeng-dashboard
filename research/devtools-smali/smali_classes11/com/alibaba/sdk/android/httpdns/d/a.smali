.class public Lcom/alibaba/sdk/android/httpdns/d/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alibaba/sdk/android/httpdns/d/a;


# instance fields
.field private a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

.field private a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->getInstance(Landroid/app/Application;)Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    const-string v0, "httpdns"

    const-string v1, "1.2.3"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    :cond_0
    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/d/a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/d/a;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/d/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/d/a;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/httpdns/d/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/d/a;->b:Lcom/alibaba/sdk/android/httpdns/d/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_4

    :cond_1
    if-eqz p3, :cond_2

    if-ne p3, v0, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cacheOpen"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "perf_getip"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns success failed due to invalid params"

    goto :goto_0

    :cond_5
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns succes failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x7530

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    move-wide p2, v0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "scAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cost"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "perf_sc"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report sc request time cost failed due to invalid params"

    goto :goto_0

    :cond_4
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report sc request time cost failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scAddr"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srvAddr"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "biz_sniffer"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report sniffer failed due to missing params"

    goto :goto_0

    :cond_3
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report sniffer failed due to tracker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "scAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errCode"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errMsg"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "err_sc"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report error sc failed, due to invalid params"

    goto :goto_0

    :cond_3
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report error sc failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-gtz p8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1388

    cmp-long v2, p4, v0

    if-lez v2, :cond_2

    move-wide p4, v0

    :cond_2
    cmp-long v2, p6, v0

    if-lez v2, :cond_3

    move-wide p6, v0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "defaultIp"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "selectedIp"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "defaultIpCost"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "selectedIpCost"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipCount"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "perf_ipselection"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report ip selection failed due to invalid params"

    goto :goto_0

    :cond_5
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report ip selection failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;)Z
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;

    const-string v2, "httpdns"

    const-string v3, "1.2.3"

    const/16 v4, 0xa

    const/4 v5, 0x5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/utils/AlicloudTrackerManager;->registerCrashDefend(Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_4

    :cond_1
    if-eqz p3, :cond_2

    if-ne p3, v0, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cacheOpen"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "perf_user_getip"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns success failed due to invalid params"

    goto :goto_0

    :cond_5
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns succes failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;JI)V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x7530

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    move-wide p2, v0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "srvAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cost"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "perf_srv"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns request time cost failed due to invalid param"

    goto :goto_0

    :cond_4
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report http dns request time cost failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scAddr"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srvAddr"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "biz_local_disable"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report local disable failed due to missing params"

    goto :goto_0

    :cond_3
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report local disable failed due to tracker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report is disabled"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "srvAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errCode"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errMsg"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ipv6"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string p2, "err_srv"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report error http dns request failed, due to invalid params"

    goto :goto_0

    :cond_3
    const-string p1, "HttpDns:ReportManager"

    const-string p2, "report error http dns request failed due to tacker is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report is disabled"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report cache failed, due to invalid param enable, enable can only be 0 or 1"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "biz_cache"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report cache failed due to tracker is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report is disabled"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report set expired ip enabled failed, due to invalid param enable, enable can only be 0 or 1"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "biz_expired_ip"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report set expired ip enabled failed due to tracker is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Z)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/d/a;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string v0, "HttpDns:ReportManager"

    const-string v1, "report is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "biz_active"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string v0, "HttpDns:ReportManager"

    const-string v1, "report sdk start failed due to tracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->i:Z

    if-nez v0, :cond_0

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report is disabled"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report uncaught exception failed due to exception msg is null"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "exception"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "err_uncaught_exception"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string p1, "HttpDns:ReportManager"

    const-string v0, "report uncaught exception failed due to tacker is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/d/a;->a:Lcom/alibaba/sdk/android/utils/AlicloudTracker;

    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "HttpDns:ReportManager"

    const-string v0, "tracker null, set global properties failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
