.class public Lcom/xiaopeng/devtools/utils/g;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 829
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    const-string p1, "FileUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcFile  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "is not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    return-void

    .line 834
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 835
    new-instance v7, Lcom/xiaopeng/devtools/system/b/a;

    const-wide/16 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/devtools/system/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v7}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 90
    nop

    .line 91
    nop

    .line 94
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    nop

    .line 103
    const/4 v0, 0x1

    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 100
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 96
    :catch_1
    move-exception v1

    .line 97
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    const/4 v1, 0x0

    .line 100
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    nop

    .line 103
    move v0, v1

    :goto_1
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", res="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return v0

    .line 100
    :goto_2
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    nop

    .line 259
    nop

    .line 262
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    nop

    .line 266
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 268
    if-nez v1, :cond_0

    .line 269
    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    .line 275
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    .line 278
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 275
    :catch_1
    move-exception p1

    .line 276
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 279
    :goto_3
    nop

    .line 280
    const-string p1, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAll path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :goto_4
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 511
    nop

    .line 512
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 515
    const-string p1, "FileUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileNameWithSuffix filePath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 518
    if-eqz p0, :cond_2

    .line 519
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 520
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_2
    :goto_1
    const-string p0, "FileUtil"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileNameWithSuffix name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    return-object v2
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 583
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 586
    const-string p1, "FileUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFileTypeExist filePath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    return v2

    .line 589
    :cond_0
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exist"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 591
    if-eqz p0, :cond_3

    .line 592
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 593
    const-string v1, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileTypeExist filesList[i].getName() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 595
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    return v3

    .line 598
    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    const-string p0, "FileUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFileTypeExist i find file endswith "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return v3

    .line 592
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_3
    return v2
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 643
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    new-instance p0, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$76pJJVasRM-_Ap4FQqziDpas8qY;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$76pJJVasRM-_Ap4FQqziDpas8qY;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 645
    return-object p0
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 649
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    new-instance p0, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$RavoUKBIHT2PwkRq7fLNQwNmZeI;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$RavoUKBIHT2PwkRq7fLNQwNmZeI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 651
    return-object p0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;
    .locals 18

    move-object/from16 v0, p0

    .line 723
    move-object/from16 v1, p1

    .line 724
    new-instance v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;-><init>(JZ)V

    .line 726
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 728
    const-string v6, "FileUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyFileNGetUsedTime beginTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "srcPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " destPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    const/4 v6, 0x0

    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v15, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 731
    :try_start_1
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v12, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 732
    :try_start_2
    invoke-virtual {v15, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 733
    invoke-virtual {v12, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 734
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 735
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 736
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    move-object v7, v1

    move-wide/from16 v16, v10

    move-wide v10, v13

    move-object v5, v12

    move v12, v4

    :try_start_3
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 737
    const-wide/16 v8, 0x0

    move-object v7, v0

    move-wide v10, v13

    move-object v12, v1

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 738
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 739
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mPass:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 747
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFileNGetUsedTime endTime = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    sub-long v0, v0, v16

    .line 749
    iput-wide v0, v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 751
    invoke-static {v5}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 746
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 742
    :catch_0
    move-exception v0

    goto :goto_0

    .line 746
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v10

    move-object v5, v12

    goto :goto_4

    .line 742
    :catch_1
    move-exception v0

    move-wide/from16 v16, v10

    move-object v5, v12

    :goto_0
    move-object v6, v5

    goto :goto_1

    .line 746
    :catchall_2
    move-exception v0

    move-wide/from16 v16, v10

    goto :goto_3

    .line 742
    :catch_2
    move-exception v0

    move-wide/from16 v16, v10

    goto :goto_1

    .line 746
    :catchall_3
    move-exception v0

    move-wide/from16 v16, v10

    move-object v5, v6

    move-object v15, v5

    goto :goto_4

    .line 742
    :catch_3
    move-exception v0

    move-wide/from16 v16, v10

    move-object v15, v6

    .line 743
    :goto_1
    :try_start_4
    iput-boolean v3, v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mPass:Z

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 747
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileNGetUsedTime endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    sub-long v0, v0, v16

    .line 749
    iput-wide v0, v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 751
    invoke-static {v6}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 752
    :goto_2
    invoke-static {v15}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 753
    nop

    .line 754
    return-object v2

    .line 746
    :catchall_4
    move-exception v0

    :goto_3
    move-object v5, v6

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFileNGetUsedTime endTime = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FileUtil"

    invoke-static {v6, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    sub-long v3, v3, v16

    .line 749
    iput-wide v3, v2, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mUsedTime:J

    .line 751
    invoke-static {v5}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 752
    invoke-static {v15}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static M(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 839
    nop

    .line 840
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    const-string v1, "FileUtil"

    const-string v2, "copyPath mkDir fail "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    :cond_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyPath srcPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " destPath = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 846
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 847
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 848
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyPath filesList[i].getName() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/devtools/utils/g;->M(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 852
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 853
    new-instance v9, Lcom/xiaopeng/devtools/system/b/a;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/devtools/system/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v9}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 847
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static V(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1003
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p0

    .line 1004
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 1005
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1006
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volumeInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , volumeInfo.getDisk() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object p0

    .line 1009
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1011
    :cond_1
    goto :goto_0

    .line 1012
    :cond_2
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$TsQunxzs_FbPoV5rGfo2qriP-fc;

    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$TsQunxzs_FbPoV5rGfo2qriP-fc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 537
    new-instance p2, Lcom/xiaopeng/devtools/utils/g$1;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/utils/g$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 562
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    .line 564
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 567
    cmp-long v5, v3, p3

    if-ltz v5, :cond_0

    .line 568
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    cmp-long v2, v3, p5

    if-lez v2, :cond_1

    .line 571
    goto :goto_2

    .line 576
    :cond_1
    goto :goto_1

    .line 574
    :catch_0
    move-exception v2

    .line 575
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 67
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 70
    const/4 p1, 0x0

    .line 72
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 75
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0, p1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 80
    :catch_0
    move-exception p1

    goto :goto_1

    .line 83
    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_3

    .line 80
    :catch_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    .line 81
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :goto_2
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    goto :goto_4

    .line 83
    :catchall_1
    move-exception p1

    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 87
    :cond_1
    :goto_4
    return-void
.end method

.method public static a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1048
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "com.android.internal.os.storage.ExternalStorageFormatter"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1052
    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1054
    return-void
.end method

.method public static a(Ljava/io/FileWriter;)V
    .locals 1

    .line 772
    if-eqz p0, :cond_0

    .line 774
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 779
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    .line 780
    const-string p0, "FileUtil"

    const-string v0, "finish closeFileWriter"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 783
    goto :goto_1

    .line 781
    :catch_1
    move-exception p0

    .line 782
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 785
    :cond_0
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 4

    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p0}, Lcom/xiaopeng/devtools/utils/d;->c([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 458
    if-eqz p0, :cond_0

    .line 459
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 460
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/devtools/utils/g;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 467
    :cond_1
    if-eqz p2, :cond_2

    .line 468
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 469
    if-eqz p0, :cond_2

    array-length p0, p0

    if-nez p0, :cond_2

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_2
    :goto_1
    goto :goto_2

    .line 473
    :catch_0
    move-exception p0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    :cond_3
    :goto_2
    return-void
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8

    .line 481
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 482
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1, v3}, Lcom/xiaopeng/devtools/utils/d;->c([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    goto :goto_3

    .line 486
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 489
    if-eqz v3, :cond_1

    .line 490
    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 491
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, p1, v7}, Lcom/xiaopeng/devtools/utils/g;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 498
    :cond_2
    if-eqz p2, :cond_3

    .line 499
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 500
    if-eqz v3, :cond_3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 501
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_3
    :goto_2
    goto :goto_3

    .line 504
    :catch_0
    move-exception v3

    .line 505
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 5

    .line 1057
    nop

    .line 1058
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    .line 1060
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1061
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 1062
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsbDeviceAttached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1064
    const/4 v0, 0x1

    .line 1066
    :cond_0
    goto :goto_0

    .line 1067
    :cond_1
    const-string p0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsbDeviceAttached vid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    return v0
.end method

.method public static a([Ljava/io/File;)[Ljava/io/File;
    .locals 8

    .line 656
    if-nez p0, :cond_0

    .line 657
    return-object p0

    .line 659
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 660
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before sort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    move v1, v0

    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 663
    move v2, v0

    :goto_2
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    .line 664
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-lez v3, :cond_2

    .line 665
    aget-object v3, p0, v2

    .line 666
    aget-object v4, p0, v5

    aput-object v4, p0, v2

    .line 667
    aput-object v3, p0, v5

    .line 663
    :cond_2
    move v2, v5

    goto :goto_2

    .line 662
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 671
    :cond_4
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 672
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After sort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 674
    :cond_5
    return-object p0
.end method

.method public static aU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 285
    nop

    .line 286
    nop

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    nop

    .line 294
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 296
    if-nez p0, :cond_0

    .line 297
    goto :goto_1

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 303
    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    .line 306
    :goto_1
    nop

    .line 308
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 306
    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_5

    .line 303
    :catch_1
    move-exception p0

    .line 304
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    if-eqz v1, :cond_1

    .line 308
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 311
    :goto_3
    goto :goto_4

    .line 309
    :catch_2
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 314
    :cond_1
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 306
    :goto_5
    if-eqz v2, :cond_2

    .line 308
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 311
    goto :goto_6

    .line 309
    :catch_3
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    :cond_2
    :goto_6
    throw p0
.end method

.method public static aW(Ljava/lang/String;)Z
    .locals 4

    .line 380
    nop

    .line 381
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 382
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 383
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 388
    :cond_0
    const/4 v0, 0x1

    .line 391
    :cond_1
    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkDir path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", res="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    return v0
.end method

.method public static aX(Ljava/lang/String;)V
    .locals 3

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 401
    if-eqz p0, :cond_0

    .line 402
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 403
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 412
    if-eqz p0, :cond_2

    array-length p0, p0

    if-nez p0, :cond_2

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_2
    :goto_1
    goto :goto_2

    .line 416
    :catch_0
    move-exception p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    :cond_3
    :goto_2
    return-void
.end method

.method public static aY(Ljava/lang/String;)Z
    .locals 3

    .line 611
    nop

    .line 612
    if-eqz p0, :cond_0

    .line 613
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    .line 616
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isExistFilePath = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    return v0
.end method

.method public static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 814
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 816
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 817
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTFCardState storageVolume.getPath() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 820
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 821
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTFCardState storageVolume.getPath() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    return-object p0

    .line 816
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    :cond_1
    const-string p0, "unknown"

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 430
    if-eqz p0, :cond_0

    .line 431
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 432
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/devtools/utils/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 439
    :cond_1
    if-eqz p2, :cond_2

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 441
    if-eqz p0, :cond_2

    array-length p0, p0

    if-nez p0, :cond_2

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_2
    :goto_1
    goto :goto_2

    .line 445
    :catch_0
    move-exception p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 534
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 650
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;[B)Z
    .locals 2

    .line 108
    nop

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    nop

    .line 113
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 117
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 120
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 121
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    nop

    .line 129
    const/4 p0, 0x1

    goto :goto_1

    .line 126
    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_2

    .line 122
    :catch_0
    move-exception p1

    move-object p0, v1

    goto :goto_0

    .line 126
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 122
    :catch_1
    move-exception p1

    .line 123
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    const/4 p1, 0x0

    .line 126
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    nop

    .line 129
    move p0, p1

    :goto_1
    return p0

    .line 126
    :goto_2
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static cA(Ljava/lang/String;)J
    .locals 5

    .line 712
    nop

    .line 714
    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    :try_start_1
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileLength path = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fileLength =  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    goto :goto_1

    .line 716
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-wide v2, v0

    .line 717
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    :goto_1
    return-wide v2
.end method

.method public static cB(Ljava/lang/String;)J
    .locals 3

    .line 861
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    nop

    .line 865
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->h(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    .line 868
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->g(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    const-string v0, "FileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileSize error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public static cC(Ljava/lang/String;)J
    .locals 5

    .line 1035
    nop

    .line 1037
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    goto :goto_0

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    const-string v1, "FileUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableBytes path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", availableSize:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    return-wide v0
.end method

.method public static cD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1072
    nop

    .line 1076
    nop

    .line 1077
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    :cond_0
    move-object v1, v0

    :goto_0
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 1081
    if-eqz v1, :cond_4

    .line 1082
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1083
    const-string p0, ""

    .line 1084
    nop

    .line 1118
    nop

    .line 1123
    nop

    .line 1084
    return-object p0

    .line 1087
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1088
    const/high16 v0, 0xa00000

    :try_start_1
    new-array v0, v0, [B

    .line 1089
    nop

    .line 1092
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1093
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 1096
    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1099
    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1102
    :cond_3
    nop

    .line 1103
    nop

    .line 1118
    nop

    .line 1119
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1123
    :goto_3
    nop

    .line 1103
    :goto_4
    return-object p0

    .line 1117
    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_e

    .line 1113
    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_5

    .line 1110
    :catch_2
    move-exception p0

    move-object v0, v2

    goto :goto_8

    .line 1107
    :catch_3
    move-exception p0

    move-object v0, v2

    goto :goto_b

    .line 1106
    :cond_4
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1118
    nop

    .line 1123
    nop

    .line 1127
    return-object p0

    .line 1117
    :catchall_1
    move-exception p0

    goto :goto_e

    .line 1113
    :catch_4
    move-exception p0

    .line 1114
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1115
    const-string p0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1118
    if-eqz v0, :cond_5

    .line 1119
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 1121
    :catch_5
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1123
    :cond_5
    :goto_6
    nop

    .line 1115
    :goto_7
    return-object p0

    .line 1110
    :catch_6
    move-exception p0

    .line 1111
    :goto_8
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1112
    const-string p0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1118
    if-eqz v0, :cond_6

    .line 1119
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    .line 1121
    :catch_7
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1123
    :cond_6
    :goto_9
    nop

    .line 1112
    :goto_a
    return-object p0

    .line 1107
    :catch_8
    move-exception p0

    .line 1108
    :goto_b
    :try_start_8
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1109
    const-string p0, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1118
    if-eqz v0, :cond_7

    .line 1119
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_c

    .line 1121
    :catch_9
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 1123
    :cond_7
    :goto_c
    nop

    .line 1109
    :goto_d
    return-object p0

    .line 1117
    :goto_e
    nop

    .line 1118
    if-eqz v0, :cond_8

    .line 1119
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_f

    .line 1121
    :catch_a
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 1123
    :cond_8
    :goto_f
    throw p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 804
    if-eqz p0, :cond_0

    .line 805
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception p0

    goto :goto_1

    .line 809
    :cond_0
    :goto_0
    nop

    .line 810
    :goto_1
    return-void
.end method

.method public static cu(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 193
    nop

    .line 194
    nop

    .line 197
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    nop

    .line 200
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-eqz v2, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 208
    :cond_0
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    .line 205
    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    .line 208
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    goto :goto_2

    .line 208
    :catchall_1
    move-exception p0

    goto :goto_3

    .line 205
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 206
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    nop

    .line 210
    move-object v0, v2

    :goto_2
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    return-object v0

    .line 208
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static cv(Ljava/lang/String;)[B
    .locals 7

    .line 318
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 319
    nop

    .line 321
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    const/16 p0, 0x1000

    :try_start_1
    new-array p0, p0, [B

    .line 323
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 324
    new-array v4, v2, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :goto_0
    if-ge v0, v2, :cond_0

    .line 326
    :try_start_2
    aget-byte v1, p0, v0

    aput-byte v1, v4, v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception p0

    goto :goto_1

    .line 328
    :catch_1
    move-exception p0

    goto :goto_2

    .line 333
    :cond_0
    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_7

    .line 330
    :catch_2
    move-exception p0

    move-object v4, v1

    :goto_1
    move-object v2, v3

    goto :goto_3

    .line 328
    :catch_3
    move-exception p0

    move-object v4, v1

    :goto_2
    move-object v2, v3

    goto :goto_4

    .line 333
    :catchall_1
    move-exception p0

    goto :goto_7

    .line 330
    :catch_4
    move-exception p0

    move-object v4, v1

    .line 331
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 328
    :catch_5
    move-exception p0

    move-object v4, v1

    .line 329
    :goto_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    :goto_5
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    :goto_6
    nop

    .line 335
    return-object v4

    .line 333
    :goto_7
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static cw(Ljava/lang/String;)I
    .locals 5

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 344
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    nop

    .line 347
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    .line 352
    :catch_0
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    .line 355
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 352
    :catch_1
    move-exception v2

    .line 353
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 356
    :goto_2
    nop

    .line 358
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readVal path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", retVal="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    return v0

    .line 355
    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static cx(Ljava/lang/String;)Z
    .locals 3

    .line 621
    nop

    .line 622
    if-eqz p0, :cond_0

    .line 623
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    .line 626
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isExistFileParentPath = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    return v0
.end method

.method public static cy(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 634
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 635
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v4, "FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filepath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-object v0
.end method

.method public static cz(Ljava/lang/String;)I
    .locals 6

    .line 678
    nop

    .line 679
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilesSize path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 682
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 683
    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 684
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilesSize filesList[i].getName() =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->cz(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 688
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 683
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilesSize path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", filesum =  "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    return v1
.end method

.method private static synthetic d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 644
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3

    .line 363
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 364
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " successful"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const/4 p0, 0x1

    return p0

    .line 370
    :cond_0
    return v0

    .line 373
    :cond_1
    return v0

    .line 376
    :cond_2
    return v0
.end method

.method public static f(Ljava/lang/String;Z)Ljava/io/FileWriter;
    .locals 4

    .line 758
    nop

    .line 761
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 767
    const/4 v0, 0x0

    :goto_0
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileWriter path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", append="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", writer="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    return-object v0
.end method

.method private static g(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 879
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 882
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 906
    nop

    .line 907
    const-string v0, "storagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 910
    :try_start_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 911
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 910
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p0

    .line 912
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    goto :goto_1

    .line 915
    :catch_0
    move-exception p0

    .line 916
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 913
    :catch_1
    move-exception p0

    .line 914
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 917
    nop

    .line 918
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    const-string p0, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCacheSize mPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    return-wide v0
.end method

.method private static h(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 887
    nop

    .line 888
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 889
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 890
    const/4 p0, 0x0

    :goto_0
    array-length v3, v0

    if-ge p0, v3, :cond_2

    .line 891
    aget-object v3, v0, p0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    aget-object v3, v0, p0

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->h(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 894
    :cond_0
    aget-object v3, v0, p0

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/g;->g(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 890
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 898
    :cond_1
    const-string v0, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not exist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    :cond_2
    return-wide v1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 978
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 980
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 981
    invoke-virtual {v3, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 982
    return-object v3

    .line 980
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 985
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static kX()Ljava/lang/String;
    .locals 2

    .line 1019
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1022
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static kY()I
    .locals 4

    .line 1026
    invoke-static {}, Lcom/xiaopeng/devtools/utils/g;->kZ()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static kZ()J
    .locals 2

    .line 1031
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cC(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$76pJJVasRM-_Ap4FQqziDpas8qY(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/devtools/utils/g;->d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$RavoUKBIHT2PwkRq7fLNQwNmZeI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/devtools/utils/g;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$TsQunxzs_FbPoV5rGfo2qriP-fc(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/devtools/utils/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 134
    nop

    .line 136
    nop

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 145
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    nop

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    nop

    .line 162
    const/4 v0, 0x1

    goto :goto_2

    .line 151
    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    .line 147
    :catch_0
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 151
    :catchall_1
    move-exception p0

    goto :goto_3

    .line 147
    :catch_1
    move-exception v2

    .line 148
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    nop

    .line 152
    if-eqz v1, :cond_1

    .line 153
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 155
    :catch_2
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    nop

    .line 159
    goto :goto_2

    .line 158
    :cond_1
    :goto_1
    nop

    .line 162
    :goto_2
    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "res="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    return v0

    .line 151
    :goto_3
    nop

    .line 152
    if-eqz v1, :cond_2

    .line 153
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 155
    :catch_3
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    nop

    .line 158
    :cond_2
    :goto_4
    throw p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 927
    nop

    .line 928
    nop

    .line 929
    nop

    .line 930
    nop

    .line 932
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    nop

    .line 934
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 935
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 936
    nop

    .line 937
    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 938
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 940
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 942
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 943
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 945
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 946
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 947
    nop

    .line 948
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 949
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 951
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 952
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 953
    nop

    .line 937
    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 957
    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    .line 954
    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    .line 957
    :catchall_1
    move-exception p1

    :goto_2
    move-object v0, v3

    goto :goto_b

    .line 954
    :catch_1
    move-exception p1

    :goto_3
    move-object v0, v3

    goto :goto_6

    .line 958
    :cond_3
    if-eqz v0, :cond_4

    .line 959
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 961
    :cond_4
    if-eqz v1, :cond_5

    .line 962
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 964
    :cond_5
    nop

    .line 965
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 967
    nop

    .line 968
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 954
    :catch_2
    move-exception p1

    goto :goto_6

    .line 957
    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_4

    .line 954
    :catch_3
    move-exception p1

    move-object v1, v0

    goto :goto_5

    .line 957
    :catchall_3
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    :goto_4
    move-object v2, v1

    goto :goto_b

    .line 954
    :catch_4
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    :goto_5
    move-object v2, v1

    .line 955
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 958
    if-eqz v0, :cond_6

    .line 959
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 970
    :catch_5
    move-exception p0

    goto :goto_8

    .line 961
    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 962
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 964
    :cond_7
    if-eqz p0, :cond_8

    .line 965
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 967
    :cond_8
    if-eqz v2, :cond_9

    .line 968
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 970
    :goto_8
    nop

    .line 971
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 973
    goto :goto_a

    .line 972
    :cond_9
    :goto_9
    nop

    .line 974
    :goto_a
    return-void

    .line 957
    :catchall_4
    move-exception p1

    .line 958
    :goto_b
    if-eqz v0, :cond_a

    .line 959
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_c

    .line 970
    :catch_6
    move-exception p0

    goto :goto_d

    .line 961
    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    .line 962
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 964
    :cond_b
    if-eqz p0, :cond_c

    .line 965
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 967
    :cond_c
    if-eqz v2, :cond_d

    .line 968
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_e

    .line 970
    :goto_d
    nop

    .line 971
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 972
    :cond_d
    :goto_e
    throw p1
.end method
