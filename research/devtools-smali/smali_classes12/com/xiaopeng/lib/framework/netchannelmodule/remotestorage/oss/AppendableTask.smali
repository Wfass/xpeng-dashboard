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
.field private static STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetChannel-AppendableTask"


# instance fields
.field private mUploadContent:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0xc8

    sput v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->STATUS_OK:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    .line 37
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
    .locals 10

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not allow to run in main thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 87
    const-wide/16 v1, 0x0

    const/16 v3, 0x401

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->tryToGetExistingObjectLength(Lcom/alibaba/sdk/android/oss/OSS;)J

    move-result-wide v4

    .line 89
    new-instance v6, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->bucketRootName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 90
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setPosition(J)V

    .line 91
    invoke-interface {p1, v6}, Lcom/alibaba/sdk/android/oss/OSS;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object p1

    .line 93
    sget v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->STATUS_OK:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getStatusCode()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/c;->po()Z

    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    const-class v4, Lcom/xiaopeng/datalog/a;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 102
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "data_oss_success"

    .line 103
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "pack"

    .line 104
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "method"

    const-string v7, "append"

    .line 105
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "localSize"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v7, v7

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "uploadPath"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 107
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "requestId"

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v6, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    .line 102
    invoke-interface {v4, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doSuccess()V

    .line 113
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v4, v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V

    .line 114
    goto/16 :goto_1

    .line 115
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/c;->po()Z

    move-result v4

    .line 122
    if-nez v4, :cond_4

    .line 123
    const-class v4, Lcom/xiaopeng/datalog/a;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 124
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "data_oss_fail"

    .line 125
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "pack"

    .line 126
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "method"

    const-string v7, "append"

    .line 127
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "localSize"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v7, v7

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "uploadPath"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 129
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "failReason"

    .line 130
    invoke-interface {v5, v6, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "uploadId"

    .line 131
    invoke-interface {v5, v6, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    .line 132
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v5

    .line 124
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 135
    :cond_4
    const-string v4, "NetChannel-AppendableTask"

    const-string v5, "append error!"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-instance v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v4, v3, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    goto/16 :goto_2

    .line 140
    :catch_0
    move-exception p1

    .line 141
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v4

    if-nez v4, :cond_5

    .line 142
    const-class v4, Lcom/xiaopeng/datalog/a;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 143
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "data_oss_fail"

    .line 144
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "pack"

    .line 145
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "method"

    const-string v7, "append"

    .line 146
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "localPath"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mLocalFilePath:Ljava/lang/String;

    .line 147
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "localSize"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    array-length v7, v7

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "uploadPath"

    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 149
    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "failReason"

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v5

    const-string v6, "uploadId"

    .line 151
    invoke-interface {v5, v6, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v0

    .line 143
    invoke-interface {v4, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 155
    :cond_5
    const-string v0, "NetChannel-AppendableTask"

    const-string v4, "append error!"

    invoke-static {v0, v4, p1}, Lcom/xiaopeng/lib/utils/c;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    .line 159
    :goto_2
    return-void
.end method

.method private executeAppendTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 2
    .param p1    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

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

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method private tryToGetExistingObjectLength(Lcom/alibaba/sdk/android/oss/OSS;)J
    .locals 5

    .line 162
    nop

    .line 164
    const-wide/16 v0, 0x0

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

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    move-wide v0, v2

    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception p1

    .line 172
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public append([B)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 45
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    .line 50
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->mUploadContent:[B

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

    .line 42
    return-void
.end method
