.class public Lcom/alibaba/sdk/android/httpdns/d/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)I
    .locals 1

    instance-of v0, p0, Lcom/alibaba/sdk/android/httpdns/h;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/h;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/h;->getErrorCode()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const/16 p0, 0x2711

    return p0

    :cond_1
    const/16 p0, 0x2710

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const-string p0, "time out exception"

    return-object p0

    :cond_1
    const-string p0, "default error"

    return-object p0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
