.class public Lcom/xiaopeng/xui/utils/XLogUtils;
.super Ljava/lang/Object;
.source "XLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;,
        Lcom/xiaopeng/xui/utils/XLogUtils$Logger;
    }
.end annotation


# static fields
.field private static CTAG:Ljava/lang/String; = "xpui"

.field public static final LOG_D_LEVEL:I = 0x3

.field public static final LOG_E_LEVEL:I = 0x6

.field public static final LOG_I_LEVEL:I = 0x4

.field private static LOG_LEVEL:I = 0x0

.field public static final LOG_V_LEVEL:I = 0x2

.field public static final LOG_W_LEVEL:I = 0x5

.field private static sLogEnable:Z

.field private static sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

.field private static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogEnable:Z

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v0, 0x4

    .line 26
    sput v0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 102
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 103
    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    .line 117
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x3

    .line 124
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 95
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 248
    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 249
    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 260
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XLogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 266
    sget-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, p1

    .line 272
    :cond_5
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 208
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 209
    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    .line 222
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    .line 215
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    .line 229
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 201
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 42
    sget v0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 138
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 139
    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x4

    .line 152
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    .line 145
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x4

    .line 159
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 131
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogEnable:Z

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogEnable()Z

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

    .line 236
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 276
    sget-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string p2, " (T:"

    .line 283
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

    .line 284
    sget-object p2, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "(C:"

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "at ("

    .line 288
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

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
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

    .line 301
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 302
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 304
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

    .line 34
    sput-boolean p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogEnable:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 38
    sput p0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/xui/utils/XLogUtils$Logger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 47
    sput-object p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    :cond_0
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0

    .line 52
    sput-boolean p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 67
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 68
    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    .line 81
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    .line 88
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 173
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 174
    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x5

    .line 187
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    .line 180
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x5

    .line 194
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const-string v2, "Exception occurs at"

    invoke-static {v0, p0, v2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 166
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
