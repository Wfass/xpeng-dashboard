.class public Lcom/xiaopeng/lib/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;,
        Lcom/xiaopeng/lib/utils/LogUtils$Logger;
    }
.end annotation


# static fields
.field public static CTAG:Ljava/lang/String; = null

.field public static LOG_LEVEL:I = 0x2

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

.field public static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/lib/utils/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogEnable:Z

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

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

    const/4 v0, 0x3

    .line 105
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 108
    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "t"
        }
    .end annotation

    const/4 v0, 0x3

    .line 119
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 122
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "format",
            "args"
        }
    .end annotation

    const/4 v0, 0x3

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    const/4 v0, 0x3

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 129
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x3

    .line 98
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 101
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevel",
            "tag",
            "message",
            "t",
            "needStackTrace"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 253
    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 264
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/lib/utils/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 267
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 270
    sget-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, p1

    .line 275
    :cond_5
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
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

    const/4 v0, 0x6

    .line 211
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 214
    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "t"
        }
    .end annotation

    const/4 v0, 0x6

    .line 225
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 228
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "format",
            "args"
        }
    .end annotation

    const/4 v0, 0x6

    .line 218
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    const/4 v0, 0x6

    .line 232
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 235
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x6

    .line 204
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 207
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 43
    sget v0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "format"
        }
    .end annotation

    const/4 v0, 0x4

    .line 140
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 143
    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "t"
        }
    .end annotation

    const/4 v0, 0x4

    .line 154
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 157
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "format",
            "args"
        }
    .end annotation

    const/4 v0, 0x4

    .line 147
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    const/4 v0, 0x4

    .line 161
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 164
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x4

    .line 133
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 136
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogEnable:Z

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 58
    sget v0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogEnable()Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevel",
            "tag",
            "message",
            "t",
            "needStackTrace"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevel",
            "tag",
            "msg"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "line",
            "msg",
            "t",
            "needStackTrace"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string p2, " (T:"

    .line 288
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

    .line 289
    sget-object p2, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "(C:"

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "at ("

    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    const/16 p0, 0xa

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 305
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 306
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 307
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 35
    sput-boolean p0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogEnable:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 39
    sput p0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/lib/utils/LogUtils$Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    sput-object p0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withStackTrace"
        }
    .end annotation

    .line 54
    sput-boolean p0, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "format"
        }
    .end annotation

    const/4 v0, 0x2

    .line 69
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 72
    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "t"
        }
    .end annotation

    const/4 v0, 0x2

    .line 84
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 87
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "format",
            "args"
        }
    .end annotation

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    const/4 v0, 0x2

    .line 91
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 94
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x2

    .line 62
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 65
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
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

    const/4 v0, 0x5

    .line 176
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 179
    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "t"
        }
    .end annotation

    const/4 v0, 0x5

    .line 190
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 193
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "format",
            "args"
        }
    .end annotation

    const/4 v0, 0x5

    .line 183
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    const/4 v0, 0x5

    .line 197
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x5

    .line 168
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 171
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
