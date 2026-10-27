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
.field public static CTAG:Ljava/lang/String;

.field public static LOG_LEVEL:I

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    .line 24
    invoke-static {}, Lcom/xiaopeng/speech/common/util/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/common/util/LogUtils$DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils$DefaultLogger;-><init>(Lcom/xiaopeng/speech/common/util/LogUtils$1;)V

    sput-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    .line 26
    const/4 v0, 0x1

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
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 100
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 110
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 114
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 103
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 107
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 117
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    const-string v1, "Exception occurs at"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 121
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 93
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 237
    const-string v0, ""

    .line 238
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "lineNumber":I
    if-eqz p4, :cond_1

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 241
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 242
    .local v3, "element":Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 243
    aget-object v3, v2, v5

    .line 245
    :cond_0
    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 250
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/speech/common/util/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "tagName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    move-object v3, v0

    .line 255
    :cond_2
    invoke-static {p0, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 206
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 216
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 220
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 209
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 213
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 223
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    const-string v1, "Exception occurs at"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 227
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 199
    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 3

    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getLogLevel()I
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 135
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 149
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 138
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 142
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 152
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    const-string v1, "Exception occurs at"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 156
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 128
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
    .param p0, "logLevel"    # I

    .line 49
    sget v0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 230
    invoke-static {p0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 234
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 259
    sget-object v0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-eqz p4, :cond_1

    .line 268
    const-string v1, "(T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object v1, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "(C:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/speech/common/util/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    const-string v1, "at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    if-eqz p3, :cond_2

    .line 275
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 281
    if-nez p0, :cond_0

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 285
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 286
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 287
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 33
    sput-boolean p0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogEnable:Z

    .line 34
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .line 37
    sput p0, Lcom/xiaopeng/speech/common/util/LogUtils;->LOG_LEVEL:I

    .line 38
    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/speech/common/util/LogUtils$Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    .line 45
    sput-object p0, Lcom/xiaopeng/speech/common/util/LogUtils;->sLogger:Lcom/xiaopeng/speech/common/util/LogUtils$Logger;

    .line 46
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 64
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 75
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 79
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 68
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 72
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-string v1, "Exception occurs at"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 86
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 57
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 171
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 181
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 185
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 174
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 178
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 188
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    const-string v1, "Exception occurs at"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 192
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 163
    return-void
.end method
