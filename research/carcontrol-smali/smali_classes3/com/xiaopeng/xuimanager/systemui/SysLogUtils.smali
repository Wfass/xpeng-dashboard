.class public Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;
.super Ljava/lang/Object;
.source "SysLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$DefaultLogger;,
        Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;
    }
.end annotation


# static fields
.field public static final LOG_D_LEVEL:I = 0x3

.field public static final LOG_E_LEVEL:I = 0x6

.field public static final LOG_I_LEVEL:I = 0x4

.field private static LOG_LEVEL:I = 0x0

.field public static final LOG_V_LEVEL:I = 0x2

.field public static final LOG_W_LEVEL:I = 0x5

.field private static TAG:Ljava/lang/String; = "SSUI-"

.field private static sLogEnable:Z

.field private static sLogger:Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;

.field private static sWithStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$DefaultLogger;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogger:Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogEnable:Z

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    const/4 v0, 0x4

    .line 23
    sput v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 58
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 59
    sget-boolean v2, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 99
    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 100
    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 111
    :cond_2
    invoke-static {v0, v1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p2

    .line 114
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->objClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 117
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 122
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_5
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->logByLevel(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 80
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 81
    sget-boolean v2, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 39
    sget v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->LOG_LEVEL:I

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    .line 65
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 66
    sget-boolean v2, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogEnable:Z

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1

    .line 53
    sget v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogEnable()Z

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

    .line 87
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private static logByLevel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 129
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogger:Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p2, p1, v1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;->logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static msgForTextLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string p2, " (T:"

    .line 136
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

    .line 137
    sget-object p2, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->TAG:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "(C:"

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "at ("

    .line 141
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

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
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

    .line 154
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 157
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

    .line 31
    sput-boolean p0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogEnable:Z

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 35
    sput p0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->LOG_LEVEL:I

    return-void
.end method

.method public static setLogger(Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 44
    sput-object p0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sLogger:Lcom/xiaopeng/xuimanager/systemui/SysLogUtils$Logger;

    :cond_0
    return-void
.end method

.method public static setWithStackTraceFlag(Z)V
    .locals 0

    .line 49
    sput-boolean p0, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    .line 72
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 73
    sget-boolean v2, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->sWithStackTrace:Z

    invoke-static {v0, p0, p1, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->doLog(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
