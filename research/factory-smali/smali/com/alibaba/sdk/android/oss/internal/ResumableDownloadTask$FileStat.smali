.class Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;
.super Ljava/lang/Object;
.source "ResumableDownloadTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileStat"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36128574ef322d7bL


# instance fields
.field public etag:Ljava/lang/String;

.field public fileLength:J

.field public lastModified:Ljava/util/Date;

.field public md5:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public serverCRC:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileStat(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;
    .locals 5
    .param p0, "operation"    # Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 646
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .local v0, "request":Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    .line 649
    .local v1, "result":Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;-><init>()V

    .line 650
    .local v2, "fileStat":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    .line 651
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    .line 652
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    .line 653
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->serverCRC:Ljava/lang/Long;

    .line 654
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->requestId:Ljava/lang/String;

    .line 656
    return-object v2
.end method


# virtual methods
.method public hashCode()I
    .locals 8

    .line 661
    const/16 v0, 0x1f

    .line 662
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 663
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 664
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v1, v5

    .line 665
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 666
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
