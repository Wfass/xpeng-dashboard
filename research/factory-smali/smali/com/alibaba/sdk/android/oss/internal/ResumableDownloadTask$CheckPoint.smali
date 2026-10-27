.class Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
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
    name = "CheckPoint"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x758c753ef2010898L


# instance fields
.field public bucketName:Ljava/lang/String;

.field public downloadFile:Ljava/lang/String;

.field public downloadLength:J

.field public fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

.field public md5:I

.field public objectKey:Ljava/lang/String;

.field public parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private assign(Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;)V
    .locals 2
    .param p1, "dcp"    # Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;

    .line 624
    iget v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->md5:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->md5:I

    .line 625
    iget-object v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadFile:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->bucketName:Ljava/lang/String;

    .line 627
    iget-object v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->objectKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->objectKey:Ljava/lang/String;

    .line 628
    iget-object v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    .line 629
    iget-object v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    .line 630
    iget-wide v0, p1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J

    .line 631
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/lang/String;)V
    .locals 3
    .param p1, "cpFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->md5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "fileOut":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 561
    .local v1, "outStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 562
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 563
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    nop

    .line 566
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 568
    nop

    .line 569
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 572
    monitor-exit p0

    return-void

    .line 565
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 566
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 568
    :cond_0
    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 571
    :cond_1
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 556
    .end local v0    # "fileOut":Ljava/io/FileOutputStream;
    .end local v1    # "outStream":Ljava/io/ObjectOutputStream;
    .end local p1    # "cpFile":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    throw p1
.end method

.method public hashCode()I
    .locals 8

    .line 612
    const/16 v0, 0x1f

    .line 613
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 614
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->bucketName:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->bucketName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 615
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadFile:Ljava/lang/String;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 616
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->objectKey:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->objectKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    .line 617
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v1, v4

    .line 618
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->hashCode()I

    move-result v5

    :goto_4
    add-int/2addr v3, v5

    .line 619
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int/2addr v2, v3

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v2, v1

    .line 620
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public declared-synchronized isValid(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)Z
    .locals 7
    .param p1, "operation"    # Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    monitor-enter p0

    .line 589
    :try_start_0
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->md5:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 590
    monitor-exit p0

    return v2

    .line 593
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->bucketName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->objectKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->getFileStat(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    move-result-object v0

    .line 597
    .local v0, "fileStat":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-object v1, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-wide v3, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    iget-wide v5, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-object v1, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 599
    :cond_1
    monitor-exit p0

    return v2

    .line 602
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-wide v3, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    iget-wide v5, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->fileLength:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-object v1, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    iget-object v3, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->lastModified:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->fileStat:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;

    iget-object v1, v1, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;->etag:Ljava/lang/String;

    .line 603
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    goto :goto_0

    .line 607
    :cond_3
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 604
    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    .line 588
    .end local v0    # "fileStat":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$FileStat;
    .end local p1    # "operation":Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;)V
    .locals 3
    .param p1, "cpFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "fileIn":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 539
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 540
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 541
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;

    .line 542
    .local v2, "dcp":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    invoke-direct {p0, v2}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->assign(Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .end local v2    # "dcp":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    nop

    .line 545
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 547
    nop

    .line 548
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 545
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .line 535
    .end local v0    # "fileIn":Ljava/io/FileInputStream;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local p1    # "cpFile":Ljava/lang/String;
    :catchall_1
    move-exception p1

    goto :goto_1

    .line 547
    .restart local v0    # "fileIn":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local p1    # "cpFile":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 550
    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    .end local v0    # "fileIn":Ljava/io/FileInputStream;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local p1    # "cpFile":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    throw p1
.end method

.method public declared-synchronized update(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;

    iput-boolean p2, v0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->isCompleted:Z

    .line 581
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;

    iget-wide v2, v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$DownloadPart;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;->downloadLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 579
    .end local p1    # "index":I
    .end local p2    # "completed":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$CheckPoint;
    throw p1
.end method
