.class public Lcom/xiaopeng/lib/utils/a/c;
.super Ljava/lang/Object;
.source "EnvConfigHelper.java"


# direct methods
.method static a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    nop

    .line 45
    nop

    .line 47
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 50
    :try_start_2
    const-string v0, "pre env file"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 51
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    .line 55
    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_2

    .line 51
    :catch_2
    move-exception p0

    move-object p1, v0

    .line 52
    :goto_0
    :try_start_3
    const-string v1, "EnvConfig"

    const-string v2, "EnvConfigHelper.saveToPath error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    :goto_1
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catchall_2
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    throw p0
.end method

.method public static g(Ljava/lang/String;Z)V
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/a/b;->dN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/a/b;->removeKey(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/c;->pb()V

    .line 87
    :cond_0
    return-void
.end method

.method private static pa()Ljava/lang/String;
    .locals 4

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    add-long/2addr v0, v2

    .line 33
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static pb()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/b;->oY()Ljava/util/Properties;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/xiaopeng/lib/utils/a/c$1;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/utils/a/c$1;-><init>(Ljava/util/Properties;)V

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public static pc()V
    .locals 2

    .line 90
    const-string v0, "main_host"

    const-string v1, "https://xmart.deploy-test.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a/b;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/c;->pa()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "expired_time"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/a/b;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/c;->pb()V

    .line 95
    return-void
.end method

.method public static pd()V
    .locals 2

    .line 98
    const-string v0, "main_host"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a/c;->g(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method
