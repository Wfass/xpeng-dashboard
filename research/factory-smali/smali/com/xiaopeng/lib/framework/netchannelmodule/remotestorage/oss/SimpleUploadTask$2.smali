.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;
.super Ljava/lang/Object;
.source "SimpleUploadTask.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->upload2OSSByNormal(Lcom/alibaba/sdk/android/oss/OSS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 6
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .param p2, "clientException"    # Lcom/alibaba/sdk/android/oss/ClientException;
    .param p3, "serviceException"    # Lcom/alibaba/sdk/android/oss/ServiceException;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " serviceException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "failReason":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-class v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 134
    .local v1, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "data_oss_fail"

    .line 135
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "P00013"

    .line 136
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "B007"

    .line 137
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "pack"

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "method"

    const-string v4, "normal"

    .line 139
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "localPath"

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v4, v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 140
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "localSize"

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-wide v4, v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "uploadPath"

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v4, v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 142
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "failReason"

    .line 143
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 134
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 146
    .end local v1    # "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :cond_0
    const-wide/16 v1, 0x0

    if-eqz p2, :cond_1

    .line 147
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    new-instance v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v5, 0x401

    invoke-direct {v4, v5, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    goto :goto_0

    .line 149
    :cond_1
    if-eqz p3, :cond_2

    .line 150
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v3

    .line 151
    .local v3, "code":I
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    new-instance v5, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v5, v3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v4

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    .line 154
    .end local v3    # "code":I
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 5
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
    .param p2, "result"    # Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    .line 105
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 107
    .local v0, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "data_oss_success"

    .line 108
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "P00013"

    .line 109
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "B006"

    .line 110
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "pack"

    .line 111
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "method"

    const-string v3, "normal"

    .line 112
    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "localPath"

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFilePath:Ljava/lang/String;

    .line 113
    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "localSize"

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-wide v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    const-string v2, "uploadPath"

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 115
    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 118
    .end local v0    # "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->doSuccess()V

    .line 119
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-wide v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V

    .line 120
    return-void
.end method
