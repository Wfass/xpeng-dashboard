.class public Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;
.super Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;
.source "SequenceUploadTask.java"

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

.field private mFirstPartSize:J

.field private mRecordFile:Ljava/io/File;

.field private mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V
    .locals 0
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

    .line 66
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    .line 67
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->instance(Landroid/content/Context;)Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    .line 68
    return-void
.end method


# virtual methods
.method protected abortThisUpload()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 400
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    .line 403
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

    .line 362
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->abortThisUpload()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    .line 372
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getCRC64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    goto :goto_0

    .line 374
    :cond_1
    const/4 v1, 0x0

    .line 376
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    .line 378
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 381
    :cond_2
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    nop

    .line 387
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    .line 386
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 383
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 386
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 383
    :catch_1
    move-exception v0

    .line 384
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    if-eqz v1, :cond_4

    .line 387
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    .line 386
    :goto_2
    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 389
    :cond_3
    throw v0

    .line 393
    :cond_4
    :goto_3
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkException()V

    .line 394
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

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

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

    .line 201
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->checkCancel()V

    .line 208
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartAttr:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 209
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartAttr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 211
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 212
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 216
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFirstPartSize:J

    int-to-long v7, v2

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 220
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    .line 222
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 226
    :cond_0
    move-wide v9, v5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v5, :cond_1

    .line 227
    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v11, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    invoke-interface/range {v7 .. v12}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    .line 230
    :cond_1
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->removeKey(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_2
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "The part size setting is inconsistent with before"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_3
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "The uploading file is inconsistent with before"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    :goto_0
    if-ge v3, v4, :cond_8

    .line 235
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 236
    goto :goto_1

    .line 240
    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_6

    .line 241
    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    sub-long/2addr v5, v0

    long-to-int v2, v5

    .line 243
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload part readByte : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 244
    nop

    .line 245
    nop

    .line 246
    int-to-long v5, v2

    add-long/2addr v0, v5

    .line 247
    invoke-virtual {p0, v3, v2, v4}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->uploadPart(III)V

    .line 249
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v5, :cond_7

    .line 250
    goto :goto_2

    .line 233
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->checkException()V

    .line 256
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    .line 258
    if-eqz v0, :cond_9

    .line 259
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 262
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 264
    :cond_a
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 267
    :cond_b
    return-object v1
.end method

.method protected initMultipartUploadId()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 73
    nop

    .line 75
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 76
    nop

    .line 77
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 86
    :cond_0
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 85
    :cond_1
    throw v1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 90
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v2, :cond_3

    const-string v2, "-crc64"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    .line 94
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sequence [initUploadId] - Found record file, uploadid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_5

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    goto :goto_3

    .line 112
    :catch_0
    move-exception v4

    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 112
    :catch_1
    move-exception v4

    move-object v0, v1

    .line 113
    :goto_2
    :try_start_3
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    nop

    .line 116
    :goto_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 118
    goto :goto_5

    .line 115
    :goto_4
    nop

    .line 116
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 118
    throw v0

    .line 122
    :cond_5
    move-object v0, v1

    .line 123
    :goto_5
    nop

    .line 126
    const/4 v2, 0x0

    move v3, v2

    :cond_6
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v6, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-lez v3, :cond_7

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->setPartNumberMarker(Ljava/lang/Integer;)V

    .line 131
    :cond_7
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v5, v4, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    .line 135
    :try_start_4
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    .line 136
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated()Z

    move-result v6

    .line 137
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getNextPartNumberMarker()I

    move-result v7
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :try_start_5
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v3

    .line 140
    move v5, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 141
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    .line 142
    new-instance v9, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v10

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 143
    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    .line 145
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 146
    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 147
    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    .line 151
    :cond_8
    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-wide v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    .line 153
    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    if-nez v5, :cond_9

    .line 155
    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFirstPartSize:J
    :try_end_5
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 168
    :cond_a
    goto :goto_8

    .line 158
    :catch_2
    move-exception v3

    goto :goto_7

    .line 165
    :catch_3
    move-exception v0

    .line 166
    nop

    .line 167
    throw v0

    .line 158
    :catch_4
    move-exception v5

    move v7, v3

    move-object v3, v5

    .line 159
    :goto_7
    nop

    .line 160
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-ne v5, v6, :cond_b

    .line 161
    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    .line 168
    nop

    .line 169
    move v6, v2

    :goto_8
    move v3, v7

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    .line 171
    if-nez v6, :cond_6

    goto :goto_9

    .line 163
    :cond_b
    throw v3

    .line 174
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    .line 175
    :cond_d
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create file at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nPlease make sure the directory exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 182
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 183
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isSequential:Z

    .line 184
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    .line 186
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_f

    .line 189
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 195
    :cond_f
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setUploadId(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected processException(Ljava/lang/Exception;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    .line 411
    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 412
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 413
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mIsCancel:Z

    if-nez p1, :cond_2

    .line 414
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mIsCancel:Z

    .line 417
    :cond_2
    return-void
.end method

.method public uploadPart(III)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move/from16 v8, p2

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 278
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    nop

    .line 349
    nop

    .line 351
    nop

    .line 355
    nop

    .line 279
    return-void

    .line 282
    :cond_0
    iget v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRunPartTaskCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRunPartTaskCount:I

    .line 284
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->preUploadPart(III)V

    .line 285
    int-to-long v4, v0

    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v9

    mul-long/2addr v4, v9

    .line 286
    new-array v2, v8, [B

    .line 288
    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    .line 289
    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 290
    :try_start_1
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    :try_start_2
    invoke-virtual {v10, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 292
    invoke-virtual {v10, v2, v9, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    move-object v9, v1

    move-object v11, v10

    move-object v10, v6

    goto :goto_2

    .line 346
    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v11, v10

    move-object v1, v0

    move-object v10, v6

    goto/16 :goto_c

    .line 343
    :catch_0
    move-exception v0

    move-object v11, v10

    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    move-object v12, v1

    move-object v11, v10

    goto :goto_1

    .line 346
    :catchall_1
    move-exception v0

    move-object v9, v1

    move-object v11, v9

    move-object v10, v6

    goto/16 :goto_4

    .line 343
    :catch_2
    move-exception v0

    move-object v11, v1

    :goto_0
    move-object v10, v6

    goto/16 :goto_5

    .line 325
    :catch_3
    move-exception v0

    move-object v11, v1

    move-object v12, v11

    :goto_1
    move-object v10, v6

    goto/16 :goto_9

    .line 294
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v10, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadFile:Ljava/io/File;

    const-string v11, "r"

    invoke-direct {v6, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 296
    :try_start_4
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 297
    invoke-virtual {v6, v2, v9, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 300
    move-object v10, v1

    move-object v11, v10

    move-object v9, v6

    :goto_2
    :try_start_5
    new-instance v12, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    iget-object v4, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    .line 301
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-direct {v12, v4, v5, v6, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 302
    :try_start_6
    invoke-virtual {v12, v2}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    .line 303
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    .line 304
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 305
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 308
    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    .line 309
    iget-boolean v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v2, :cond_2

    .line 310
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    .line 313
    :cond_2
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-wide v13, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    add-long/2addr v13, v4

    iput-wide v13, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    .line 316
    invoke-virtual {v7, v1}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V

    .line 318
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 323
    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v3, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v5, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V
    :try_end_6
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 347
    if-eqz v9, :cond_3

    .line 348
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 349
    :cond_3
    if-eqz v10, :cond_4

    .line 350
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_4
    if-eqz v11, :cond_8

    .line 352
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_8

    .line 320
    :cond_5
    :try_start_8
    new-instance v0, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string v1, "sequence upload task cancel"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v1
    :try_end_8
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 325
    :catch_4
    move-exception v0

    goto :goto_3

    .line 346
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 343
    :catch_5
    move-exception v0

    move-object v1, v9

    goto :goto_5

    .line 325
    :catch_6
    move-exception v0

    move-object v12, v1

    :goto_3
    move-object v1, v9

    goto :goto_9

    .line 346
    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v9, v6

    goto :goto_4

    .line 343
    :catch_7
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v1, v6

    goto :goto_5

    .line 325
    :catch_8
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v12, v11

    move-object v1, v6

    goto :goto_9

    .line 346
    :catchall_4
    move-exception v0

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    :goto_4
    move-object v1, v0

    goto/16 :goto_c

    .line 343
    :catch_9
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    .line 344
    :goto_5
    :try_start_9
    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->processException(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 347
    if-eqz v1, :cond_6

    .line 348
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6

    .line 353
    :catch_a
    move-exception v0

    goto :goto_7

    .line 349
    :cond_6
    :goto_6
    if-eqz v10, :cond_7

    .line 350
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_7
    if-eqz v11, :cond_8

    .line 352
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_8

    .line 353
    :goto_7
    nop

    .line 354
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 356
    goto :goto_b

    .line 355
    :cond_8
    :goto_8
    goto :goto_b

    .line 325
    :catch_b
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v12, v11

    .line 327
    :goto_9
    :try_start_b
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x199

    if-eq v2, v3, :cond_9

    .line 328
    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->processException(Ljava/lang/Exception;)V

    goto :goto_a

    .line 330
    :cond_9
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getPartEtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 331
    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    .line 332
    iget-boolean v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_a

    .line 333
    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v0

    .line 334
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 335
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v4, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;-><init>()V

    invoke-direct {v0, v3, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 337
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    .line 340
    :cond_a
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-wide v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 347
    :goto_a
    if-eqz v1, :cond_b

    .line 348
    :try_start_c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 349
    :cond_b
    if-eqz v10, :cond_c

    .line 350
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_c
    if-eqz v11, :cond_8

    .line 352
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_8

    .line 357
    :goto_b
    return-void

    .line 346
    :catchall_5
    move-exception v0

    move-object v9, v1

    goto/16 :goto_4

    .line 347
    :goto_c
    if-eqz v9, :cond_d

    .line 348
    :try_start_d
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_d

    .line 353
    :catch_c
    move-exception v0

    goto :goto_e

    .line 349
    :cond_d
    :goto_d
    if-eqz v10, :cond_e

    .line 350
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_e
    if-eqz v11, :cond_f

    .line 352
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_f

    .line 353
    :goto_e
    nop

    .line 354
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 355
    :cond_f
    :goto_f
    nop

    .line 356
    :goto_10
    throw v1
.end method

.method protected uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V

    .line 427
    :cond_0
    return-void
.end method
