.class public final Lcom/xiaopeng/lib/utils/config/EnvConfig;
.super Ljava/lang/Object;
.source "EnvConfig.java"


# static fields
.field static final KEY_EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field static final KEY_IOT_WEB_HOST:Ljava/lang/String; = "iot_web_host"

.field static final KEY_MAIN_HOST:Ljava/lang/String; = "main_host"

.field static final KEY_SPEECH_HOST:Ljava/lang/String; = "speech_host"

.field static final PRE_ENV_FILE_BACKUP_PATH:Ljava/lang/String; = "/mnt/vendor/xp_data/pre_env.ini"

.field static final PRE_ENV_FILE_PATH:Ljava/lang/String;

.field static final SD_CARD_PATH:Ljava/lang/String; = "/sdcard"

.field private static final TAG:Ljava/lang/String; = "EnvConfig"

.field private static sConfigs:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pre_env.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->PRE_ENV_FILE_PATH:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    .line 39
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneConfig()Ljava/util/Properties;
    .locals 2

    .line 47
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 48
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static convertDateStringToMillis(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string v0, "yyyyMMdd HH:mm:ss"

    const-string v1, ":"

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string v0, " "

    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "yyyyMMdd"

    goto :goto_0

    :cond_0
    const-string v0, "yyyyMMddHHmmss"

    goto :goto_0

    :cond_1
    const-string v0, "yyyyMMdd HHmmss"

    .line 266
    :cond_2
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getBoolean(Ljava/lang/String;ZZ)Z
    .locals 1

    .line 236
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 242
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 182
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide p1
.end method

.method public static getDouble(Ljava/lang/String;DD)D
    .locals 1

    .line 196
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide p1

    :cond_1
    return-wide p3
.end method

.method private static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard"

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "main_host"

    .line 86
    invoke-static {v0, p0, p1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;II)I
    .locals 1

    .line 126
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public static getIotWebHostInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "iot_web_host"

    .line 94
    invoke-static {v0, p0, p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 147
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide p1
.end method

.method public static getLong(Ljava/lang/String;JJ)J
    .locals 1

    .line 161
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide p1

    :cond_1
    return-wide p3
.end method

.method public static getSpeechHostInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "speech_host"

    .line 90
    invoke-static {v0, p0, p0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasValidConfig()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "main_host"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static init()V
    .locals 8

    const-string v0, "EnvConfig"

    .line 278
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 286
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/xiaopeng/lib/utils/config/EnvConfig;->PRE_ENV_FILE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/xp_data/pre_env.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    .line 313
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 296
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 298
    :try_start_3
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "<<<< warning, load file: pre_env.ini !!!"

    .line 300
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    const-string v5, "expired_time"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 304
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->convertDateStringToMillis(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_3

    const-string v1, "<<<< file pre_env.ini is expired!"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v1

    .line 311
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 313
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    :goto_1
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v1

    .line 313
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    throw v0
.end method

.method static removeKey(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 71
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static strToBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "1"

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 221
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
