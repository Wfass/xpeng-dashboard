.class public Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;
.super Ljava/lang/Object;
.source "ReportKeyValueUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;,
        Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpKeyValue"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$query$4(Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activityQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;->onQueryCallback(Ljava/util/List;)V

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic lambda$reportMultiple$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activitySaveMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reportMultiple$1(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 36
    .local v0, "start":J
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$htQN3XH6dJzZqXtjfFNvrheWCgM;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$htQN3XH6dJzZqXtjfFNvrheWCgM;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/Retry;->DEFAULT_RETRY_INTERVAL:Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportMultiple: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/innerutils/Retry;->retry(Ljava/util/concurrent/Callable;ILcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;Ljava/lang/String;)Z

    move-result v2

    .line 38
    .local v2, "success":Z
    const-string/jumbo v3, "xpKeyValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloud request success, multiple key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-interface {p2, v2}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;->onReportCallback(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic lambda$reportSingle$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activitySaveSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reportSingle$3(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 50
    .local v0, "start":J
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/Retry;->DEFAULT_RETRY_INTERVAL:Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportSingle: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v2, v5, v3, v4}, Lcom/xiaopeng/xuiservice/innerutils/Retry;->retry(Ljava/util/concurrent/Callable;ILcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;Ljava/lang/String;)Z

    move-result v2

    .line 52
    .local v2, "success":Z
    const-string/jumbo v3, "xpKeyValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloud request success, single key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-interface {p2, v2}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;->onReportCallback(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public static query(Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$tnwiAMfsmpF_stP6vBcWPt8XEuw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$tnwiAMfsmpF_stP6vBcWPt8XEuw;-><init>(Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$QueryCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public static report(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "single"    # Z
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    .line 25
    if-eqz p2, :cond_0

    .line 26
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->reportSingle(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->reportMultiple(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    .line 30
    :goto_0
    return-void
.end method

.method public static reportMultiple(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public static reportSingle(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$9QVB17zfL7VjGwhd9ya5EIwt5Js;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$9QVB17zfL7VjGwhd9ya5EIwt5Js;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
