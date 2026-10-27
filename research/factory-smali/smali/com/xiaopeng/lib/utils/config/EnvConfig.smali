.class public final Lcom/xiaopeng/lib/utils/config/EnvConfig;
.super Ljava/lang/Object;
.source "EnvConfig.java"


# static fields
.field static final KEY_EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field static final KEY_MAIN_HOST:Ljava/lang/String; = "main_host"

.field static final PER_ENV_FILE_PATH:Ljava/lang/String; = "/sdcard/pre_env.ini"

.field private static final TAG:Ljava/lang/String; = "EnvConfig"

.field private static sConfigs:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->init()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static cloneConfig()Ljava/util/Properties;
    .locals 2

    .line 42
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 43
    .local v0, "prop":Ljava/util/Properties;
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 44
    return-object v0
.end method

.method private static convertDateStringToMillis(Ljava/lang/String;)J
    .locals 8
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 236
    const-wide/16 v0, -0x1

    .line 238
    .local v0, "expiredTime":J
    :try_start_0
    const-string v2, "yyyyMMdd HH:mm:ss"

    .line 239
    .local v2, "pattern":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 240
    .local v3, "pos":I
    if-gez v3, :cond_2

    .line 241
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 242
    if-gez v3, :cond_1

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-gt v4, v5, :cond_0

    .line 244
    const-string v4, "yyyyMMdd"

    move-object v2, v4

    goto :goto_0

    .line 246
    :cond_0
    const-string v4, "yyyyMMddHHmmss"

    move-object v2, v4

    goto :goto_0

    .line 249
    :cond_1
    const-string v4, "yyyyMMdd HHmmss"

    move-object v2, v4

    .line 253
    :cond_2
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 255
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v6

    .line 258
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "date":Ljava/util/Date;
    goto :goto_1

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-wide v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Z

    .line 212
    move v0, p1

    .line 213
    .local v0, "result":Z
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 219
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static getBoolean(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # Z
    .param p2, "defUserVerVal"    # Z

    .line 223
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 229
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    return p1

    .line 232
    :cond_1
    return p2
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # D

    .line 168
    move-wide v0, p1

    .line 169
    .local v0, "result":D
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    sget-object v2, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .end local v2    # "val":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public static getDouble(Ljava/lang/String;DD)D
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # D
    .param p3, "defUserVerVal"    # D

    .line 183
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v1, "result":D
    return-wide v1

    .line 189
    .end local v1    # "result":D
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    return-wide p1

    .line 197
    :cond_1
    return-wide p3
.end method

.method public static getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "defLanVerValue"    # Ljava/lang/String;
    .param p1, "defUserVerVal"    # Ljava/lang/String;

    .line 81
    const-string v0, "main_host"

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .line 98
    move v0, p1

    .line 99
    .local v0, "result":I
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static getInt(Ljava/lang/String;II)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # I
    .param p2, "defUserVerVal"    # I

    .line 113
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v1, "result":I
    return v1

    .line 119
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    return p1

    .line 127
    :cond_1
    return p2
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # J

    .line 133
    move-wide v0, p1

    .line 134
    .local v0, "result":J
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    sget-object v2, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v2    # "val":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;JJ)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # J
    .param p3, "defUserVerVal"    # J

    .line 148
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v1, "result":J
    return-wide v1

    .line 154
    .end local v1    # "result":J
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    return-wide p1

    .line 162
    :cond_1
    return-wide p3
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    return-object v0

    .line 77
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # Ljava/lang/String;
    .param p2, "defUserVerVal"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    return-object v0

    .line 91
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    return-object p1

    .line 94
    :cond_1
    return-object p2
.end method

.method public static hasKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasValidConfig()Z
    .locals 1

    .line 53
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

    .line 265
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 273
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/pre_env.ini"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 295
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    return-void

    .line 278
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 279
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 280
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 282
    const-string v4, "EnvConfig"

    const-string v5, "<<<< warning, load file: pre_env.ini !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    const-string v5, "expired_time"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "expired":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->convertDateStringToMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 287
    .local v4, "expiredTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_2

    .line 288
    const-string v6, "EnvConfig"

    const-string v7, "<<<< file pre_env.ini is expired!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v6, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v6}, Ljava/util/Properties;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "expired":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "expiredTime":J
    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    throw v1
.end method

.method static removeKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method

.method static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string p1, ""

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private static strToBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 202
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
