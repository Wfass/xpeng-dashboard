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
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    new-instance v0, Lcom/xiaopeng/kmslib/KmsSdk;

    invoke-direct {v0}, Lcom/xiaopeng/kmslib/KmsSdk;-><init>()V

    .line 37
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/kmslib/KmsSdk;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "XpEncryptUtils"

    const-string v0, "Decrypt failed!"

    .line 39
    invoke-static {p1, v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Content or key is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readKey(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "Close bufferedReader failed!"

    const-string v1, "Close inputStreamReader failed!"

    const-string v2, "Close steam failed!"

    const-string v3, "XpEncryptUtils"

    if-eqz p0, :cond_5

    const/4 v4, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p0, :cond_1

    .line 79
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 82
    invoke-static {v3, v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 90
    invoke-static {v3, v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 98
    invoke-static {v3, v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v4

    :catch_3
    move-exception v4

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_5

    :catch_4
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v5, v4

    move-object v4, p1

    move-object p1, v5

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v5, v4

    move-object v4, p1

    move-object p1, v5

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, v4

    move-object v5, p1

    move-object v4, p0

    move-object p0, v5

    goto :goto_5

    :catch_6
    move-exception p0

    move-object p1, v4

    move-object v5, p1

    move-object v4, p0

    move-object p0, v5

    .line 75
    :goto_4
    :try_start_7
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Read key failed!"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :goto_5
    if-eqz p0, :cond_2

    .line 79
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 82
    invoke-static {v3, v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_6
    if-eqz p1, :cond_3

    .line 87
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 90
    invoke-static {v3, v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_7
    if-eqz v5, :cond_4

    .line 95
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception p0

    .line 98
    invoke-static {v3, v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_4
    :goto_8
    throw v4

    .line 55
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AssetManager is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
