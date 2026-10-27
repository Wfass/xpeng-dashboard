.class public Lcom/xiaopeng/commonfunc/utils/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zipFiles([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "srcPaths"    # [Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 26
    const/4 v3, 0x1

    .line 28
    .local v3, "res":Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    .local v0, "zipFile":Lnet/lingala/zip4j/ZipFile;
    goto :goto_0

    .line 31
    .end local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .restart local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :goto_0
    move-object v4, v0

    .line 34
    .end local v0    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    .local v4, "zipFile":Lnet/lingala/zip4j/ZipFile;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 36
    .local v0, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    sget-object v9, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 38
    sget-object v9, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V

    .line 39
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 40
    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 41
    sget-object v9, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 42
    sget-object v9, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 45
    :cond_1
    array-length v9, v1

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_4

    aget-object v11, v1, v10

    .line 46
    .local v11, "srcPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    .line 48
    .local v13, "isFileExists":Z
    const-string v14, "ZipUtil"

    const-string v15, "srcPath[%s] isFileExists[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v7

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v14, v15, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    if-eqz v13, :cond_3

    .line 50
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {v4, v12, v0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v4, v12, v0}, Lnet/lingala/zip4j/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v11    # "srcPath":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "isFileExists":Z
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    :cond_4
    const-wide/16 v5, 0x1388

    :try_start_1
    invoke-static {v5, v6}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v4}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_3
    goto :goto_4

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 61
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    const/4 v3, 0x0

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v5, 0x1388

    :try_start_3
    invoke-static {v5, v6}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v4}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 70
    :goto_4
    const-string v0, "ZipUtil"

    const-string v5, "zipFiles res[%s] "

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v3

    .line 61
    :goto_5
    nop

    .line 62
    const-wide/16 v6, 0x1388

    :try_start_4
    invoke-static {v6, v7}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v4}, Lnet/lingala/zip4j/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 68
    goto :goto_6

    .line 66
    :catch_2
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v5
.end method
