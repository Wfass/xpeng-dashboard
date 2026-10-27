.class public Lcom/xiaopeng/xuiservice/innerutils/Retry;
.super Ljava/lang/Object;
.source "Retry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;
    }
.end annotation


# static fields
.field public static final DEFAULT_RETRY_INTERVAL:Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;

.field private static final TAG:Ljava/lang/String; = "xpRetry"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/Retry;->DEFAULT_RETRY_INTERVAL:Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(I)J
    .locals 4
    .param p0, "retry"    # I

    .line 23
    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public static retry(Ljava/util/concurrent/Callable;ILcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;Ljava/lang/String;)Z
    .locals 9
    .param p1, "maxRetry"    # I
    .param p2, "retryInterval"    # Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 30
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 33
    .local v1, "result":Z
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xpRetry"

    const-string v4, "retry fail"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 39
    return v2

    .line 42
    :cond_0
    move v3, v1

    move v1, v2

    .line 42
    .local v1, "retry":I
    .local v3, "result":Z
    :goto_1
    if-gt v1, p1, :cond_2

    .line 43
    invoke-interface {p2, v1}, Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;->get(I)J

    move-result-wide v4

    .line 44
    .local v4, "interval":J
    const-string/jumbo v6, "xpRetry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry try="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", will trigger after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms, taskName=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 47
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v6

    .line 50
    goto :goto_2

    .line 48
    :catch_1
    move-exception v6

    .line 49
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "xpRetry"

    const-string v8, "retry fail"

    invoke-static {v7, v8, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_1

    .line 53
    const-string/jumbo v0, "xpRetry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry success, try="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", taskName=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v2

    .line 42
    .end local v4    # "interval":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "retry":I
    :cond_2
    const-string/jumbo v1, "xpRetry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry failed, total try="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", taskName=("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return v0
.end method

.method public static retryForValue(Ljava/util/concurrent/Callable;ILcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "maxRetry"    # I
    .param p2, "retryInterval"    # Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I",
            "Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 68
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    .line 71
    .local v1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xpRetry"

    const-string v4, "retry fail"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    return-object v1

    .line 80
    :cond_0
    const/4 v2, 0x1

    .line 80
    .local v2, "retry":I
    :goto_1
    if-gt v2, p1, :cond_2

    .line 81
    invoke-interface {p2, v2}, Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;->get(I)J

    move-result-wide v3

    .line 82
    .local v3, "interval":J
    const-string/jumbo v5, "xpRetry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry try="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", will trigger after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, taskName=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 85
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    .line 88
    goto :goto_2

    .line 86
    :catch_1
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "xpRetry"

    const-string v7, "retry fail"

    invoke-static {v6, v7, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_1

    .line 91
    const-string/jumbo v0, "xpRetry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry success, try="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", taskName=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v1

    .line 80
    .end local v3    # "interval":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "retry":I
    :cond_2
    const-string/jumbo v2, "xpRetry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry failed, total try="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", taskName=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method
