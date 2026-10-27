.class public Lcom/xiaopeng/xuimanager/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static defaultLevel:I = 0x1

.field private static targetLevel:I = -0x1

.field public static final xD:I = 0x1

.field public static final xE:I = 0x4

.field public static final xI:I = 0x2

.field public static final xNon:I = 0xa

.field public static final xV:I = 0x0

.field public static final xW:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, p0, p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, p0, p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 80
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getDefaultLevel()I
    .locals 1

    .line 96
    sget v0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->defaultLevel:I

    return v0
.end method

.method public static getOutputLevel()I
    .locals 1

    .line 109
    sget v0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->targetLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, p0, p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 24
    sget v0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->targetLevel:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    if-ge p0, v0, :cond_0

    move p0, v0

    .line 28
    :cond_0
    sget v0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->defaultLevel:I

    if-lt p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 44
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_6
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public static setDefaultLevel(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    .line 89
    sput p0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->defaultLevel:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p0, :cond_1

    .line 91
    sput p0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->defaultLevel:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setModuleLogLevel(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static setOutputLevel(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    .line 101
    sput p0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->targetLevel:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v0, p0, :cond_1

    .line 104
    sput v0, Lcom/xiaopeng/xuimanager/utils/LogUtil;->targetLevel:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, p0, p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, p0, p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
