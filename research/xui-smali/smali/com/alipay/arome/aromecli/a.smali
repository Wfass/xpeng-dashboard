.class final Lcom/alipay/arome/aromecli/a;
.super Ljava/lang/Object;
.source "AromeCliLogger.java"


# direct methods
.method static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 8
    const-string v0, "AromeClient"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 20
    const-string v0, "AromeClient"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 12
    const-string v0, "AromeClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static c(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 16
    const-string v0, "AromeClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
