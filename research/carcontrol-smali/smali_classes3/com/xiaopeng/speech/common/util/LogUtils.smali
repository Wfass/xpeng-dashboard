.class public Lcom/xiaopeng/speech/common/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/common/util/LogUtils$DefaultLogger;,
        Lcom/xiaopeng/speech/common/util/LogUtils$Logger;
    }
.end annotation


# static fields
.field public static CTAG:Ljava/lang/String; = null

.field public static LOG_LEVEL:I = 0x2

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/xiaopeng/speech/common/util/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/common/util/LogUtils$DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils$DefaultLogger;-><init>(Lcom/xiaopeng/speech/common/util/LogUtils$1;)V

    sput-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    .line 110
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 113
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 103
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x3

    .line 117
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 120
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 89
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    if-eqz p4, :cond_1

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    array-length v2, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 243
    aget-object v1, v0, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    .line 250
    :goto_0
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/speech/common/util/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 255
    :goto_1
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 202
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 205
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 216
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 219
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    .line 209
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 223
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 226
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 195
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 131
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x4

    .line 145
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 148
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    .line 138
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x4

    .line 152
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 155
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 124
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogEnable:Z

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogEnable()Z

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

    .line 230
    invoke-static {p0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 259
    sget-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p2, "(T:"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ")"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object p2, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "(C:"

    .line 270
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "at ("

    .line 272
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const/16 p0, 0xa

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 285
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 286
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 287
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLogEnable(Z)V
    .locals 0

    .line 33
    sput-boolean p0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogEnable:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 37
    sput p0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/speech/common/util/LogUtils$Logger;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    .line 75
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 78
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    .line 68
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 85
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 167
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 170
    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x5

    .line 181
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 184
    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    .line 174
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x5

    .line 188
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Exception occurs at"

    .line 191
    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 159
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
