.class public Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;
.super Ljava/lang/Object;
.source "EnvConfigHelper.java"


# static fields
.field static final DEF_EXPIRE_INTERVAL_MILLIS:I = 0x2932e00

.field static final DEF_MAIN_HOST:Ljava/lang/String; = "https://xmart.deploy-test.xiaopeng.com"

.field static final KEY_MAIN_HOST:Ljava/lang/String; = "main_host"

.field private static final TAG:Ljava/lang/String; = "EnvConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndSetMainHost()V
    .locals 2

    .line 90
    const-string v0, "main_host"

    const-string v1, "https://xmart.deploy-test.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->getNextExpireTime()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "expireTime":Ljava/lang/String;
    const-string v1, "expired_time"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->saveFile()V

    .line 95
    return-void
.end method

.method private static getNextExpireTime()Ljava/lang/String;
    .locals 5

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    add-long/2addr v0, v2

    .line 33
    .local v0, "nextExpiredTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 35
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "nextExpireStr":Ljava/lang/String;
    return-object v3
.end method

.method public static removeKey(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "save"    # Z

    .line 80
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->removeKey(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->saveFile()V

    .line 87
    :cond_0
    return-void
.end method

.method public static removeMainHost()V
    .locals 2

    .line 98
    const-string v0, "main_host"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->removeKey(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public static saveFile()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->cloneConfig()Ljava/util/Properties;

    move-result-object v0

    .line 62
    .local v0, "prop":Ljava/util/Properties;
    new-instance v1, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper$1;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper$1;-><init>(Ljava/util/Properties;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method static saveToPath(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5
    .param p0, "prop"    # Ljava/util/Properties;
    .param p1, "path"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 47
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 49
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 50
    const-string v3, "pre env file"

    invoke-virtual {p0, v0, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "EnvConfig"

    const-string v4, "EnvConfigHelper.saveToPath error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    throw v2
.end method

.method public static setKey(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "save"    # Z

    .line 72
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfigHelper;->saveFile()V

    .line 77
    :cond_0
    return-void
.end method
