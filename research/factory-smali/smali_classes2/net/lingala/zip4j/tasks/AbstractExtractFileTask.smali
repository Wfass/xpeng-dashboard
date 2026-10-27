.class public abstract Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p3, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 31
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 32
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 33
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    .line 34
    return-void
.end method

.method private checkOutputDirectoryStructure(Ljava/io/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 155
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    return-void
.end method

.method private createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 6
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputFile"    # Ljava/io/File;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 109
    .local v0, "symLinkPath":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not create parent directories"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 115
    .local v2, "linkTarget":Ljava/nio/file/Path;
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v2, v1}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "linkTarget":Ljava/nio/file/Path;
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "error":Ljava/lang/NoSuchMethodError;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 121
    .end local v1    # "error":Ljava/lang/NoSuchMethodError;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 119
    .restart local v1    # "error":Ljava/lang/NoSuchMethodError;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 117
    :catch_1
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_2
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :goto_3
    throw v4
.end method

.method private determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;

    .line 161
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "outputFileName":Ljava/lang/String;
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    move-object v0, p3

    .line 165
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .line 77
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v0

    .line 79
    .local v0, "externalFileAttributes":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    return v1

    .line 80
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 126
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    .line 128
    .local v1, "readLength":I
    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 132
    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 133
    return-object v0

    .line 129
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not read complete entry"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 6
    .param p1, "inputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 91
    :goto_0
    :try_start_1
    invoke-virtual {p1, p4}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "readLength":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    int-to-long v4, v3

    invoke-virtual {p3, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 94
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyIfTaskIsCancelled()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    move v0, v3

    .line 101
    .end local v3    # "readLength":I
    .local v0, "readLength":I
    nop

    .line 100
    nop

    .line 102
    return-void

    .line 96
    .local v0, "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 100
    :cond_2
    throw v0
.end method

.method private verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p1, p2, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;Z)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    .line 144
    .local v0, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "File header and local file header mismatch"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read corresponding local file header for file header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected extractFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 6
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p6, "readBuff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    .line 40
    .local v0, "isSymbolicLink":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/UnzipParameters;->isExtractSymbolicLinks()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    return-void

    .line 44
    :cond_0
    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 48
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "outputCanonicalPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 58
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 60
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_3
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    invoke-direct {p0, p1, p2, v1, p5}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->checkOutputDirectoryStructure(Ljava/io/File;)V

    .line 70
    invoke-direct {p0, p1, v1, p5, p6}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V

    .line 73
    :cond_5
    :goto_0
    invoke-static {p2, v1}, Lnet/lingala/zip4j/util/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    .line 74
    return-void

    .line 54
    :cond_6
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal file name that breaks out of the target directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 170
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .line 174
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method
