.class public Lnet/lingala/zip4j/tasks/AddStreamToZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;
.source "AddStreamToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<",
        "Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "password"    # [C
    .param p3, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 26
    return-void
.end method

.method private removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 1
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .param p3, "fileNameInZip"    # Ljava/lang/String;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 85
    invoke-static {p1, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 86
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0, p4, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFile(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 9
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    iget-object v1, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 46
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setWriteExtendedLocalFileHeader(Z)V

    .line 48
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    .line 53
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 54
    .local v0, "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {p0, v0, v2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->initializeOutputStream(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    .local v2, "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    nop

    .line 56
    :try_start_1
    iget-object v3, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v3

    new-array v3, v3, [B

    .line 59
    .local v3, "readBuff":[B
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v4

    .line 60
    .local v4, "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    invoke-virtual {v2, v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 62
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    :goto_0
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "readLen":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 65
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 69
    .end local v6    # "readLen":I
    :cond_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    .line 71
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    invoke-virtual {p0, v5, v0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v3    # "readBuff":[B
    .end local v4    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    .end local v5    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    .line 75
    .end local v0    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    return-void

    .line 74
    .restart local v0    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v2    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    .line 53
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V

    :cond_5
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v2    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :catchall_2
    move-exception v2

    goto :goto_3

    .line 53
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 74
    :goto_3
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    :goto_4
    throw v2

    .line 35
    .end local v0    # "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :cond_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip has to be set in zipParameters when adding stream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
