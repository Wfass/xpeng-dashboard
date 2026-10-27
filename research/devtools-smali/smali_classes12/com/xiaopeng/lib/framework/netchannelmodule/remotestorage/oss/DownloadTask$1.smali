.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->downloadFile(Lcom/alibaba/sdk/android/oss/OSS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 2

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clientException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " serviceException:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    nop

    .line 78
    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result p2

    goto :goto_0

    .line 81
    :cond_0
    const/16 p2, 0x501

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v1, p2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 82
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    .line 83
    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->onFailure(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V
    .locals 2

    .line 52
    nop

    .line 53
    const-string p1, ""

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    const/16 p2, 0x203

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v0, "NetChannel-DownloadTask"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :goto_0
    if-nez p2, :cond_0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Succeed to download file to :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-object p2, p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-wide v0, p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->doSuccess()V

    .line 67
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-wide v0, p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseSucceedWithSize(J)V

    goto :goto_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v1, p2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 72
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;->onSuccess(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V

    return-void
.end method
