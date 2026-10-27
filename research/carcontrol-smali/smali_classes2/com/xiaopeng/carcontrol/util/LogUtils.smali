.class public final Lcom/xiaopeng/carcontrol/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final BUFFER_LIMIT:I = 0x14

.field private static final FILE_KEEP_COUNT:I = 0x8

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "my_log_"

.field private static final LOG_LEVEL_DEBUG:I = 0x2

.field private static final LOG_LEVEL_RELEASE:I = 0x1

.field private static sBuffer:Ljava/lang/StringBuffer; = null

.field private static sContext:Landroid/content/Context; = null

.field private static sCount:I = 0x0

.field private static final sFormat:Ljava/text/SimpleDateFormat;

.field private static sIsLogBackUp:Z = false

.field private static final sLogLevel:I = 0x2

.field private static sProcessName:Ljava/lang/String;

.field private static sSingleExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sWriter:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 179
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 183
    sput v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    .line 191
    sput-boolean v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeable"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 311
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    .line 71
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "I"

    .line 87
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "debug"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 76
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 78
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    .line 93
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static debug(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-boolean p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "D"

    .line 108
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "debug"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 98
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 100
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    .line 135
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-boolean p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "E"

    .line 150
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "tr"
        }
    .end annotation

    const/4 v0, 0x2

    .line 156
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "tr",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p3, v0, :cond_0

    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    sget-boolean p3, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p3, :cond_0

    const-string p3, "E"

    .line 171
    invoke-static {p3, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "tr",
            "debug"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    .line 161
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "debug"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 140
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 142
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    .line 50
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-boolean p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "I"

    .line 65
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "debug"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 55
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 57
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static isLogBackUp()Z
    .locals 1

    .line 194
    sget-boolean v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    return v0
.end method

.method static synthetic lambda$writeLogToFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "level",
            "tag",
            "message",
            "tr"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    sget-object v1, Lcom/xiaopeng/carcontrol/util/LogUtils;->sFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    const/4 v1, 0x0

    const-string v2, "\n"

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 253
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    .line 254
    sget-object v6, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    sget v5, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_0
    sget-object p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    sget p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    :cond_1
    if-eqz p3, :cond_2

    .line 264
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    sget p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    .line 267
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 268
    array-length p1, p0

    move p2, v1

    :goto_1
    if-ge p2, p1, :cond_2

    aget-object p3, p0, p2

    .line 269
    sget-object v3, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    sget p3, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 273
    :cond_2
    sget p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    const/16 p1, 0x14

    if-lt p0, p1, :cond_3

    .line 275
    :try_start_0
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    sget-object p1, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 276
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :goto_2
    sput v1, Lcom/xiaopeng/carcontrol/util/LogUtils;->sCount:I

    .line 281
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method private static renameFiles()V
    .locals 6

    .line 292
    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/io/File;

    const-string v2, "my_log_7"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x6

    :goto_0
    if-ltz v1, :cond_2

    .line 299
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "my_log_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setLogBackUp(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needBackUp"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLogBackUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 200
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 201
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    .line 202
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/LogUtils;->renameFiles()V

    .line 205
    :try_start_0
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sContext:Landroid/content/Context;

    const-string v1, "my_log_0"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 206
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    .line 212
    sput-boolean p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    goto :goto_6

    .line 210
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 211
    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 214
    sput-boolean p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    .line 215
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sSingleExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    .line 216
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 219
    :try_start_2
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sSingleExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 223
    :goto_2
    sput-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 225
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    if-eqz p0, :cond_2

    .line 226
    sput-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    .line 228
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    if-eqz p0, :cond_3

    .line 230
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :goto_3
    sget-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 232
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 236
    :goto_4
    sput-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    goto :goto_6

    .line 234
    :goto_5
    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 235
    throw p0

    :cond_3
    :goto_6
    return-void
.end method

.method public static setProcessName(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMainProcess"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string p0, "c_c "

    goto :goto_0

    :cond_0
    const-string p0, "c_c:unity "

    .line 46
    :goto_0
    sput-object p0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    const/4 v0, 0x2

    .line 114
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "level"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-boolean p2, Lcom/xiaopeng/carcontrol/util/LogUtils;->sIsLogBackUp:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "W"

    .line 129
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "debug"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 119
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 121
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static writeLogToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "tag",
            "message",
            "tr"
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/xiaopeng/carcontrol/util/LogUtils;->sSingleExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaopeng/carcontrol/util/LogUtils;->sBuffer:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/carcontrol/util/LogUtils;->sWriter:Ljava/io/BufferedWriter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v1, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
