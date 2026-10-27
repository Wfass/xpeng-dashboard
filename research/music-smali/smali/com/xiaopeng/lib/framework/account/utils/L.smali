.class public Lcom/xiaopeng/lib/framework/account/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static enable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static isLoggable()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    return v0
.end method

.method public static setLoggable(Z)V
    .locals 0

    .line 19
    sput-boolean p0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 65
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    sget-boolean v0, Lcom/xiaopeng/lib/framework/account/utils/L;->enable:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
