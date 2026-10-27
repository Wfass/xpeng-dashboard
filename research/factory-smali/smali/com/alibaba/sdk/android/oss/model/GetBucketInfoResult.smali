.class public Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "GetBucketInfoResult.java"


# instance fields
.field private bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket()Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    return-object v0
.end method

.method public setBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V
    .locals 0
    .param p1, "bucket"    # Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    .line 11
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 16
    const-string v0, "GetBucketInfoResult<%s>:\n bucket:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
