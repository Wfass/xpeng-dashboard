.class public Lcom/xiaopeng/xui/utils/XLogUtils;
.super Ljava/lang/Object;
.source "XLogUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;,
        Lcom/xiaopeng/xui/utils/XLogUtils$Logger;
    }
.end annotation


# static fields
.field private static CTAG:Ljava/lang/String; = null

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

    .line 21
    const-string/jumbo v0, "xpui"

    sput-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogEnable:Z

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    .line 26
    const/4 v0, 0x4

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
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 117
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 109
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 124
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 99
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

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, "lineNumber":I
    if-eqz p4, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 247
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 248
    .local v3, "element":Ljava/lang/StackTraceElement;
    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 249
    aget-object v3, v2, v5

    .line 252
    :cond_0
    if-eqz v3, :cond_1

    .line 253
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 258
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    move-object v2, p2

    .line 259
    .local v2, "msg":Ljava/lang/String;
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 260
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XLogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    .line 263
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "tagName":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    sget-object v3, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_4
    move-object v3, v0

    .line 272
    :cond_5
    :goto_0
    invoke-static {p0, v3, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 222
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 215
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 229
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 205
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
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 152
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 159
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 135
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
    .param p0, "logLevel"    # I

    .line 56
    sget v0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogEnable()Z

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

    .line 236
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/xui/utils/XLogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "needStackTrace"    # Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    if-eqz p4, :cond_2

    .line 283
    const-string v1, " (T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object v1, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 285
    const-string v1, "(C:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xui/utils/XLogUtils;->CTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
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

    .line 291
    :cond_2
    if-eqz p3, :cond_3

    .line 292
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static objClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 299
    if-nez p0, :cond_0

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 302
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 304
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

    .line 34
    sput-boolean p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogEnable:Z

    .line 35
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .line 38
    sput p0, Lcom/xiaopeng/xui/utils/XLogUtils;->LOG_LEVEL:I

    .line 39
    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/xui/utils/XLogUtils$Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    .line 46
    if-eqz p0, :cond_0

    .line 47
    sput-object p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sLogger:Lcom/xiaopeng/xui/utils/XLogUtils$Logger;

    .line 49
    :cond_0
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0
    .param p0, "withStackTrace"    # Z

    .line 52
    sput-boolean p0, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    .line 53
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 177
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 187
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 180
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 194
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "Exception occurs at"

    sget-boolean v2, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, v1, p1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-boolean v1, Lcom/xiaopeng/xui/utils/XLogUtils;->sWithStackTrace:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 170
    :cond_0
    return-void
.end method
