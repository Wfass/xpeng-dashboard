.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/d;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method static a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_0

    .line 28
    const v0, 0x7f030011

    goto :goto_0

    :cond_0
    const v0, 0x7f030012

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p2

    .line 31
    array-length v0, p0

    if-ge p2, v0, :cond_2

    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    aget-object p0, p0, p2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
