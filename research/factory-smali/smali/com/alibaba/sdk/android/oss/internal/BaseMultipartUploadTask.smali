.class public abstract Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;
.super Ljava/lang/Object;
.source "BaseMultipartUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
        "Result:",
        "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field protected final CPU_SIZE:I

.field protected final KEEP_ALIVE_TIME:I

.field protected final MAX_CORE_POOL_SIZE:I

.field protected final MAX_IMUM_POOL_SIZE:I

.field protected final MAX_QUEUE_SIZE:I

.field protected final PART_SIZE_ALIGN_NUM:I

.field protected mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

.field protected mCheckCRC64:Z

.field protected mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;"
        }
    .end annotation
.end field

.field protected mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field protected mFileLength:J

.field protected mIsCancel:Z

.field protected mLastPartSize:J

.field protected mLock:Ljava/lang/Object;

.field protected mPartAttr:[I

.field protected mPartETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field protected mPartExceptionCount:I

.field protected mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "TRequest;>;"
        }
    .end annotation
.end field

.field protected mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field protected mRunPartTaskCount:I

.field protected mUploadException:Ljava/lang/Exception;

.field protected mUploadFile:Ljava/io/File;

.field protected mUploadFilePath:Ljava/lang/String;

.field protected mUploadId:Ljava/lang/String;

.field protected mUploadUri:Landroid/net/Uri;

.field protected mUploadedLength:J


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 11
    .param p1, "operation"    # Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
    .param p4, "context"    # Lcom/alibaba/sdk/android/oss/network/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            "TRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    .local p2, "request":Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;, "TRequest;"
    .local p3, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<TRequest;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    .line 51
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    nop

    :cond_0
    iput v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_CORE_POOL_SIZE:I

    .line 52
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_IMUM_POOL_SIZE:I

    .line 53
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->KEEP_ALIVE_TIME:I

    .line 54
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_QUEUE_SIZE:I

    .line 55
    const/16 v2, 0x1000

    iput v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->PART_SIZE_ALIGN_NUM:I

    .line 56
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_CORE_POOL_SIZE:I

    iget v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_IMUM_POOL_SIZE:I

    const-wide/16 v6, 0xbb8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v9, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v10, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$1;

    invoke-direct {v10, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z

    .line 80
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartAttr:[I

    .line 88
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 89
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 90
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 91
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    .line 92
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 93
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z

    .line 94
    return-void
.end method


# virtual methods
.method protected abstract abortThisUpload()V
.end method

.method public call()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkInitData()V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->initMultipartUploadId()V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v1

    .line 148
    .local v1, "result":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;, "TResult;"
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    return-object v1

    .line 157
    .end local v1    # "result":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;, "TResult;"
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v2, :cond_1

    .line 160
    move-object v2, v1

    check-cast v2, Lcom/alibaba/sdk/android/oss/ClientException;

    .local v2, "temp":Lcom/alibaba/sdk/android/oss/ClientException;
    goto :goto_0

    .line 162
    .end local v2    # "temp":Lcom/alibaba/sdk/android/oss/ClientException;
    :cond_1
    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .restart local v2    # "temp":Lcom/alibaba/sdk/android/oss/ClientException;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v3, v4, v2, v0}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 167
    :cond_2
    throw v2

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "temp":Lcom/alibaba/sdk/android/oss/ClientException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 156
    :cond_3
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->call()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method protected ceilPartSize(J)J
    .locals 4
    .param p1, "partSize"    # J

    .line 420
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    const-wide/16 v0, 0xfff

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1000

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 421
    .end local p1    # "partSize":J
    .local v0, "partSize":J
    return-wide v0
.end method

.method protected checkCancel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string v1, "multipart cancel"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "e":Lcom/alibaba/sdk/android/oss/TaskCancelException;
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v1
.end method

.method protected checkException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->releasePool()V

    .line 357
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    check-cast v0, Lcom/alibaba/sdk/android/oss/ClientException;

    throw v0

    .line 364
    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .local v0, "clientException":Lcom/alibaba/sdk/android/oss/ClientException;
    throw v0

    .line 360
    .end local v0    # "clientException":Lcom/alibaba/sdk/android/oss/ClientException;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    check-cast v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    throw v0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 369
    :cond_3
    return-void
.end method

.method protected checkInitData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFilePath:Ljava/lang/String;

    .line 174
    iput-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 175
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    .line 176
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    goto :goto_4

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadUri:Landroid/net/Uri;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "mUploadFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadUri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, v4

    .line 183
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v4

    .line 192
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 193
    :cond_1
    :goto_0
    goto :goto_4

    .line 187
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v4, v1, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 188
    if-eqz v0, :cond_2

    .line 189
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 191
    :catch_2
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 193
    :cond_2
    :goto_2
    nop

    .line 194
    :goto_3
    throw v1

    .line 196
    .end local v0    # "mUploadFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_4
    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartAttr:[I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkPartSize([I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getPartSize()J

    move-result-wide v0

    .line 203
    .local v0, "partSize":J
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartAttr:[I

    aget v2, v2, v3

    .line 205
    .local v2, "partNumber":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkInitData] - partNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkInitData] - partSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 209
    if-le v2, v3, :cond_5

    const-wide/32 v3, 0x19000

    cmp-long v3, v0, v3

    if-ltz v3, :cond_4

    goto :goto_5

    .line 210
    :cond_4
    new-instance v3, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v4, "Part size must be greater than or equal to 100KB!"

    invoke-direct {v3, v4}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_5
    :goto_5
    return-void

    .line 197
    .end local v0    # "partSize":J
    .end local v2    # "partNumber":I
    :cond_6
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "file length must not be 0"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPartSize([I)V
    .locals 14
    .param p1, "partAttr"    # [I

    .line 392
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getPartSize()J

    move-result-wide v0

    .line 393
    .local v0, "partSize":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkPartSize] - mFileLength : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkPartSize] - partSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 395
    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    div-long/2addr v2, v0

    .line 396
    .local v2, "partNumber":J
    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    rem-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x1

    if-eqz v4, :cond_0

    .line 397
    add-long/2addr v2, v8

    .line 399
    :cond_0
    const/16 v4, 0x1388

    .line 400
    .local v4, "MAX_PART_NUM":I
    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 401
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    goto :goto_1

    .line 402
    :cond_1
    int-to-long v10, v4

    cmp-long v5, v2, v10

    if-lez v5, :cond_3

    .line 403
    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    add-int/lit8 v5, v4, -0x1

    int-to-long v12, v5

    div-long/2addr v10, v12

    .line 404
    .end local v0    # "partSize":J
    .local v10, "partSize":J
    invoke-virtual {p0, v10, v11}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->ceilPartSize(J)J

    move-result-wide v0

    .line 405
    .end local v10    # "partSize":J
    .restart local v0    # "partSize":J
    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    div-long/2addr v10, v0

    .line 406
    .end local v2    # "partNumber":J
    .local v10, "partNumber":J
    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    rem-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v8, v6

    :goto_0
    add-long v2, v10, v8

    .line 408
    .end local v10    # "partNumber":J
    .restart local v2    # "partNumber":J
    :cond_3
    :goto_1
    const/4 v5, 0x0

    long-to-int v8, v0

    aput v8, p1, v5

    .line 409
    long-to-int v5, v2

    const/4 v8, 0x1

    aput v5, p1, v8

    .line 410
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    long-to-int v8, v0

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setPartSize(J)V

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkPartSize] - partNumber : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkPartSize] - partSize : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 415
    iget-wide v8, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    rem-long/2addr v8, v0

    .line 416
    .local v8, "lastPartSize":J
    cmp-long v5, v8, v6

    if-nez v5, :cond_4

    move-wide v5, v0

    goto :goto_2

    :cond_4
    move-wide v5, v8

    :goto_2
    iput-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLastPartSize:J

    .line 417
    return-void
.end method

.method protected checkWaitCondition(I)Z
    .locals 1
    .param p1, "partNum"    # I

    .line 372
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 373
    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "completeResult":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 309
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;-><init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 323
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 324
    .local v1, "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackVars(Ljava/util/Map;)V

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 331
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    .line 332
    .local v2, "metadata":Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 333
    .local v4, "key":Ljava/lang/String;
    const-string v5, "x-oss-storage-class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 334
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 340
    .end local v2    # "metadata":Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 341
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 343
    .end local v1    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    :cond_5
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 344
    return-object v0
.end method

.method protected abstract doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected abstract initMultipartUploadId()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation
.end method

.method protected notifyMultipartThread()V
    .locals 1

    .line 382
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I

    .line 384
    return-void
.end method

.method protected onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V
    .locals 7
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;JJ)V"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    .local p1, "request":Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;, "TRequest;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    .line 435
    :cond_0
    return-void
.end method

.method protected preUploadPart(III)V
    .locals 0
    .param p1, "readIndex"    # I
    .param p2, "byteCount"    # I
    .param p3, "partNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    return-void
.end method

.method protected abstract processException(Ljava/lang/Exception;)V
.end method

.method protected releasePool()V
    .locals 1

    .line 348
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 350
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 352
    :cond_0
    return-void
.end method

.method protected uploadPart(III)V
    .locals 19
    .param p1, "readIndex"    # I
    .param p2, "byteCount"    # I
    .param p3, "partNumber"    # I

    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 218
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    move-object v3, v0

    .line 221
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 284
    if-eqz v1, :cond_0

    .line 285
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 288
    :cond_1
    if-eqz v2, :cond_2

    .line 289
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 290
    :goto_1
    nop

    .line 291
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 292
    :cond_2
    :goto_2
    nop

    .line 223
    :goto_3
    return-void

    .line 226
    :cond_3
    :try_start_2
    iget-object v4, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 227
    :try_start_3
    iget v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    .line 228
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 230
    :try_start_4
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->preUploadPart(III)V

    .line 232
    new-array v0, v9, [B

    move-object v10, v0

    .line 233
    .local v10, "partContent":[B
    int-to-long v11, v8

    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getPartSize()J

    move-result-wide v13

    mul-long/2addr v11, v13

    .line 234
    .local v11, "skip":J
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadUri:Landroid/net/Uri;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 236
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 237
    invoke-virtual {v3, v11, v12}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 238
    invoke-virtual {v3, v10, v4, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    goto :goto_4

    .line 240
    :cond_4
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    const-string v13, "r"

    invoke-direct {v0, v6, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 242
    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 243
    invoke-virtual {v1, v10, v4, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 246
    :goto_4
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v13, "raf":Ljava/io/RandomAccessFile;
    .local v14, "inputStream":Ljava/io/InputStream;
    .local v15, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    iget-object v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 247
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadId:Ljava/lang/String;

    add-int/lit8 v4, v8, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v0

    .line 248
    .local v6, "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    invoke-virtual {v6, v10}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    .line 249
    invoke-static {v10}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    .line 250
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 251
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, v6}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v0

    move-object v3, v0

    .line 253
    .local v3, "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    iget-object v4, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 254
    :try_start_6
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v1

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 255
    .local v0, "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    .line 256
    iget-boolean v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_5

    .line 257
    :try_start_7
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 278
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v6

    goto/16 :goto_a

    .line 260
    .restart local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    :cond_5
    :goto_5
    :try_start_8
    iget-object v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-wide v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v16, v6

    int-to-long v5, v9

    .end local v6    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .local v16, "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    add-long/2addr v1, v5

    :try_start_9
    iput-wide v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 263
    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V

    .line 265
    iget-object v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_7

    .line 266
    :try_start_a
    iget-object v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    iget v5, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I

    sub-int/2addr v2, v5

    if-eq v1, v2, :cond_6

    .line 278
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_6

    .line 267
    .restart local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    :cond_6
    new-instance v1, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string v2, "multipart cancel"

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "e":Lcom/alibaba/sdk/android/oss/TaskCancelException;
    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v2, v5, v1, v6}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 278
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .end local v1    # "e":Lcom/alibaba/sdk/android/oss/TaskCancelException;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_a

    .line 272
    .restart local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    :cond_7
    :try_start_b
    iget-object v1, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    sub-int v2, p3, v2

    if-ne v1, v2, :cond_8

    .line 273
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->notifyMultipartThread()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 275
    :cond_8
    :try_start_d
    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v5, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    iget-wide v8, v7, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v1, v7

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide v3, v5

    .end local v3    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .local v17, "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    move-wide v5, v8

    :try_start_e
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V

    .line 278
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    :goto_6
    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 284
    .end local v10    # "partContent":[B
    .end local v11    # "skip":J
    .end local v16    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .end local v17    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    if-eqz v13, :cond_9

    .line 285
    :try_start_f
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    .line 290
    :catch_1
    move-exception v0

    goto :goto_8

    .line 286
    :cond_9
    :goto_7
    if-eqz v15, :cond_a

    .line 287
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 288
    :cond_a
    if-eqz v14, :cond_b

    .line 289
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_9

    .line 290
    :goto_8
    nop

    .line 291
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 292
    :cond_b
    :goto_9
    goto :goto_10

    .line 278
    .restart local v3    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .restart local v10    # "partContent":[B
    .restart local v11    # "skip":J
    .restart local v16    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .restart local v17    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    goto :goto_a

    .end local v16    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .end local v17    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .restart local v3    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .restart local v6    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v6

    .end local v3    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .end local v6    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .restart local v16    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .restart local v17    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    :goto_a
    :try_start_10
    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_4
    move-exception v0

    goto :goto_a

    .line 283
    .end local v10    # "partContent":[B
    .end local v11    # "skip":J
    .end local v16    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .end local v17    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v2, v14

    move-object v3, v15

    goto :goto_11

    .line 280
    :catch_2
    move-exception v0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_b

    .line 228
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 283
    :catchall_7
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    goto :goto_11

    .line 280
    :catch_3
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_14
    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->processException(Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_c

    .line 285
    :try_start_15
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_c

    .line 290
    :catch_4
    move-exception v0

    goto :goto_d

    .line 286
    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    .line 287
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 288
    :cond_d
    if-eqz v2, :cond_e

    .line 289
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_e

    .line 290
    :goto_d
    nop

    .line 291
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 292
    :cond_e
    :goto_e
    nop

    .line 294
    :goto_f
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_10
    return-void

    .line 283
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_11
    nop

    .line 284
    if-eqz v13, :cond_f

    .line 285
    :try_start_16
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_12

    .line 290
    :catch_5
    move-exception v0

    goto :goto_13

    .line 286
    :cond_f
    :goto_12
    if-eqz v3, :cond_10

    .line 287
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 288
    :cond_10
    if-eqz v2, :cond_11

    .line 289
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    goto :goto_14

    .line 290
    :goto_13
    nop

    .line 291
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_15

    .line 292
    :cond_11
    :goto_14
    nop

    .line 293
    :goto_15
    throw v1
.end method

.method protected uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V
    .locals 0
    .param p1, "partETag"    # Lcom/alibaba/sdk/android/oss/model/PartETag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;, "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<TRequest;TResult;>;"
    return-void
.end method
