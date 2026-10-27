.class Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;
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
    name = "DownloadPart"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30a7e351f878a9b6L


# instance fields
.field public crc:J

.field public end:J

.field public fileStart:J

.field public isCompleted:Z

.field public length:J

.field public partNumber:I

.field public start:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 9

    .line 509
    const/16 v0, 0x1f

    .line 510
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 511
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->partNumber:I

    add-int/2addr v3, v4

    .line 512
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-boolean v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->isCompleted:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v4, 0x4d5

    :goto_0
    add-int/2addr v1, v4

    .line 513
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->end:J

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->end:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 514
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->start:J

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->start:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 515
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->crc:J

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->crc:J

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 516
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
