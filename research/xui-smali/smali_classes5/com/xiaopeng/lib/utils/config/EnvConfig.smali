.class public final Lcom/xiaopeng/lib/utils/config/EnvConfig;
.super Ljava/lang/Object;
.source "EnvConfig.java"


# static fields
.field static final KEY_EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field static final KEY_MAIN_HOST:Ljava/lang/String; = "main_host"

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

    .line 32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    .line 36
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->init()V

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static cloneConfig()Ljava/util/Properties;
    .locals 2

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 45
    .local v0, "prop":Ljava/util/Properties;
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 46
    return-object v0
.end method

.method private static convertDateStringToMillis(Ljava/lang/String;)J
    .locals 8
    .param p0, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateStr"
        }
    .end annotation

    .line 238
    const-wide/16 v0, -0x1

    .line 240
    .local v0, "expiredTime":J
    :try_start_0
    const-string v2, "yyyyMMdd HH:mm:ss"

    .line 241
    .local v2, "pattern":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 242
    .local v3, "pos":I
    if-gez v3, :cond_2

    .line 243
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 244
    if-gez v3, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-gt v4, v5, :cond_0

    .line 246
    const-string v4, "yyyyMMdd"

    move-object v2, v4

    goto :goto_0

    .line 248
    :cond_0
    const-string v4, "yyyyMMddHHmmss"

    move-object v2, v4

    goto :goto_0

    .line 251
    :cond_1
    const-string v4, "yyyyMMdd HHmmss"

    move-object v2, v4

    .line 255
    :cond_2
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 256
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 257
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v6

    .line 260
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "date":Ljava/util/Date;
    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-wide v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    .line 214
    move v0, p1

    .line 215
    .local v0, "result":Z
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 221
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static getBoolean(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # Z
    .param p2, "defUserVerVal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->strToBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 231
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    return p1

    .line 234
    :cond_1
    return p2
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    .line 170
    move-wide v0, p1

    .line 171
    .local v0, "result":D
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget-object v2, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .local v1, "result":D
    return-wide v1

    .line 191
    .end local v1    # "result":D
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    return-wide p1

    .line 199
    :cond_1
    return-wide p3
.end method

.method private static getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .line 308
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "externalStorage":Ljava/io/File;
    if-nez v0, :cond_0

    const-string v1, "/sdcard"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getHostInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "defLanVerValue"    # Ljava/lang/String;
    .param p1, "defUserVerVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 83
    const-string v0, "main_host"

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    .line 100
    move v0, p1

    .line 101
    .local v0, "result":I
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v1, "result":I
    return v1

    .line 121
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    return p1

    .line 129
    :cond_1
    return p2
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    .line 135
    move-wide v0, p1

    .line 136
    .local v0, "result":J
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v1, "result":J
    return-wide v1

    .line 156
    .end local v1    # "result":J
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    return-wide p1

    .line 164
    :cond_1
    return-wide p3
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "fallback"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    return-object v0

    .line 79
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defLanVerValue"    # Ljava/lang/String;
    .param p2, "defUserVerVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defLanVerValue",
            "defUserVerVal"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    return-object v0

    .line 93
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    return-object p1

    .line 96
    :cond_1
    return-object p2
.end method

.method public static hasKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasValidConfig()Z
    .locals 1

    .line 55
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

    .line 267
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 275
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->PRE_ENV_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/vendor/xp_data/pre_env.ini"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 281
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 302
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    return-void

    .line 285
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 286
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 287
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 289
    const-string v4, "EnvConfig"

    const-string v5, "<<<< warning, load file: pre_env.ini !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v4, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    const-string v5, "expired_time"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "expired":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 293
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->convertDateStringToMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 294
    .local v4, "expiredTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    .line 295
    const-string v6, "EnvConfig"

    const-string v7, "<<<< file pre_env.ini is expired!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v6, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v6}, Ljava/util/Properties;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "expired":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "expiredTime":J
    goto :goto_0

    .line 302
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    nop

    .line 305
    return-void

    .line 302
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    throw v1
.end method

.method static removeKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    return-void
.end method

.method static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "val"
        }
    .end annotation

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string p1, ""

    .line 68
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/config/EnvConfig;->sConfigs:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private static strToBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 204
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
