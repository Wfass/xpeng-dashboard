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
    .locals 4
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "sevenZOutput":Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "outputFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "src":Ljava/io/File;
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {v3, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "outputFile":Ljava/io/File;
    .end local v2    # "src":Ljava/io/File;
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    nop

    .line 35
    return-void

    .line 33
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    throw v1
.end method

.method private static zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    .locals 6
    .param p0, "srcDirectory"    # Ljava/io/File;
    .param p1, "sevenZOutput"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p2, "currentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "listFiles":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 64
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zDirectory(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v3, p1, p2}, Lcom/xiaopeng/lib/utils/Zip7zUtils;->zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V

    .line 64
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method private static zip7zFile(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/lang/String;)V
    .locals 5
    .param p0, "src"    # Ljava/io/File;
    .param p1, "sevenZOutput"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p2, "currentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v1, 0x0

    .line 41
    .local v1, "instream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v2

    move-object v0, v2

    .line 43
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 44
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 46
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    if-lez v3, :cond_0

    .line 47
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    goto :goto_2

    .line 54
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    if-eqz p1, :cond_1

    goto :goto_1

    .line 49
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    if-eqz p1, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    :goto_2
    return-void

    .line 54
    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    .line 58
    :cond_2
    throw v2
.end method
