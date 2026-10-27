.class public Lcom/xiaopeng/speech/vui/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;,
        Lcom/xiaopeng/speech/vui/utils/LogUtils$DefaultLogger;
    }
.end annotation


# static fields
.field public static CTAG:Ljava/lang/String; = null

.field public static LOG_DEBUG_LEVEL:I = 0x0

.field public static LOG_INFO_LEVEL:I = 0x0

.field public static LOG_LEVEL:I = 0x4

.field public static LOG_VERBOSE_LEVEL:I

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

.field public static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/LogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogEnable:Z

    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const/4 v0, 0x3

    .line 14
    sput v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    const/4 v0, 0x2

    .line 15
    sput v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_VERBOSE_LEVEL:I

    const/4 v0, 0x4

    .line 16
    sput v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_INFO_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 132
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 133
    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    .line 144
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 138
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x3

    .line 150
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 127
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 258
    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 269
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 272
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 275
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, p1

    .line 281
    :cond_5
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 222
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 223
    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 234
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    .line 228
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 240
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x6

    .line 216
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 217
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    .line 318
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 34
    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 162
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 163
    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x4

    .line 174
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    .line 168
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x4

    .line 180
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    .line 156
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 157
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogEnable:Z

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static log(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    .line 246
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 285
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xc00

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 84
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 88
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xc00

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 64
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 68
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string p2, " (T:"

    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    sget-object p4, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p4, "(C:"

    .line 294
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p4, "at ("

    .line 297
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    const/16 p0, 0xa

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 313
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLogEnable(Z)V
    .locals 0

    .line 26
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogEnable:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 30
    sput p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 39
    sput-object p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    :cond_0
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0

    .line 44
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 102
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 103
    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    .line 114
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    .line 108
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    .line 120
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 97
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 192
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 193
    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x5

    .line 204
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    .line 198
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x5

    .line 210
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    .line 186
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 187
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
