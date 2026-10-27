.class public final Lcom/xiaopeng/lib/utils/a/b;
.super Ljava/lang/Object;
.source "EnvConfig.java"


# static fields
.field private static Xc:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/b;->init()V

    .line 35
    return-void
.end method

.method public static Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "main_host"

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/lib/utils/a/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dN(Ljava/lang/String;)Z
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static dO(Ljava/lang/String;)J
    .locals 2

    .line 236
    nop

    .line 238
    :try_start_0
    const-string v0, "yyyyMMdd HH:mm:ss"

    .line 239
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 240
    if-gez v1, :cond_2

    .line 241
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 242
    if-gez v0, :cond_1

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 244
    const-string v0, "yyyyMMdd"

    goto :goto_0

    .line 246
    :cond_0
    const-string v0, "yyyyMMddHHmmss"

    goto :goto_0

    .line 249
    :cond_1
    const-string v0, "yyyyMMdd HHmmss"

    .line 253
    :cond_2
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_1

    .line 256
    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static init()V
    .locals 8

    .line 265
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 270
    :cond_0
    nop

    .line 271
    nop

    .line 273
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/pre_env.ini"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 295
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    return-void

    .line 278
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :try_start_3
    sget-object v3, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 282
    const-string v3, "EnvConfig"

    const-string v4, "<<<< warning, load file: pre_env.ini !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v3, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    const-string v4, "expired_time"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/a/b;->dO(Ljava/lang/String;)J

    move-result-wide v3

    .line 287
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_2

    .line 288
    const-string v0, "EnvConfig"

    const-string v3, "<<<< file pre_env.ini is expired!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 292
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 295
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 292
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 293
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 295
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catchall_2
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    throw v0
.end method

.method static oY()Ljava/util/Properties;
    .locals 2

    .line 42
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 43
    sget-object v1, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 44
    return-object v0
.end method

.method public static oZ()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "main_host"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/a/b;->dN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return-object p0

    .line 91
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pi()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 92
    return-object p1

    .line 94
    :cond_1
    return-object p2
.end method

.method static removeKey(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method

.method static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string p1, ""

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/a/b;->Xc:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
