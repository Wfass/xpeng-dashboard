.class public Lnet/lingala/zip4j/d/b;
.super Ljava/lang/Object;
.source "CrcUtil.java"


# direct methods
.method public static a(Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .locals 5
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
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 42
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->J(J)V

    .line 49
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->ub()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->apr:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 51
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->apt:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-wide/16 p0, 0x0

    .line 57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 52
    return-wide p0

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 56
    return-wide v0

    .line 57
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_0
    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    throw p1

    .line 35
    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
