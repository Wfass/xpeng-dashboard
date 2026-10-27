.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;
.super Ljava/lang/Object;
.source "ResumableUploadTask.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->upload2OssByResumable(Lcom/alibaba/sdk/android/oss/OSS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->onFailure(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-class v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 123
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "data_oss_fail"

    .line 124
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 125
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pack"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "method"

    const-string v4, "resumable"

    .line 126
    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFilePath:Ljava/lang/String;

    const-string v4, "localPath"

    .line 127
    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-wide v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFileSize:J

    .line 128
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "localSize"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v3, v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    const-string v4, "uploadPath"

    .line 129
    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    .line 130
    invoke-static {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uploadSize"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "failReason"

    .line 131
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "uploadId"

    invoke-interface {v2, v3, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    .line 123
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    new-instance p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 p3, 0x401

    invoke-direct {p2, p3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    .line 139
    invoke-static {p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide v0

    .line 138
    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 141
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result p1

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v1, p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 143
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-static {p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    .line 147
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Uploaded "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetChannel-ResumableUploadTask"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->cleanLogAsNeeded()V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->onSuccess(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;)V
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-ResumableUploadTask"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 99
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "data_oss_success"

    .line 100
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pack"

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "method"

    const-string v3, "resumable"

    .line 102
    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v2, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFilePath:Ljava/lang/String;

    const-string v3, "localPath"

    .line 103
    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-wide v2, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFileSize:J

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "localSize"

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v2, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    const-string v3, "uploadPath"

    .line 105
    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    .line 106
    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "uploadSize"

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "uploadId"

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->getRequestId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "requestId"

    invoke-interface {p1, v1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    .line 99
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->doSuccess()V

    .line 114
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-wide v0, p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFileSize:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V

    return-void
.end method
