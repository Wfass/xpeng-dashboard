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
.field public static CTAG:Ljava/lang/String;

.field public static LOG_LEVEL:I

.field public static sLogEnable:Z

.field public static sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

.field public static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    .line 24
    invoke-static {}, Lcom/xiaopeng/lib/utils/LogUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogEnable:Z

    .line 28
    const/4 v0, 0x0

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
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 109
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 119
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 123
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 112
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 116
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 126
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 130
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 102
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "lineNumber":I
    if-eqz p4, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 251
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 252
    .local v3, "element":Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 253
    aget-object v3, v2, v5

    .line 256
    :cond_0
    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 262
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    move-object v2, p2

    .line 263
    .local v2, "msg":Ljava/lang/String;
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 264
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/lib/utils/LogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    .line 267
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/LogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "tagName":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    sget-object v3, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_4
    move-object v3, v0

    .line 275
    :cond_5
    :goto_0
    invoke-static {p0, v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 215
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 225
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 229
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 218
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 222
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 232
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 236
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 208
    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 3

    .line 353
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "strings":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getLogLevel()I
    .locals 1

    .line 43
    sget v0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 144
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 154
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 158
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 147
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 151
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 161
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 165
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 137
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
    .param p0, "logLevel"    # I

    .line 58
    sget v0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogEnable()Z

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

    .line 239
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 243
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 279
    sget-object v0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    if-eqz p4, :cond_2

    .line 288
    const-string v1, " (T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v1, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "(C:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/lib/utils/LogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
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

    .line 294
    :cond_2
    if-eqz p3, :cond_3

    .line 295
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 306
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 307
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
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

    .line 35
    sput-boolean p0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogEnable:Z

    .line 36
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .line 39
    sput p0, Lcom/xiaopeng/lib/utils/LogUtils;->LOG_LEVEL:I

    .line 40
    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/lib/utils/LogUtils$Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    .line 47
    if-nez p0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    sput-object p0, Lcom/xiaopeng/lib/utils/LogUtils;->sLogger:Lcom/xiaopeng/lib/utils/LogUtils$Logger;

    .line 51
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0
    .param p0, "withStackTrace"    # Z

    .line 54
    sput-boolean p0, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    .line 55
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 73
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 84
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 88
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 77
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 81
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 91
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 95
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 66
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 180
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 190
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 194
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 183
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 187
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 197
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 201
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    sget-boolean v1, Lcom/xiaopeng/lib/utils/LogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 172
    return-void
.end method
