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
.field public static CTAG:Ljava/lang/String;

.field public static LOG_DEBUG_LEVEL:I

.field public static LOG_INFO_LEVEL:I

.field public static LOG_LEVEL:I

.field public static LOG_VERBOSE_LEVEL:I

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

.field public static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const/4 v0, 0x4

    sput v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    .line 10
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/LogUtils$DefaultLogger;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils$DefaultLogger;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    .line 12
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogEnable:Z

    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    .line 14
    const/4 v1, 0x3

    sput v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    .line 15
    const/4 v1, 0x2

    sput v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_VERBOSE_LEVEL:I

    .line 16
    sput v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_INFO_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 144
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 138
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 150
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 129
    :cond_0
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 254
    .local v1, "lineNumber":I
    if-eqz p4, :cond_1

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 256
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 257
    .local v3, "element":Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 258
    aget-object v3, v2, v5

    .line 261
    :cond_0
    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 267
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    move-object v2, p2

    .line 268
    .local v2, "msg":Ljava/lang/String;
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 269
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "tagName":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_4
    move-object v3, v0

    .line 281
    :cond_5
    :goto_0
    invoke-static {p0, v3, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 234
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 228
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 240
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 3

    .line 318
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getLogLevel()I
    .locals 1

    .line 34
    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 174
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 177
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 168
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 180
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 159
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
    .param p0, "logLevel"    # I

    .line 48
    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogEnable()Z

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

    .line 246
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 249
    :cond_0
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 77
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    const/16 v0, 0xc00

    .line 82
    .local v0, "segmentSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    .line 83
    .local v1, "length":J
    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 84
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 87
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "logContent":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .end local v3    # "logContent":Ljava/lang/String;
    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :goto_1
    return-void

    .line 79
    .end local v0    # "segmentSize":I
    .end local v1    # "length":J
    :cond_3
    :goto_2
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    const/16 v0, 0xc00

    .line 62
    .local v0, "segmentSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    .line 63
    .local v1, "length":J
    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 64
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 67
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "logContent":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .end local v3    # "logContent":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :goto_1
    return-void

    .line 59
    .end local v0    # "segmentSize":I
    .end local v1    # "length":J
    :cond_3
    :goto_2
    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    if-eqz p4, :cond_2

    .line 292
    const-string v1, " (T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "(C:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    const-string v1, "at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_2
    if-eqz p3, :cond_3

    .line 301
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 308
    if-nez p0, :cond_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 313
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 26
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogEnable:Z

    .line 27
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .line 30
    sput p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_LEVEL:I

    .line 31
    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    .line 38
    if-eqz p0, :cond_0

    .line 39
    sput-object p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sLogger:Lcom/xiaopeng/speech/vui/utils/LogUtils$Logger;

    .line 41
    :cond_0
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0
    .param p0, "withStackTrace"    # Z

    .line 44
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    .line 45
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 114
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 108
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 120
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 204
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget-boolean v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 198
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 210
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    sget-boolean v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, v1, p0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 189
    :cond_0
    return-void
.end method
