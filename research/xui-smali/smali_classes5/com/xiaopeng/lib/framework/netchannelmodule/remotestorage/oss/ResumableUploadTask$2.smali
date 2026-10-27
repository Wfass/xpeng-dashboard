.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;
.super Ljava/lang/Object;
.source "ResumableUploadTask.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


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
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;JJ)V
    .locals 3
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;J)J

    .line 88
    const-string v0, "NetChannel-ResumableUploadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 6

    .line 84
    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;->onProgress(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;JJ)V

    return-void
.end method
