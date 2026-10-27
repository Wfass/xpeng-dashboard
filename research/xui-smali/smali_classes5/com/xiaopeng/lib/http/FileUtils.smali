.class public Lcom/xiaopeng/lib/http/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 23
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 25
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 26
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v0, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 44
    .local v2, "size":J
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-gtz p1, :cond_c

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 52
    :cond_0
    if-gez p1, :cond_9

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, "rolled":Z
    const/4 v5, 0x0

    .line 56
    .local v5, "last":[B
    const/4 v7, 0x0

    .line 58
    .local v7, "data":[B
    :cond_1
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 59
    :cond_2
    move-object v8, v5

    .local v8, "tmp":[B
    move-object v5, v7

    move-object v7, v8

    .line 60
    if-nez v7, :cond_3

    neg-int v9, p1

    new-array v9, v9, [B

    move-object v7, v9

    .line 61
    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .end local v8    # "tmp":[B
    move v8, v9

    .line 62
    .local v8, "len":I
    array-length v9, v7

    if-eq v8, v9, :cond_1

    .line 64
    if-nez v5, :cond_4

    if-gtz v8, :cond_4

    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    return-object v6

    .line 65
    :cond_4
    if-nez v5, :cond_5

    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v6, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    return-object v9

    .line 66
    :cond_5
    if-lez v8, :cond_6

    .line 67
    const/4 v4, 0x1

    .line 68
    :try_start_2
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v5, v8, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v7, v6, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :cond_6
    if-eqz p2, :cond_8

    if-nez v4, :cond_7

    goto :goto_0

    .line 72
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 72
    return-object v6

    .line 71
    :cond_8
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    return-object v6

    .line 74
    .end local v4    # "rolled":Z
    .end local v5    # "last":[B
    .end local v7    # "data":[B
    .end local v8    # "len":I
    :cond_9
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v4, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 78
    .local v5, "data":[B
    :cond_a
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 79
    .local v7, "len":I
    if-lez v7, :cond_b

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 80
    :cond_b
    array-length v8, v5

    if-eq v7, v8, :cond_a

    .line 81
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    return-object v6

    .line 45
    .end local v4    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "data":[B
    .end local v7    # "len":I
    :cond_c
    :goto_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_e

    if-eqz p1, :cond_d

    int-to-long v4, p1

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    :cond_d
    long-to-int p1, v2

    .line 46
    :cond_e
    add-int/lit8 v4, p1, 0x1

    :try_start_5
    new-array v4, v4, [B

    .line 47
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .line 48
    .local v5, "length":I
    if-gtz v5, :cond_f

    const-string v6, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    return-object v6

    .line 49
    :cond_f
    if-gt v5, p1, :cond_10

    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    return-object v7

    .line 50
    :cond_10
    if-nez p2, :cond_11

    :try_start_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    return-object v7

    .line 51
    :cond_11
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 51
    return-object v6

    .line 84
    .end local v2    # "size":J
    .end local v4    # "data":[B
    .end local v5    # "length":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 102
    nop

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method
