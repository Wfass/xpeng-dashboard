.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
.source "AppendableTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$FutureTaskCallback;
    }
.end annotation


# static fields
.field private static STATUS_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "NetChannel-AppendableTask"


# instance fields
.field private mUploadContent:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->appendToOssObject(Lcom/alibaba/sdk/android/oss/OSS;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->executeAppendTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    return-void
.end method

.method private appendToOssObject(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "uploadId"

    const-string v3, "failReason"

    const-string v4, "data_oss_fail"

    const-string v5, "append error!"

    const-string v6, "NetChannel-AppendableTask"

    const-string v7, "uploadPath"

    const-string v8, "localSize"

    const-string v9, "append"

    const-string v10, "method"

    const-string v11, "pack"

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v12

    if-eq v0, v12, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Not allow to run in main thread."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->tryToGetExistingObjectLength(Lcom/alibaba/sdk/android/oss/OSS;)J

    move-result-wide v13

    .line 89
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->bucketRootName()Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v5

    :try_start_1
    iget-object v5, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    invoke-direct {v0, v15, v12, v5}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 90
    invoke-virtual {v0, v13, v14}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setPosition(J)V

    move-object/from16 v5, p1

    .line 91
    invoke-interface {v5, v0}, Lcom/alibaba/sdk/android/oss/OSS;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object v0

    .line 93
    sget v5, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->STATUS_OK:I

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getStatusCode()I

    move-result v12

    if-ne v5, v12, :cond_3

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    const-class v5, Lany;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v12, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v5, v12}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 102
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    const-string v13, "data_oss_success"

    .line 103
    invoke-interface {v12, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 104
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 105
    invoke-interface {v12, v10, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v13, v13

    .line 106
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v8, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 107
    invoke-interface {v12, v7, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    const-string v13, "requestId"

    .line 108
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v13, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v0

    .line 102
    invoke-interface {v5, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 112
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doSuccess()V

    .line 113
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    iget-object v5, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v5, v5

    int-to-long v12, v5

    invoke-virtual {v0, v12, v13}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V

    goto/16 :goto_2

    .line 115
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    const-class v5, Lany;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v12, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v5, v12}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 124
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 125
    invoke-interface {v12, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 126
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 127
    invoke-interface {v12, v10, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v13, v13

    .line 128
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v8, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 129
    invoke-interface {v12, v7, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 130
    invoke-interface {v12, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    const/4 v13, 0x0

    .line 131
    invoke-interface {v12, v2, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v12

    .line 132
    invoke-interface {v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v12

    .line 124
    invoke-interface {v5, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    :cond_4
    const/4 v5, 0x1

    .line 135
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v5, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v12, v16

    :try_start_2
    invoke-static {v6, v12, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-instance v5, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v13, 0x401

    invoke-direct {v5, v13, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v5

    const-wide/16 v13, 0x0

    invoke-virtual {v5, v0, v13, v14}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v12, v16

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v12, v5

    .line 141
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v5

    if-nez v5, :cond_5

    .line 142
    const-class v5, Lany;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v13, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v5, v13}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 143
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v13

    .line 144
    invoke-interface {v13, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    .line 145
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v11, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    .line 146
    invoke-interface {v4, v10, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mLocalFilePath:Ljava/lang/String;

    const-string v10, "localPath"

    .line 147
    invoke-interface {v4, v10, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v9, v9

    .line 148
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 149
    invoke-interface {v4, v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v3

    const/4 v4, 0x0

    .line 151
    invoke-interface {v3, v2, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 152
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v2

    .line 143
    invoke-interface {v5, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 155
    :cond_5
    invoke-static {v6, v12, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x401

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    :goto_2
    return-void
.end method

.method private executeAppendTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->accessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->acessKeySecret()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->securityToken()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tryToGetExistingObjectLength(Lcom/alibaba/sdk/android/oss/OSS;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 164
    :try_start_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->bucketRootName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {p1, v2}, Lcom/alibaba/sdk/android/oss/OSS;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p1

    .line 166
    sget v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->STATUS_OK:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getStatusCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public append([B)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    return-object p0

    .line 46
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw p1
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public performRealTask()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$FutureTaskCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    return-void
.end method
