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
    .locals 7

    .line 509
    nop

    .line 510
    nop

    .line 511
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->partNumber:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 512
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->isCompleted:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    .line 513
    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->end:J

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->end:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 514
    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->start:J

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->start:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 515
    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->crc:J

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->crc:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    .line 516
    return v1
.end method
