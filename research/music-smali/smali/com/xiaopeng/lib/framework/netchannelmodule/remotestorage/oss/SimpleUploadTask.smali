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

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    return-void
.end method

.method private closeFileStream(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetChannel-BaseOssTask-SimpleUploadTask"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x201

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method

.method protected executeUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->accessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->acessKeySecret()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->securityToken()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

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

    return-void
.end method

.method protected upload2OSSByNormal(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 4

    .line 90
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
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

    return-void
.end method

.method protected upload2OssByPartition(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "uploadId"

    const-string v3, "uploadPath"

    const-string v4, "localSize"

    const-string v5, "localPath"

    const-string v6, "partition"

    const-string v7, "method"

    const-string v8, "pack"

    const-string v9, "P00013"

    .line 160
    new-instance v10, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-interface {v0, v10}, Lcom/alibaba/sdk/android/oss/OSS;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object v10

    .line 165
    invoke-virtual {v10}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 171
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    iget-object v15, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v13, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 172
    :try_start_2
    iget-wide v11, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 175
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v16, 0x1

    move-object/from16 v18, v2

    move/from16 v2, v16

    const-wide/16 v16, 0x0

    :goto_0
    cmp-long v19, v16, v11

    if-gez v19, :cond_0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    sub-long v3, v11, v16

    move-wide/from16 v21, v11

    const-wide/32 v11, 0x500000

    .line 177
    :try_start_3
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 179
    invoke-static {v13, v3}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->readStreamAsBytesArray(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 180
    new-instance v11, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v10

    iget-object v10, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v11, v12, v10, v14, v2}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    invoke-virtual {v11, v4}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    .line 183
    invoke-interface {v0, v11}, Lcom/alibaba/sdk/android/oss/OSS;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v4

    .line 185
    new-instance v10, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v2, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v3, v3

    add-long v16, v16, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-wide/from16 v11, v21

    move-object/from16 v10, v23

    goto :goto_0

    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v10

    .line 189
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v14, v15}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 190
    iget-object v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 193
    :cond_1
    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/oss/OSS;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "multipartUploadWithServerCallback with location:"

    .line 197
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-direct {v1, v13}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->closeFileStream(Ljava/io/InputStream;)V

    .line 203
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 205
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "data_oss_success"

    .line 206
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 207
    invoke-interface {v2, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "B006"

    .line 208
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 209
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 210
    invoke-interface {v2, v7, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 211
    invoke-interface {v2, v5, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v4, v20

    :try_start_4
    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v10, v19

    .line 213
    :try_start_5
    invoke-interface {v2, v10, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 214
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v11, v18

    :try_start_6
    invoke-interface {v2, v11, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "requestId"

    .line 215
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getRequestId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 216
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 205
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v11, v18

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_2

    :cond_3
    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move-object/from16 v4, v20

    .line 219
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doSuccess()V

    .line 220
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    iget-wide v2, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move-object/from16 v4, v20

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v11, v2

    move-object v10, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v11, v2

    move-object v10, v3

    const/4 v13, 0x0

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v11, v2

    move-object v10, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 222
    :goto_2
    invoke-direct {v1, v13}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->closeFileStream(Ljava/io/InputStream;)V

    .line 224
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v2

    if-nez v2, :cond_4

    .line 225
    const-class v2, Lany;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 226
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    const-string v12, "data_oss_fail"

    .line 227
    invoke-interface {v3, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 228
    invoke-interface {v3, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    const-string v9, "B007"

    .line 229
    invoke-interface {v3, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 230
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 231
    invoke-interface {v3, v7, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 232
    invoke-interface {v3, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    iget-wide v5, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 234
    invoke-interface {v3, v10, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failReason"

    invoke-interface {v3, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 236
    invoke-interface {v3, v11, v14}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    .line 237
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v3

    .line 226
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    :cond_4
    const-string v2, "NetChannel-BaseOssTask-SimpleUploadTask"

    const-string v3, "upload error!"

    .line 240
    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v3, 0x401

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 242
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    :goto_3
    return-void
.end method
