.class public Lcom/xiaopeng/lib/utils/Zip7zUtils;
.super Ljava/lang/Object;
.source "Zip7zUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zip7z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourcePath",
            "destPath"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 26
    :try_start_2
    invoke-static {p1, p0, v1}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1, p0, v1}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 31
    :goto_1
    :try_start_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    throw p1
.end method

.method private static zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcDirectory",
            "sevenZOutput",
            "currentPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 63
    array-length v0, p0

    if-lez v0, :cond_1

    .line 64
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v2, p1, p2}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "sevenZOutput",
            "currentPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 46
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p0, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 52
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    goto :goto_3

    :catch_3
    move-exception p0

    .line 50
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    .line 56
    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    :cond_1
    return-void

    .line 54
    :goto_4
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    .line 58
    :cond_2
    throw p0
.end method
