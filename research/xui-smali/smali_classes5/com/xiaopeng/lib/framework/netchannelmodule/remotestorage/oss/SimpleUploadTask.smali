.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
.source "SimpleUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$FutureTaskCallback;
    }
.end annotation


# static fields
.field private static final EACH_PARTITION_SIZE:I = 0x500000

.field private static final TAG:Ljava/lang/String; = "NetChannel-BaseOssTask-SimpleUploadTask"


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 0
    .param p1, "bucket"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    .line 47
    return-void
.end method

.method private closeFileStream(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;

    .line 247
    if-eqz p1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetChannel-BaseOssTask-SimpleUploadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 62
    return-object p0

    .line 59
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v2, 0x201

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v1
.end method

.method protected executeUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 3
    .param p1, "token"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->accessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->acessKeySecret()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->securityToken()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object v0

    .line 69
    .local v0, "oss":Lcom/alibaba/sdk/android/oss/OSS;
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public performRealTask()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$FutureTaskCallback;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    .line 52
    return-void
.end method

.method protected upload2OSSByNormal(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 4
    .param p1, "oss"    # Lcom/alibaba/sdk/android/oss/OSS;

    .line 90
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "putObjectRequest":Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 95
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    .line 156
    return-void
.end method

.method protected upload2OssByPartition(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 23
    .param p1, "oss"    # Lcom/alibaba/sdk/android/oss/OSS;

    move-object/from16 v1, p0

    .line 159
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 160
    .local v3, "uploadId":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 162
    .local v4, "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    const/4 v0, 0x0

    move-object v5, v0

    .line 164
    .local v5, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v2, v4}, Lcom/alibaba/sdk/android/oss/OSS;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object v0

    .line 165
    .local v0, "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v3, v6

    .line 167
    const-wide/32 v6, 0x500000

    .line 169
    .local v6, "partSize":J
    const/4 v8, 0x1

    .line 171
    .local v8, "currentIndex":I
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 172
    iget-wide v9, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 173
    .local v9, "fileLength":J
    const-wide/16 v11, 0x0

    .line 175
    .local v11, "uploadedLength":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 176
    .local v13, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartETag;>;"
    :goto_0
    cmp-long v14, v11, v9

    if-gez v14, :cond_0

    .line 177
    sub-long v14, v9, v11

    :try_start_2
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    .line 179
    .local v14, "partLength":I
    invoke-static {v5, v14}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->readStreamAsBytesArray(Ljava/io/InputStream;I)[B

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 180
    .local v15, "partData":[B
    move-object/from16 v16, v4

    :try_start_3
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    .end local v4    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .local v16, "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    move-wide/from16 v17, v6

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "partSize":J
    .local v17, "partSize":J
    iget-object v7, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v3, v8}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    .local v4, "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    invoke-virtual {v4, v15}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    .line 183
    invoke-interface {v2, v4}, Lcom/alibaba/sdk/android/oss/OSS;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v6

    .line 185
    .local v6, "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    new-instance v7, Lcom/alibaba/sdk/android/oss/model/PartETag;

    move-object/from16 v19, v4

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .local v19, "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    invoke-direct {v7, v8, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    move-object/from16 v20, v6

    int-to-long v6, v14

    .end local v6    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .local v20, "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    add-long/2addr v11, v6

    .line 187
    add-int/lit8 v8, v8, 0x1

    .line 188
    .end local v14    # "partLength":I
    .end local v15    # "partData":[B
    .end local v19    # "uploadPart":Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;
    .end local v20    # "uploadPartResult":Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    nop

    .line 175
    move-object/from16 v4, v16

    move-wide/from16 v6, v17

    goto :goto_0

    .line 221
    .end local v0    # "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .end local v8    # "currentIndex":I
    .end local v9    # "fileLength":J
    .end local v11    # "uploadedLength":J
    .end local v13    # "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartETag;>;"
    .end local v17    # "partSize":J
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 189
    .end local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .restart local v0    # "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .local v4, "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .local v6, "partSize":J
    .restart local v8    # "currentIndex":I
    .restart local v9    # "fileLength":J
    .restart local v11    # "uploadedLength":J
    .restart local v13    # "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartETag;>;"
    :cond_0
    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    .end local v4    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .end local v6    # "partSize":J
    .restart local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .restart local v17    # "partSize":J
    :try_start_4
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v3, v13}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 190
    .local v4, "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    iget-object v6, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v6, :cond_1

    .line 191
    :try_start_5
    iget-object v6, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-virtual {v4, v6}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :cond_1
    :try_start_6
    invoke-interface {v2, v4}, Lcom/alibaba/sdk/android/oss/OSS;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 196
    .local v6, "completeResult":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    if-eqz v6, :cond_2

    :try_start_7
    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 197
    const-string v7, "multipartUploadWithServerCallback with location:"

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 201
    :cond_2
    :try_start_8
    invoke-direct {v1, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->closeFileStream(Ljava/io/InputStream;)V

    .line 203
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v7

    if-nez v7, :cond_3

    .line 204
    const-class v7, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v7}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v7

    const-class v14, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v7, v14}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 205
    .local v7, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v14

    const-string v15, "data_oss_success"

    .line 206
    invoke-interface {v14, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v14

    const-string v15, "P00013"

    .line 207
    invoke-interface {v14, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v14

    const-string v15, "B006"

    .line 208
    invoke-interface {v14, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v14

    const-string v15, "pack"

    .line 209
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v15, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v14, "method"

    const-string v15, "partition"

    .line 210
    invoke-interface {v2, v14, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v14, "localPath"

    iget-object v15, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 211
    invoke-interface {v2, v14, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v14, "localSize"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    :try_start_9
    iget-wide v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 212
    .end local v3    # "uploadId":Ljava/lang/String;
    .end local v4    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    .local v21, "uploadId":Ljava/lang/String;
    .local v22, "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "uploadPath"

    iget-object v4, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 213
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "uploadId"

    .line 214
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "requestId"

    .line 215
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 216
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 205
    invoke-interface {v7, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .end local v7    # "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    goto :goto_1

    .line 219
    .end local v21    # "uploadId":Ljava/lang/String;
    .end local v22    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    .restart local v3    # "uploadId":Ljava/lang/String;
    .restart local v4    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v3    # "uploadId":Ljava/lang/String;
    .end local v4    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    .restart local v21    # "uploadId":Ljava/lang/String;
    .restart local v22    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doSuccess()V

    .line 220
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v2

    iget-wide v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 243
    .end local v6    # "completeResult":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .end local v8    # "currentIndex":I
    .end local v9    # "fileLength":J
    .end local v11    # "uploadedLength":J
    .end local v13    # "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/sdk/android/oss/model/PartETag;>;"
    .end local v17    # "partSize":J
    .end local v22    # "complete":Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;
    nop

    .line 244
    move-object/from16 v3, v21

    goto/16 :goto_3

    .line 221
    .end local v0    # "initResult":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    :catch_1
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_2

    .end local v21    # "uploadId":Ljava/lang/String;
    .restart local v3    # "uploadId":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v21, v3

    .end local v3    # "uploadId":Ljava/lang/String;
    .restart local v21    # "uploadId":Ljava/lang/String;
    goto :goto_2

    .end local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .end local v21    # "uploadId":Ljava/lang/String;
    .restart local v3    # "uploadId":Ljava/lang/String;
    .local v4, "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    :catch_3
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .end local v3    # "uploadId":Ljava/lang/String;
    .end local v4    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .restart local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .restart local v21    # "uploadId":Ljava/lang/String;
    goto :goto_2

    .end local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .end local v21    # "uploadId":Ljava/lang/String;
    .restart local v3    # "uploadId":Ljava/lang/String;
    .restart local v4    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 222
    .end local v4    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "init":Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;
    :goto_2
    invoke-direct {v1, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->closeFileStream(Ljava/io/InputStream;)V

    .line 224
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v2

    if-nez v2, :cond_4

    .line 225
    const-class v2, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 226
    .local v2, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "data_oss_fail"

    .line 227
    invoke-interface {v4, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "P00013"

    .line 228
    invoke-interface {v4, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "B007"

    .line 229
    invoke-interface {v4, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "pack"

    .line 230
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "method"

    const-string v7, "partition"

    .line 231
    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "localPath"

    iget-object v7, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 232
    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "localSize"

    iget-wide v7, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 233
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "uploadPath"

    iget-object v7, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 234
    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "failReason"

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v6, "uploadId"

    .line 236
    invoke-interface {v4, v6, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    .line 237
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v4

    .line 226
    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 240
    .end local v2    # "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :cond_4
    const-string v2, "NetChannel-BaseOssTask-SimpleUploadTask"

    const-string v4, "upload error!"

    invoke-static {v2, v4, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v4, 0x401

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 242
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
