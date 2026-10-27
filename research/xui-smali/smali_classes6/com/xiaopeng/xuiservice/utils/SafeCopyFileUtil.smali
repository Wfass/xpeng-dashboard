.class public Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;
.super Ljava/lang/Object;
.source "SafeCopyFileUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "SafeCopyFileUtil"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 85
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyDirOrFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 64
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    .local v3, "srcSub":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->copyDirOrFile(Ljava/io/File;Ljava/io/File;)V

    .line 64
    .end local v3    # "srcSub":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v1, "is":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    .local v3, "os":Ljava/io/BufferedOutputStream;
    nop

    .line 79
    const/16 v4, 0x2000

    :try_start_1
    new-array v4, v4, [B

    .line 81
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 82
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v4    # "buffer":[B
    .end local v6    # "read":I
    :try_start_2
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v3    # "os":Ljava/io/BufferedOutputStream;
    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 88
    .end local v1    # "is":Ljava/io/BufferedInputStream;
    return-void

    .line 85
    .restart local v1    # "is":Ljava/io/BufferedInputStream;
    .restart local v3    # "os":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 77
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    :try_start_4
    invoke-static {v5, v3}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v3    # "os":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 77
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 85
    :goto_2
    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, "subs":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 95
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    .local v3, "sub":Ljava/io/File;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->deleteFile(Ljava/io/File;)Z

    .line 95
    .end local v3    # "sub":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "subs":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 102
    .local v0, "result":Z
    const-string v1, "SafeCopyFileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v3, "[SUCCESS]"

    goto :goto_1

    :cond_1
    const-string v3, "[FAIL]"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v0
.end method

.method public static safeCopyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, "timestamp":J
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "destTemp":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->copyDirOrFile(Ljava/io/File;Ljava/io/File;)V

    .line 30
    const-string v4, "SafeCopyFileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COPY success, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    const-string v4, "SafeCopyFileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " [FAIL]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return v3

    .line 43
    :cond_0
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 44
    .local v3, "result":Z
    const-string v4, "SafeCopyFileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RENAME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v6, "[SUCCESS]"

    goto :goto_0

    :cond_1
    const-string v6, "[FAIL]"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setResourcePermissionNoRecursive(Ljava/io/File;)V

    .line 50
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setResourcePermissionNoRecursive(Ljava/io/File;)V

    .line 52
    :cond_2
    return v3

    .line 31
    .end local v3    # "result":Z
    :catch_0
    move-exception v4

    .line 32
    .local v4, "ioe":Ljava/io/IOException;
    const-string v5, "SafeCopyFileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COPY error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return v3
.end method
