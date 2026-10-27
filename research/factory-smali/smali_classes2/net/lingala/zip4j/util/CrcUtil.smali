.class public Lnet/lingala/zip4j/util/CrcUtil;
.super Ljava/lang/Object;
.source "CrcUtil.java"


# static fields
.field private static final BUF_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileCrc(Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .locals 8
    .param p0, "inputFile"    # Ljava/io/File;
    .param p1, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 40
    .local v0, "buff":[B
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 42
    .local v1, "crc32":Ljava/util/zip/CRC32;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readLen":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 49
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 51
    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-wide/16 v3, 0x0

    .line 57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 52
    return-wide v3

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 56
    return-wide v6

    .line 57
    .end local v5    # "readLen":I
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 42
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_0
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    throw v4

    .line 35
    .end local v0    # "buff":[B
    .end local v1    # "crc32":Ljava/util/zip/CRC32;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
