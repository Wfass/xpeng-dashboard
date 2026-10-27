.class public Lcom/lzy/okgo/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 413
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public static canWrite(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 58
    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "input1"    # Ljava/io/InputStream;
    .param p1, "input2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object p0

    .line 316
    invoke-static {p1}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object p1

    .line 318
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 319
    .local v0, "ch":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    .line 320
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 321
    .local v2, "ch2":I
    if-eq v0, v2, :cond_0

    .line 322
    return v1

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 325
    .end local v2    # "ch2":I
    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 328
    .local v3, "ch2":I
    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 4
    .param p0, "input1"    # Ljava/io/Reader;
    .param p1, "input2"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 333
    invoke-static {p1}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 335
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 336
    .local v0, "ch":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    .line 337
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    .line 338
    .local v2, "ch2":I
    if-eq v0, v2, :cond_0

    .line 339
    return v1

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 342
    .end local v2    # "ch2":I
    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    .line 345
    .local v3, "ch2":I
    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 5
    .param p0, "input1"    # Ljava/io/Reader;
    .param p1, "input2"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 350
    .local v0, "br1":Ljava/io/BufferedReader;
    invoke-static {p1}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 352
    .local v1, "br2":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "line1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "line2":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 358
    :cond_0
    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "targetFile"    # Ljava/io/File;

    .line 486
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 491
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->createFile(Ljava/io/File;)Z

    move-result v1

    return v1

    .line 476
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createFolder(Ljava/io/File;)Z
    .locals 1
    .param p0, "targetFolder"    # Ljava/io/File;

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 442
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static createFolder(Ljava/lang/String;)Z
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .line 423
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/io/File;)Z

    move-result v1

    return v1

    .line 427
    .end local v0    # "folder":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createNewFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "targetFile"    # Ljava/io/File;

    .line 518
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 520
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static createNewFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 504
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->createNewFile(Ljava/io/File;)Z

    move-result v1

    return v1

    .line 508
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createNewFolder(Ljava/io/File;)Z
    .locals 1
    .param p0, "targetFolder"    # Ljava/io/File;

    .line 462
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createNewFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "folderPath"    # Ljava/lang/String;

    .line 452
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static delFileOrFolder(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 547
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 551
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 553
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 554
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 555
    .local v3, "sonFile":Ljava/io/File;
    invoke-static {v3}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 554
    .end local v3    # "sonFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 560
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static delFileOrFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 534
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 535
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static flushQuietly(Ljava/io/Flushable;)V
    .locals 1
    .param p0, "flushable"    # Ljava/io/Flushable;

    .line 67
    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getDirSize(Ljava/lang/String;)J
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 370
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .local v0, "stat":Landroid/os/StatFs;
    nop

    .line 373
    nop

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "getBlockSizeLong"

    const-string v2, "getAvailableBlocksLong"

    invoke-static {v0, v1, v2}, Lcom/lzy/okgo/utils/IOUtils;->getStatFsSize(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 376
    :cond_0
    const-string v1, "getBlockSize"

    const-string v2, "getAvailableBlocks"

    invoke-static {v0, v1, v2}, Lcom/lzy/okgo/utils/IOUtils;->getStatFsSize(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 371
    .end local v0    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 373
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static getStatFsSize(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "statFs"    # Landroid/os/StatFs;
    .param p1, "blockSizeMethod"    # Ljava/lang/String;
    .param p2, "availableBlocksMethod"    # Ljava/lang/String;

    .line 381
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 382
    .local v0, "getBlockSizeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 385
    .local v3, "getAvailableBlocksMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 387
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 388
    .local v4, "blockSize":J
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .local v1, "availableBlocks":J
    mul-long v6, v4, v1

    return-wide v6

    .line 390
    .end local v0    # "getBlockSizeMethod":Ljava/lang/reflect/Method;
    .end local v1    # "availableBlocks":J
    .end local v3    # "getAvailableBlocksMethod":Ljava/lang/reflect/Method;
    .end local v4    # "blockSize":J
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 393
    .end local v0    # "e":Ljava/lang/Throwable;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    .local v0, "reader":Ljava/io/Reader;
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 220
    .local v0, "reader":Ljava/io/Reader;
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 230
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 236
    :cond_0
    return-object v1
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 85
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0
.end method

.method public static toBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .line 89
    instance-of v0, p0, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0
.end method

.method public static toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .line 93
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    return-object v0
.end method

.method public static toBufferedWriter(Ljava/io/Writer;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;

    .line 97
    instance-of v0, p0, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 184
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/CharSequence;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 164
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 169
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 170
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/Object;)[B
    .locals 4
    .param p0, "input"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 132
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 133
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 134
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 140
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v3    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    nop

    .line 143
    return-object v1

    .line 140
    :goto_0
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 202
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 208
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 214
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 2
    .param p0, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 196
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 80
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toObject([B)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # [B

    .line 147
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 148
    :cond_0
    const/4 v1, 0x0

    .line 149
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v0

    .line 151
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 152
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 153
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 157
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    nop

    .line 160
    return-object v0

    .line 157
    :goto_0
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/Reader;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/Reader;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/io/Reader;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "byteArray"    # [B

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "byteArray"    # [B
    .param p1, "encoding"    # Ljava/lang/String;

    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 278
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 300
    .local v0, "in":Ljava/io/Reader;
    invoke-static {v0, p1}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 301
    return-void
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 289
    .local v0, "in":Ljava/io/Reader;
    invoke-static {v0, p1}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 290
    return-void
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 305
    .local v0, "in":Ljava/io/Reader;
    invoke-static {v0, p1}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 306
    return-void
.end method

.method public static write(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 283
    .local v0, "out":Ljava/io/Writer;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 285
    return-void
.end method

.method public static write(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 294
    .local v0, "out":Ljava/io/Writer;
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/IOUtils;->write(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 296
    return-void
.end method

.method public static write(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 311
    .local v0, "buffer":[C
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 269
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 273
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 241
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 257
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 261
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 253
    :cond_0
    return-void
.end method
