.class public Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;
.super Ljava/lang/Object;
.source "OSSRetryHandler.java"


# instance fields
.field private maxRetryCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxRetryCount"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->setMaxRetryCount(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public setMaxRetryCount(I)V
    .locals 0
    .param p1, "maxRetryCount"    # I

    .line 22
    iput p1, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    .line 23
    return-void
.end method

.method public shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "currentRetryCount"    # I

    .line 26
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    if-lt p2, v0, :cond_0

    .line 27
    sget-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v0

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v0, :cond_4

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientException;->isCanceledException()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 36
    .local v0, "localException":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_2

    .line 38
    const-string v1, "[shouldRetry] - is interrupted!"

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 40
    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3

    .line 41
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 43
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldRetry - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 46
    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_4
    instance-of v0, p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz v0, :cond_7

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    .line 48
    .local v0, "serviceException":Lcom/alibaba/sdk/android/oss/ServiceException;
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestTimeTooSkewed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 50
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_6

    .line 51
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 53
    :cond_6
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v1

    .line 56
    .end local v0    # "serviceException":Lcom/alibaba/sdk/android/oss/ServiceException;
    :cond_7
    sget-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v0
.end method

.method public timeInterval(ILcom/alibaba/sdk/android/oss/internal/OSSRetryType;)J
    .locals 4
    .param p1, "currentRetryCount"    # I
    .param p2, "retryType"    # Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    .line 61
    sget-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler$1;->$SwitchMap$com$alibaba$sdk$android$oss$internal$OSSRetryType:[I

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0

    .line 63
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0xc8

    mul-long/2addr v0, v2

    return-wide v0
.end method
