.class public Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final s:I = -0x1

.field private static final t:I = 0x0

.field private static final u:I = 0x1

.field private static v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)D
    .locals 6

    .line 89
    const-string p0, "/proc/meminfo"

    .line 92
    nop

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 98
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 106
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 107
    const-wide/16 v2, 0x400

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v0, v0

    return-wide v0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string v0, "getTotalMemory error."

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 62
    if-eqz p0, :cond_2

    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 65
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 67
    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 69
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 70
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 72
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string v0, "getCurProcessName error."

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .line 140
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 141
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 143
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x190

    if-ne p0, v1, :cond_0

    .line 145
    const-string p0, "app is background :"

    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 p0, 0x1

    return p0

    .line 148
    :cond_0
    const-string p0, "app is foreground:"

    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return v0

    .line 152
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    goto :goto_1

    .line 153
    :catch_0
    move-exception p0

    .line 154
    const-string v1, "isBackgroundRunning  error."

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :goto_1
    return v0
.end method

.method public static a(Z)[J
    .locals 7

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 257
    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 272
    :catch_0
    move-exception p0

    goto :goto_1

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 262
    :goto_0
    if-eqz p0, :cond_1

    .line 263
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    .line 265
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    .line 266
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v3

    .line 267
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    .line 268
    const/4 v4, 0x0

    mul-int/2addr v2, p0

    int-to-long v5, v2

    aput-wide v5, v0, v4

    .line 269
    const/4 v2, 0x1

    mul-int/2addr v3, p0

    int-to-long v3, v3

    aput-wide v3, v0, v2

    .line 270
    const/4 v2, 0x2

    mul-int/2addr p0, v1

    int-to-long v3, p0

    aput-wide v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_1
    goto :goto_2

    .line 272
    :goto_1
    nop

    .line 273
    const-string v1, "getStorageSize error."

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :goto_2
    return-object v0

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static b(Landroid/content/Context;)D
    .locals 4

    .line 121
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 124
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 126
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v0, v0

    return-wide v0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    const-string v0, "getAvailMemory error."

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 167
    const-string v0, ""

    .line 170
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 171
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 172
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    const-string v1, "getRunningActivityName error."

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 34
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 37
    :cond_0
    const-string v0, "{"

    .line 39
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 41
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 42
    if-nez v3, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\":\""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    nop

    .line 40
    move-object v0, v2

    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_2

    .line 49
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_1

    :catch_1
    move-exception p0

    .line 50
    :goto_1
    const-string v1, "simpleMapToJsonStr error."

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_2
    return-object v0

    .line 35
    :cond_3
    :goto_3
    const-string p0, "null"

    return-object p0
.end method

.method public static b()Z
    .locals 7

    .line 210
    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    return v1

    .line 212
    :cond_0
    sget v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->v:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 214
    return v2

    .line 216
    :cond_1
    nop

    .line 217
    const-string v0, "/system/bin/"

    const-string v3, "/system/xbin/"

    const-string v4, "/system/sbin/"

    const-string v5, "/sbin/"

    const-string v6, "/vendor/bin/"

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 219
    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 220
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    sput v1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return v1

    .line 219
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_3
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "isRootSystem error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    :goto_1
    sput v2, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->v:I

    .line 230
    return v2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 287
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    .line 288
    const/4 p0, 0x1

    return p0

    .line 292
    :cond_0
    goto :goto_0

    .line 290
    :catch_0
    move-exception p0

    .line 291
    const-string v0, "isInstallOnSDCard error."

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 188
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 193
    :cond_0
    goto :goto_0

    .line 191
    :catch_0
    move-exception p0

    .line 192
    const-string v0, "getWifiIpAddress error."

    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :goto_0
    const-string p0, "127.0.0.1"

    return-object p0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 2

    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "hasSDCard error."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    const-string v0, "unknown"

    return-object v0
.end method
