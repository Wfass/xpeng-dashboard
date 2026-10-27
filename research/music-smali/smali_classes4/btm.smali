.class public Lbtm;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# direct methods
.method public static a(Landroid/webkit/WebResourceError;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lbtm;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "net::ERR_NAME_NOT_RESOLVED"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
