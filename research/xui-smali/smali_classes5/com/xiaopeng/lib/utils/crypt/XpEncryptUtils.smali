.class public Lcom/xiaopeng/lib/utils/crypt/XpEncryptUtils;
.super Ljava/lang/Object;
.source "XpEncryptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XpEncryptUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "key"
        }
    .end annotation

    .line 31
    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    new-instance v0, Lcom/xiaopeng/kmslib/KmsSdk;

    invoke-direct {v0}, Lcom/xiaopeng/kmslib/KmsSdk;-><init>()V

    .line 37
    .local v0, "kmsSdk":Lcom/xiaopeng/kmslib/KmsSdk;
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/kmslib/KmsSdk;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 38
    .end local v0    # "kmsSdk":Lcom/xiaopeng/kmslib/KmsSdk;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpEncryptUtils"

    const-string v2, "Decrypt failed!"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const/4 v1, 0x0

    return-object v1

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content or key is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readKey(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "manager"    # Landroid/content/res/AssetManager;
    .param p1, "keyPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "keyPath"
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_5

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 60
    .local v1, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 62
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 63
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 64
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "XpEncryptUtils"

    const-string v8, "Close steam failed!"

    invoke-static {v7, v8, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    nop

    .line 86
    :goto_2
    nop

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    goto :goto_3

    .line 89
    :catch_1
    move-exception v6

    .line 90
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "XpEncryptUtils"

    const-string v8, "Close inputStreamReader failed!"

    invoke-static {v7, v8, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 95
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 99
    goto :goto_4

    .line 97
    :catch_2
    move-exception v6

    .line 98
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "XpEncryptUtils"

    const-string v8, "Close bufferedReader failed!"

    invoke-static {v7, v8, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v6    # "e":Ljava/io/IOException;
    :goto_4
    return-object v4

    .line 77
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 74
    :catch_3
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Read key failed!"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 78
    if-eqz v0, :cond_2

    .line 79
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 81
    :catch_4
    move-exception v4

    .line 82
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "XpEncryptUtils"

    const-string v6, "Close steam failed!"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 83
    :cond_2
    :goto_6
    nop

    .line 86
    :goto_7
    if-eqz v1, :cond_3

    .line 87
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 89
    :catch_5
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "XpEncryptUtils"

    const-string v6, "Close inputStreamReader failed!"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 91
    :cond_3
    :goto_8
    nop

    .line 94
    :goto_9
    if-eqz v2, :cond_4

    .line 95
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    .line 97
    :catch_6
    move-exception v4

    .line 98
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "XpEncryptUtils"

    const-string v6, "Close bufferedReader failed!"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 99
    :cond_4
    :goto_a
    nop

    .line 100
    :goto_b
    throw v3

    .line 55
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AssetManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
