.class public Lcom/xiaopeng/lib_xpbt/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static showD:Z

.field public static showE:Z

.field public static showI:Z

.field public static showV:Z

.field public static showW:Z

.field public static showWTF:Z

.field public static tagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "lib_xpbt"

    sput-object v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->tagPrefix:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showV:Z

    .line 11
    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showD:Z

    .line 12
    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showI:Z

    .line 13
    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showW:Z

    .line 14
    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showE:Z

    .line 15
    sput-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showWTF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showD:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 55
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showD:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showE:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 97
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showE:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static generateTag()Ljava/lang/String;
    .locals 7

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 24
    .local v0, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "%s.%s(L:%d)"

    .line 27
    .local v2, "tag":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 29
    sget-object v3, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->tagPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->tagPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 30
    return-object v2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showI:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 69
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showI:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showV:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 41
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showV:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 76
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showW:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 83
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showW:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 104
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showWTF:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 111
    sget-boolean v0, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->showWTF:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method
