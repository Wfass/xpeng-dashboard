.class public Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;
.super Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;
.source "ResumableUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlreadyUploadIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCRC64RecordFile:Ljava/io/File;

.field private mRecordFile:Ljava/io/File;

.field private mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .param p3, "context"    # Lcom/alibaba/sdk/android/oss/network/ExecutionContext;
    .param p4, "apiOperation"    # Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            ")V"
        }
    .end annotation

    .line 57
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->instance(Landroid/content/Context;)Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    .line 59
    return-void
.end method


# virtual methods
.method protected abortThisUpload()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 337
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v0, "abort":Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    .line 340
    .end local v0    # "abort":Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    :cond_0
    return-void
.end method

.method protected checkException()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->abortThisUpload()V

    .line 302
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    .line 309
    .local v2, "eTag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getCRC64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v2    # "eTag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x0

    .line 313
    .local v1, "oot":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    .line 315
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 318
    :cond_2
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 319
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v2    # "filePath":Ljava/lang/String;
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 324
    :goto_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    .line 323
    :goto_2
    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 326
    :cond_3
    throw v2

    .line 330
    .end local v0    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v1    # "oot":Ljava/io/ObjectOutputStream;
    :cond_4
    :goto_3
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkException()V

    .line 331
    return-void
.end method

.method protected bridge synthetic doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object v0

    return-object v0
.end method

.method protected doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 217
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    .line 218
    .local v0, "tempUploadedLength":J
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkCancel()V

    .line 221
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartAttr:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 222
    .local v2, "readByte":I
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartAttr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 224
    .local v4, "partNumber":I
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 225
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 235
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    .line 237
    .local v5, "revertUploadedLength":J
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 238
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 241
    :cond_0
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v7, :cond_1

    .line 242
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v11, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    move-wide v9, v5

    invoke-interface/range {v7 .. v12}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    .line 245
    :cond_1
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->removeKey(Ljava/lang/String;)V

    .end local v5    # "revertUploadedLength":J
    goto :goto_0

    .line 226
    :cond_2
    new-instance v3, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v5, "The uploading file is inconsistent with before"

    invoke-direct {v3, v5}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRunPartTaskCount:I

    .line 250
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 252
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 253
    goto :goto_2

    .line 256
    :cond_4
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v5, :cond_6

    .line 258
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_5

    .line 259
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    sub-long/2addr v5, v0

    long-to-int v2, v5

    .line 261
    :cond_5
    move v5, v2

    .line 262
    .local v5, "byteCount":I
    move v6, v3

    .line 263
    .local v6, "readIndex":I
    int-to-long v7, v5

    add-long/2addr v0, v7

    .line 264
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$1;

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;III)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 250
    .end local v5    # "byteCount":I
    .end local v6    # "readIndex":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkWaitCondition(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 274
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 276
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 279
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->checkException()V

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v3

    .line 282
    .local v3, "completeResult":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    const/4 v5, 0x0

    .line 283
    .local v5, "result":Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    if-eqz v3, :cond_9

    .line 284
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-direct {v6, v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    move-object v5, v6

    .line 286
    :cond_9
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v6, :cond_a

    .line 287
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 289
    :cond_a
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    if-eqz v6, :cond_b

    .line 290
    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 293
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->releasePool()V

    .line 294
    return-object v5
.end method

.method protected initMultipartUploadId()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 66
    .local v2, "recordCrc64":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_12

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, "fileMd5":Ljava/lang/String;
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[initUploadId] - mUploadFilePath : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 70
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadUri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v5, v0

    .line 72
    .local v5, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v4    # "fileMd5":Ljava/lang/String;
    .local v0, "fileMd5":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 78
    .end local v5    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_0
    goto :goto_0

    .line 74
    .end local v0    # "fileMd5":Ljava/lang/String;
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 77
    :cond_1
    throw v0

    .line 79
    .end local v5    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[initUploadId] - mUploadFilePath : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 80
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[initUploadId] - mRequest.getPartSize() : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 84
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCheckCRC64:Z

    if-eqz v5, :cond_3

    const-string v5, "-crc64"

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "recordFileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v6, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "recordPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    .line 89
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 95
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[initUploadId] - mUploadId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 97
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 98
    iget-boolean v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_5

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v7, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 101
    .local v8, "crc64Record":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 103
    .local v9, "fs":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 106
    .local v10, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 107
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 112
    :goto_2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 114
    goto :goto_4

    .line 111
    :goto_3
    nop

    .line 112
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 114
    throw v0

    .line 118
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "crc64Record":Ljava/io/File;
    .end local v9    # "fs":Ljava/io/FileInputStream;
    .end local v10    # "ois":Ljava/io/ObjectInputStream;
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 119
    .local v0, "isTruncated":Z
    const/4 v7, 0x0

    move v8, v0

    move v0, v7

    .local v0, "nextPartNumberMarker":I
    .local v8, "isTruncated":Z
    :goto_5
    move v9, v0

    .line 123
    .end local v0    # "nextPartNumberMarker":I
    .local v9, "nextPartNumberMarker":I
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    iget-object v10, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v10, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v10}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v11, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v10, v11, v12}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 124
    .local v10, "listParts":Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    if-lez v9, :cond_6

    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->setPartNumberMarker(Ljava/lang/Integer;)V

    .line 128
    :cond_6
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, v10, v3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    move-object v11, v0

    .line 130
    .local v11, "task":Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;, "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<Lcom/alibaba/sdk/android/oss/model/ListPartsResult;>;"
    :try_start_3
    invoke-virtual {v11}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    .line 131
    .local v0, "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated()Z

    move-result v12
    :try_end_3
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_3 .. :try_end_3} :catch_d

    move v8, v12

    .line 132
    :try_start_4
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getNextPartNumberMarker()I

    move-result v12
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_4 .. :try_end_4} :catch_b

    move v9, v12

    .line 133
    :try_start_5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v12

    .line 134
    .local v12, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    iget-object v13, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartAttr:[I

    aget v13, v13, v7

    .line 135
    .local v13, "partSize":I
    iget-object v14, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartAttr:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    .line 136
    .local v14, "partTotalNumber":I
    move/from16 v16, v7

    .local v16, "i":I
    :goto_6
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v15, v17

    if-ge v15, v7, :cond_d

    .line 137
    .end local v17    # "i":I
    .local v15, "i":I
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    .line 138
    .local v7, "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    new-instance v3, Lcom/alibaba/sdk/android/oss/model/PartETag;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v0
    :try_end_5
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_5 .. :try_end_5} :catch_9

    .end local v0    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .local v18, "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    move-object/from16 v19, v4

    :try_start_6
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "fileMd5":Ljava/lang/String;
    .local v19, "fileMd5":Ljava/lang/String;
    invoke-direct {v3, v0, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    move-object v0, v3

    .line 139
    .local v0, "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V
    :try_end_6
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_6 .. :try_end_6} :catch_7

    .line 141
    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V
    :try_end_7
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 181
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .end local v7    # "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    .end local v12    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    .end local v13    # "partSize":I
    .end local v14    # "partTotalNumber":I
    .end local v15    # "i":I
    .end local v18    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_b

    .line 174
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_c

    .line 146
    .restart local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .restart local v7    # "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    .restart local v12    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    .restart local v13    # "partSize":I
    .restart local v14    # "partTotalNumber":I
    .restart local v15    # "i":I
    .restart local v18    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    :cond_7
    :goto_7
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initUploadId] -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " part.getPartNumber() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initUploadId] -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " part.getSize() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v20, v5

    :try_start_9
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v4

    .end local v5    # "recordFileName":Ljava/lang/String;
    .local v20, "recordFileName":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v3

    if-ne v3, v14, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    .line 152
    .local v3, "isTotal":Z
    :goto_8
    if-eqz v3, :cond_a

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v4
    :try_end_9
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_9 .. :try_end_9} :catch_5

    move/from16 v21, v8

    move/from16 v22, v9

    :try_start_a
    iget-wide v8, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLastPartSize:J

    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .local v21, "isTruncated":Z
    .local v22, "nextPartNumberMarker":I
    cmp-long v4, v4, v8

    if-nez v4, :cond_9

    goto :goto_9

    .line 153
    :cond_9
    new-instance v4, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current part size "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " setting is inconsistent with PartSize : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " or lastPartSize : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLastPartSize:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .end local v3    # "isTotal":Z
    .end local v7    # "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    .end local v12    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    .end local v13    # "partSize":I
    .end local v14    # "partTotalNumber":I
    .end local v15    # "i":I
    .end local v18    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    :catch_3
    move-exception v0

    goto/16 :goto_b

    .line 174
    :catch_4
    move-exception v0

    goto/16 :goto_c

    .line 156
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .restart local v3    # "isTotal":Z
    .restart local v7    # "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    .restart local v12    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    .restart local v13    # "partSize":I
    .restart local v14    # "partTotalNumber":I
    .restart local v15    # "i":I
    .restart local v18    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    :cond_a
    move/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    :goto_9
    if-nez v3, :cond_c

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v4

    int-to-long v8, v13

    cmp-long v4, v4, v8

    if-nez v4, :cond_b

    goto :goto_a

    .line 157
    :cond_b
    new-instance v4, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current part size "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " setting is inconsistent with PartSize : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " or lastPartSize : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLastPartSize:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_c
    :goto_a
    iget-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-wide v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    .line 172
    iget-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_a .. :try_end_a} :catch_3

    .line 136
    .end local v0    # "partETag":Lcom/alibaba/sdk/android/oss/model/PartETag;
    .end local v3    # "isTotal":Z
    .end local v7    # "part":Lcom/alibaba/sdk/android/oss/model/PartSummary;
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v8, v21

    move/from16 v9, v22

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x1

    goto/16 :goto_6

    .line 181
    .end local v12    # "parts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartSummary;>;"
    .end local v13    # "partSize":I
    .end local v14    # "partTotalNumber":I
    .end local v16    # "i":I
    .end local v18    # "result":Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_5
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto/16 :goto_b

    .line 174
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_6
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto/16 :goto_c

    .line 181
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_7
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto :goto_b

    .line 174
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_8
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto :goto_c

    .line 184
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :cond_d
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto :goto_d

    .line 181
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_9
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto :goto_b

    .line 174
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_a
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    goto :goto_c

    .line 181
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_b
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    goto :goto_b

    .line 174
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    :catch_c
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    goto :goto_c

    .line 181
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v21    # "isTruncated":Z
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    :catch_d
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .line 182
    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .local v0, "e":Lcom/alibaba/sdk/android/oss/ClientException;
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    :goto_b
    const/4 v3, 0x0

    .line 183
    .end local v21    # "isTruncated":Z
    .local v3, "isTruncated":Z
    throw v0

    .line 174
    .end local v0    # "e":Lcom/alibaba/sdk/android/oss/ClientException;
    .end local v3    # "isTruncated":Z
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    .restart local v8    # "isTruncated":Z
    .restart local v9    # "nextPartNumberMarker":I
    :catch_e
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    move/from16 v22, v9

    .line 175
    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .end local v8    # "isTruncated":Z
    .end local v9    # "nextPartNumberMarker":I
    .local v0, "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    .restart local v21    # "isTruncated":Z
    .restart local v22    # "nextPartNumberMarker":I
    :goto_c
    const/4 v3, 0x0

    .line 176
    .end local v21    # "isTruncated":Z
    .restart local v3    # "isTruncated":Z
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x194

    if-ne v4, v5, :cond_f

    .line 177
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    .line 184
    .end local v0    # "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    nop

    .line 185
    move v8, v3

    .end local v3    # "isTruncated":Z
    .end local v22    # "nextPartNumberMarker":I
    .local v0, "nextPartNumberMarker":I
    .restart local v8    # "isTruncated":Z
    :goto_d
    move/from16 v0, v22

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    .line 186
    .end local v10    # "listParts":Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    .end local v11    # "task":Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;, "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<Lcom/alibaba/sdk/android/oss/model/ListPartsResult;>;"
    if-nez v8, :cond_e

    .end local v0    # "nextPartNumberMarker":I
    .end local v8    # "isTruncated":Z
    goto :goto_e

    .line 119
    .restart local v0    # "nextPartNumberMarker":I
    .restart local v8    # "isTruncated":Z
    :cond_e
    move-object/from16 v4, v19

    move-object/from16 v5, v20

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 179
    .end local v8    # "isTruncated":Z
    .local v0, "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    .restart local v3    # "isTruncated":Z
    .restart local v10    # "listParts":Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    .restart local v11    # "task":Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;, "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<Lcom/alibaba/sdk/android/oss/model/ListPartsResult;>;"
    .restart local v22    # "nextPartNumberMarker":I
    :cond_f
    throw v0

    .line 190
    .end local v0    # "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    .end local v3    # "isTruncated":Z
    .end local v10    # "listParts":Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;
    .end local v11    # "task":Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;, "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<Lcom/alibaba/sdk/android/oss/model/ListPartsResult;>;"
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    .end local v22    # "nextPartNumberMarker":I
    .restart local v4    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "recordFileName":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "fileMd5":Ljava/lang/String;
    .end local v5    # "recordFileName":Ljava/lang/String;
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    :goto_e
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_11

    .end local v6    # "recordPath":Ljava/lang/String;
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    goto :goto_f

    .line 191
    .restart local v6    # "recordPath":Ljava/lang/String;
    .restart local v19    # "fileMd5":Ljava/lang/String;
    .restart local v20    # "recordFileName":Ljava/lang/String;
    :cond_11
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create file at path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nPlease make sure the directory exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    .end local v6    # "recordPath":Ljava/lang/String;
    .end local v19    # "fileMd5":Ljava/lang/String;
    .end local v20    # "recordFileName":Ljava/lang/String;
    :cond_12
    :goto_f
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v3, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 198
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 200
    .local v0, "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    iget-object v3, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    .line 202
    .local v3, "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    .line 204
    iget-object v4, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v4, :cond_13

    .line 205
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 206
    .local v4, "bw":Ljava/io/BufferedWriter;
    iget-object v5, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 211
    .end local v0    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .end local v3    # "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    :cond_13
    iget-object v0, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iget-object v3, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setUploadId(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method protected processException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 344
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartExceptionCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartExceptionCount:I

    .line 346
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadException:Ljava/lang/Exception;

    .line 347
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 348
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-boolean v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mIsCancel:Z

    if-nez v1, :cond_0

    .line 350
    iput-boolean v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mIsCancel:Z

    .line 351
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRunPartTaskCount:I

    iget v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mPartExceptionCount:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->notifyMultipartThread()V

    .line 357
    :cond_1
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V
    .locals 9
    .param p1, "partETag"    # Lcom/alibaba/sdk/android/oss/model/PartETag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->mFileLength:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V

    .line 368
    :cond_0
    return-void
.end method
