.class public Lcom/xiaopeng/commonfunc/utils/s;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public static a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 26
    nop

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lnet/lingala/zip4j/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/lingala/zip4j/a;-><init>(Ljava/lang/String;[C)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/a;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/a;-><init>(Ljava/lang/String;)V

    .line 34
    :goto_0
    const-wide/16 v1, 0x1388

    const/4 p1, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 36
    sget-object v5, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 38
    sget-object v5, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoO:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 40
    invoke-virtual {v4, v3}, Lnet/lingala/zip4j/model/ZipParameters;->bA(Z)V

    .line 41
    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v4, p2}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 42
    sget-object p2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v4, p2}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 45
    :cond_1
    array-length p2, p0

    move v5, p1

    :goto_1
    if-ge v5, p2, :cond_4

    aget-object v6, p0, v5

    .line 46
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    .line 48
    const-string v9, "ZipUtil"

    const-string v10, "srcPath[%s] isFileExists[%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, p1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v11, v3

    invoke-static {v9, v10, v11}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    if-eqz v8, :cond_3

    .line 50
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    invoke-virtual {v0, v7, v4}, Lnet/lingala/zip4j/a;->b(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v0, v7, v4}, Lnet/lingala/zip4j/a;->a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    :cond_4
    :try_start_1
    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/system/a/a;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v0}, Lnet/lingala/zip4j/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_3

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    nop

    .line 70
    :goto_3
    move p0, v3

    goto :goto_5

    .line 61
    :catchall_0
    move-exception p0

    goto :goto_6

    .line 57
    :catch_1
    move-exception p0

    .line 58
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    nop

    .line 62
    :try_start_3
    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/system/a/a;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v0}, Lnet/lingala/zip4j/a;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 68
    goto :goto_4

    .line 66
    :catch_2
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    nop

    .line 70
    :goto_4
    move p0, p1

    :goto_5
    const-string p2, "ZipUtil"

    const-string v0, "zipFiles res[%s] "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return p0

    .line 61
    :goto_6
    nop

    .line 62
    :try_start_4
    invoke-static {v1, v2}, Lcom/xiaopeng/commonfunc/system/a/a;->sleep(J)V

    .line 63
    nop

    .line 64
    invoke-virtual {v0}, Lnet/lingala/zip4j/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    goto :goto_7

    .line 66
    :catch_3
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :goto_7
    throw p0
.end method
