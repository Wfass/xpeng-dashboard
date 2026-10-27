.class public final Lcom/android/car/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/utils/FileUtils$OnReplaceListener;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/utils/FileUtils;->LINE_SEP:Ljava/lang/String;

    .line 1401
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/utils/FileUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static byte2FitMemorySize(J)Ljava/lang/String;
    .locals 8
    .param p0, "byteNum"    # J

    .line 1417
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1418
    const-string v0, "shouldn\'t be less than zero!"

    return-object v0

    .line 1419
    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 1420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "%.3fB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1421
    :cond_1
    const-wide/32 v3, 0x100000

    cmp-long v0, p0, v3

    if-gez v0, :cond_2

    .line 1422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "%.3fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1423
    :cond_2
    const-wide/32 v3, 0x40000000

    cmp-long v0, p0, v3

    if-gez v0, :cond_3

    .line 1424
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "%.3fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1426
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v3, "%.3fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 1405
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1406
    :cond_0
    array-length v0, p0

    .line 1407
    .local v0, "len":I
    if-gtz v0, :cond_1

    const-string v1, ""

    return-object v1

    .line 1408
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 1409
    .local v1, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1410
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/android/car/utils/FileUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1411
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/android/car/utils/FileUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1409
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1413
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 285
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0

    .line 289
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 245
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/car/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 259
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/car/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method private static copyDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 317
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z
    .locals 10
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;
    .param p3, "isMove"    # Z

    .line 408
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "srcPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "destPath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 413
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 414
    :cond_2
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 415
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 416
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 417
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v7, "oneDestFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 419
    invoke-static {v6, v7, p2, p3}, Lcom/android/car/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v8

    if-nez v8, :cond_5

    return v0

    .line 420
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 421
    invoke-static {v6, v7, p2, p3}, Lcom/android/car/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v8

    if-nez v8, :cond_5

    return v0

    .line 416
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "oneDestFile":Ljava/io/File;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 424
    :cond_6
    if-eqz p3, :cond_8

    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 413
    .end local v3    # "files":[Ljava/io/File;
    :cond_9
    :goto_3
    return v0

    .line 408
    .end local v1    # "srcPath":Ljava/lang/String;
    .end local v2    # "destPath":Ljava/lang/String;
    :cond_a
    :goto_4
    return v0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;
    .param p3, "isMove"    # Z

    .line 431
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto :goto_3

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 435
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 436
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 437
    if-eqz p2, :cond_4

    invoke-interface {p2, p0, p1}, Lcom/android/car/utils/FileUtils$OnReplaceListener;->onReplace(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 442
    :cond_3
    return v2

    .line 438
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 439
    return v0

    .line 445
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 447
    :cond_6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1}, Lcom/android/car/utils/FileUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    .line 448
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    .line 447
    :cond_7
    move v0, v2

    goto :goto_1

    .line 448
    :cond_8
    nop

    .line 447
    :goto_1
    return v0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 451
    return v0

    .line 435
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_2
    return v0

    .line 431
    :cond_a
    :goto_3
    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 224
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 229
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 214
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 176
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 166
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 196
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 200
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 203
    return v0
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 186
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 472
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 476
    :cond_1
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 462
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->delete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteAllInDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 531
    new-instance v0, Lcom/android/car/utils/FileUtils$1;

    invoke-direct {v0}, Lcom/android/car/utils/FileUtils$1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/car/utils/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static deleteAllInDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 521
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .line 486
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 490
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 491
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 492
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 493
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 494
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 496
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    invoke-static {v4}, Lcom/android/car/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 493
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 511
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static deleteFilesInDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 556
    new-instance v0, Lcom/android/car/utils/FileUtils$2;

    invoke-direct {v0}, Lcom/android/car/utils/FileUtils$2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/car/utils/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 546
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 584
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 588
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 589
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 590
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v3, v1

    if-eqz v3, :cond_5

    .line 591
    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 592
    .local v5, "file":Ljava/io/File;
    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 593
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 594
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    return v0

    .line 595
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 596
    invoke-static {v5}, Lcom/android/car/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    return v0

    .line 591
    .end local v5    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 601
    :cond_5
    return v2

    .line 584
    .end local v1    # "files":[Ljava/io/File;
    :cond_6
    :goto_1
    return v0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 573
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/utils/FileUtils;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method private static getDirLength(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .line 1152
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1153
    :cond_0
    const-wide/16 v0, 0x0

    .line 1154
    .local v0, "len":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1155
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    .line 1156
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1157
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1158
    invoke-static {v5}, Lcom/android/car/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 1160
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 1156
    .end local v5    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1164
    :cond_2
    return-wide v0
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1273
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1274
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1284
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1285
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1286
    .local v0, "lastSep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .line 1106
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    .line 1107
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/car/utils/FileUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 884
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 885
    :cond_0
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isUtf8(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UTF-8"

    return-object v0

    .line 886
    :cond_1
    const/4 v0, 0x0

    .line 887
    .local v0, "p":I
    const/4 v1, 0x0

    .line 889
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 890
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v0, v2, v3

    .line 895
    nop

    .line 896
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    .line 899
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 901
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 900
    :cond_2
    :goto_0
    goto :goto_1

    .line 894
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 891
    :catch_1
    move-exception v2

    .line 892
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 895
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 896
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 902
    :goto_1
    const v2, 0xfeff

    if-eq v0, v2, :cond_4

    const v2, 0xfffe

    if-eq v0, v2, :cond_3

    .line 908
    const-string v2, "GBK"

    return-object v2

    .line 904
    :cond_3
    const-string v2, "Unicode"

    return-object v2

    .line 906
    :cond_4
    const-string v2, "UTF-16BE"

    return-object v2

    .line 894
    :goto_2
    nop

    .line 895
    if-eqz v1, :cond_5

    .line 896
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 898
    :catch_2
    move-exception v3

    .line 899
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 900
    :cond_5
    :goto_3
    throw v2
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 874
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1349
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1350
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1360
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1361
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1362
    .local v0, "lastPoi":I
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1363
    .local v1, "lastSep":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-lt v1, v0, :cond_1

    goto :goto_0

    .line 1364
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1363
    :cond_2
    :goto_0
    const-string v2, ""

    return-object v2
.end method

.method public static getFileLastModified(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 863
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 864
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLastModified(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 853
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileLastModified(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFileLength(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1198
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1199
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1174
    const-string v0, "[a-zA-z]+://[^\\s]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1175
    .local v0, "isURL":Z
    if-eqz v0, :cond_1

    .line 1177
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 1178
    .local v1, "conn":Ljavax/net/ssl/HttpsURLConnection;
    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 1180
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 1181
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    return-wide v2

    .line 1183
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1184
    .end local v1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 1185
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1188
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getFileLines(Ljava/io/File;)I
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .line 1042
    const/4 v0, 0x1

    .line 1043
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1045
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 1046
    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 1048
    .local v3, "buffer":[B
    sget-object v4, Lcom/android/car/utils/FileUtils;->LINE_SEP:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 1049
    :goto_0
    invoke-virtual {v1, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v7, v4

    .local v7, "readChars":I
    if-eq v4, v5, :cond_5

    .line 1050
    move v4, v0

    move v0, v6

    .local v0, "i":I
    .local v4, "count":I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 1051
    :try_start_1
    aget-byte v8, v3, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1050
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1064
    .end local v0    # "i":I
    .end local v3    # "buffer":[B
    .end local v7    # "readChars":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v4

    goto :goto_7

    .line 1061
    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v4

    goto :goto_5

    .line 1049
    .restart local v3    # "buffer":[B
    .restart local v7    # "readChars":I
    :cond_1
    move v0, v4

    goto :goto_0

    .line 1055
    .end local v4    # "count":I
    .end local v7    # "readChars":I
    .local v0, "count":I
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v1, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v7, v4

    .restart local v7    # "readChars":I
    if-eq v4, v5, :cond_5

    .line 1056
    move v4, v0

    move v0, v6

    .local v0, "i":I
    .restart local v4    # "count":I
    :goto_3
    if-ge v0, v7, :cond_4

    .line 1057
    :try_start_3
    aget-byte v8, v3, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 1056
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1055
    .end local v0    # "i":I
    :cond_4
    move v0, v4

    goto :goto_2

    .line 1065
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "readChars":I
    .local v0, "count":I
    :cond_5
    nop

    .line 1066
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1068
    :catch_1
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1071
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1070
    :cond_6
    :goto_4
    goto :goto_6

    .line 1064
    :catchall_1
    move-exception v2

    goto :goto_7

    .line 1061
    :catch_2
    move-exception v2

    .line 1062
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1065
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 1066
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1072
    :goto_6
    return v0

    .line 1064
    :goto_7
    nop

    .line 1065
    if-eqz v1, :cond_7

    .line 1066
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 1068
    :catch_3
    move-exception v3

    .line 1069
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 1070
    :cond_7
    :goto_8
    throw v2
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1032
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileLines(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static getFileMD5(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 1240
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1241
    :cond_0
    move-object v1, v0

    .line 1243
    .local v1, "dis":Ljava/security/DigestInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1244
    .local v2, "fis":Ljava/io/FileInputStream;
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1245
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v2, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v1, v4

    .line 1246
    const/high16 v4, 0x40000

    new-array v4, v4, [B

    .line 1248
    .local v4, "buffer":[B
    :cond_1
    invoke-virtual {v1, v4}, Ljava/security/DigestInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    .line 1250
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v5

    move-object v3, v5

    .line 1251
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    nop

    .line 1257
    :try_start_1
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1261
    :goto_0
    nop

    .line 1251
    :goto_1
    return-object v5

    .line 1255
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1252
    :catch_1
    move-exception v2

    .line 1253
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1256
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 1257
    :try_start_3
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1259
    :catch_2
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1262
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1261
    :cond_2
    :goto_2
    nop

    .line 1263
    :goto_3
    return-object v0

    .line 1255
    :goto_4
    nop

    .line 1256
    if-eqz v1, :cond_3

    .line 1257
    :try_start_4
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 1259
    :catch_3
    move-exception v2

    .line 1260
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 1261
    :cond_3
    :goto_5
    throw v0
.end method

.method public static getFileMD5(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1230
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1220
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1209
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1296
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1297
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1307
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1308
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1309
    .local v0, "lastSep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1319
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1330
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1331
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1332
    .local v0, "lastPoi":I
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1333
    .local v1, "lastSep":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1334
    if-ne v0, v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1336
    :cond_2
    if-eq v0, v2, :cond_4

    if-le v1, v0, :cond_3

    goto :goto_1

    .line 1339
    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1337
    :cond_4
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 1117
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    .line 1118
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/car/utils/FileUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getLength(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1138
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1139
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    .line 1142
    :cond_1
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLength(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1128
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSize(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1092
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1093
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getDirSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1096
    :cond_1
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1082
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->getSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 126
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 83
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 58
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/car/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 63
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .local v3, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v3, :cond_1

    return v0

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 71
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    nop

    .line 72
    const/4 v0, 0x1

    return v0

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1431
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1432
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1433
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1434
    const/4 v0, 0x0

    return v0

    .line 1432
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1437
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method private static isUtf8([B)I
    .locals 11
    .param p0, "raw"    # [B

    .line 966
    const/4 v0, 0x0

    .local v0, "utf8":I
    const/4 v1, 0x0

    .line 967
    .local v1, "ascii":I
    array-length v2, p0

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    .line 968
    aget-byte v2, p0, v4

    const/16 v5, -0x11

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/16 v5, -0x45

    if-ne v2, v5, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v5, -0x41

    if-ne v2, v5, :cond_0

    .line 969
    return v3

    .line 972
    :cond_0
    array-length v2, p0

    .line 973
    .local v2, "len":I
    const/4 v5, 0x0

    .line 974
    .local v5, "child":I
    move v6, v5

    move v5, v0

    move v0, v4

    .local v0, "i":I
    .local v5, "utf8":I
    .local v6, "child":I
    :goto_0
    if-ge v0, v2, :cond_c

    .line 976
    aget-byte v7, p0, v0

    const/4 v8, -0x1

    and-int/2addr v7, v8

    if-eq v7, v8, :cond_b

    aget-byte v7, p0, v0

    const/4 v8, -0x2

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1

    goto/16 :goto_6

    .line 979
    :cond_1
    if-nez v6, :cond_5

    .line 981
    aget-byte v7, p0, v0

    and-int/lit8 v7, v7, 0x7f

    aget-byte v8, p0, v0

    if-ne v7, v8, :cond_2

    aget-byte v7, p0, v0

    if-eqz v7, :cond_2

    .line 982
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 983
    :cond_2
    aget-byte v7, p0, v0

    const/16 v8, -0x40

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    .line 985
    move v7, v6

    move v6, v4

    .local v6, "bit":I
    .local v7, "child":I
    :goto_1
    const/16 v8, 0x8

    if-ge v6, v8, :cond_3

    .line 986
    const/16 v8, 0x80

    shr-int v9, v8, v6

    int-to-byte v9, v9

    aget-byte v10, p0, v0

    and-int/2addr v9, v10

    shr-int/2addr v8, v6

    int-to-byte v8, v8

    if-ne v9, v8, :cond_3

    .line 987
    move v7, v6

    .line 985
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 992
    .end local v6    # "bit":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 994
    move v6, v7

    .end local v7    # "child":I
    .local v6, "child":I
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_5
    array-length v7, p0

    sub-int/2addr v7, v0

    if-le v7, v6, :cond_6

    move v7, v6

    goto :goto_3

    :cond_6
    array-length v7, p0

    sub-int/2addr v7, v0

    :goto_3
    move v6, v7

    .line 997
    const/4 v7, 0x0

    .line 998
    .local v7, "currentNotUtf8":Z
    move v8, v1

    move v1, v4

    .local v1, "children":I
    .local v8, "ascii":I
    :goto_4
    if-ge v1, v6, :cond_9

    .line 1000
    add-int v9, v0, v1

    aget-byte v9, p0, v9

    const/16 v10, -0x80

    and-int/2addr v9, v10

    if-eq v9, v10, :cond_8

    .line 1001
    add-int v9, v0, v1

    aget-byte v9, p0, v9

    and-int/lit8 v9, v9, 0x7f

    add-int v10, v0, v1

    aget-byte v10, p0, v10

    if-ne v9, v10, :cond_7

    aget-byte v9, p0, v0

    if-eqz v9, :cond_7

    .line 1003
    add-int/lit8 v8, v8, 0x1

    .line 1005
    :cond_7
    const/4 v7, 0x1

    .line 998
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1008
    .end local v1    # "children":I
    :cond_9
    if-eqz v7, :cond_a

    .line 1009
    add-int/lit8 v5, v5, -0x1

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1012
    :cond_a
    add-int/2addr v5, v6

    .line 1013
    add-int/2addr v0, v6

    .line 1015
    :goto_5
    const/4 v6, 0x0

    .line 1016
    .end local v7    # "currentNotUtf8":Z
    nop

    .line 974
    move v1, v8

    goto :goto_0

    .line 977
    .end local v8    # "ascii":I
    .local v1, "ascii":I
    :cond_b
    :goto_6
    return v4

    .line 1019
    :cond_c
    if-ne v1, v2, :cond_d

    .line 1020
    return v3

    .line 1022
    :cond_d
    const/high16 v3, 0x42c80000    # 100.0f

    add-int v4, v5, v1

    int-to-float v4, v4

    int-to-float v7, v2

    div-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public static isUtf8(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 929
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 930
    :cond_0
    const/4 v1, 0x0

    .line 932
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x18

    :try_start_0
    new-array v2, v2, [B

    .line 933
    .local v2, "bytes":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 934
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 935
    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 936
    new-array v4, v3, [B

    .line 937
    .local v4, "readArr":[B
    invoke-static {v2, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 938
    invoke-static {v4}, Lcom/android/car/utils/FileUtils;->isUtf8([B)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    nop

    .line 946
    :cond_1
    nop

    .line 947
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    move-exception v5

    .line 950
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 951
    :goto_0
    nop

    .line 938
    :goto_1
    return v0

    .line 940
    .end local v4    # "readArr":[B
    :cond_2
    nop

    .line 946
    nop

    .line 947
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 949
    :catch_1
    move-exception v4

    .line 950
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 951
    :goto_2
    nop

    .line 940
    :goto_3
    return v0

    .line 945
    .end local v2    # "bytes":[B
    .end local v3    # "read":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 942
    :catch_2
    move-exception v2

    .line 943
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 946
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 947
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 949
    :catch_3
    move-exception v2

    .line 950
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 952
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 951
    :cond_3
    :goto_4
    nop

    .line 953
    :goto_5
    return v0

    .line 945
    :goto_6
    nop

    .line 946
    if-eqz v1, :cond_4

    .line 947
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 949
    :catch_4
    move-exception v2

    .line 950
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 951
    :cond_4
    :goto_7
    throw v0
.end method

.method public static isUtf8(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 919
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->isUtf8(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 623
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 647
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 669
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 697
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    new-instance v0, Lcom/android/car/utils/FileUtils$3;

    invoke-direct {v0}, Lcom/android/car/utils/FileUtils$3;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 2
    .param p0, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 635
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 658
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 683
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/io/File;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 728
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 758
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 786
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 819
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    .line 820
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p3, :cond_0

    .line 821
    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 823
    :cond_0
    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 715
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 743
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 772
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 803
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 831
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 832
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 833
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 834
    .local v4, "file":Ljava/io/File;
    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 835
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 838
    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/android/car/utils/FileUtils;->listFilesInDirWithFilterInner(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 842
    :cond_3
    return-object v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 355
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 369
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/FileUtils;->moveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0

    .line 373
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 329
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/car/utils/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 343
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/car/utils/FileUtils;->move(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z

    move-result v0

    return v0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 387
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/android/car/utils/FileUtils$OnReplaceListener;

    .line 401
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/android/car/utils/FileUtils$OnReplaceListener;Z)Z

    move-result v0

    return v0
.end method

.method public static notifySystemToScan(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1373
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1374
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1375
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1376
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1378
    return-void

    .line 1373
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void
.end method

.method public static notifySystemToScan(Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1386
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    .line 1387
    return-void
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "newName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 113
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    move v0, v2

    goto :goto_0

    .line 116
    :cond_4
    nop

    .line 115
    :goto_0
    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/utils/FileUtils;->rename(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1442
    const/4 v0, 0x0

    .line 1444
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1445
    const/16 v2, 0x2000

    new-array v3, v2, [B

    .line 1447
    .local v3, "data":[B
    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1448
    invoke-virtual {v0, v3, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1450
    :cond_0
    const/4 v1, 0x1

    .line 1456
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1459
    goto :goto_1

    .line 1457
    :catch_0
    move-exception v2

    .line 1458
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1461
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 1462
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1464
    :catch_1
    move-exception v2

    .line 1465
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1466
    :goto_2
    nop

    .line 1450
    :goto_3
    return v1

    .line 1455
    .end local v3    # "data":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 1451
    :catch_2
    move-exception v2

    .line 1452
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1453
    nop

    .line 1456
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1459
    goto :goto_4

    .line 1457
    :catch_3
    move-exception v3

    .line 1458
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1461
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_1

    .line 1462
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 1464
    :catch_4
    move-exception v3

    .line 1465
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1466
    :cond_1
    :goto_5
    nop

    .line 1453
    :goto_6
    return v1

    .line 1455
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    nop

    .line 1456
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1459
    goto :goto_8

    .line 1457
    :catch_5
    move-exception v2

    .line 1458
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1461
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    if-eqz v0, :cond_2

    .line 1462
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    .line 1464
    :catch_6
    move-exception v2

    .line 1465
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 1466
    :cond_2
    :goto_9
    throw v1
.end method
