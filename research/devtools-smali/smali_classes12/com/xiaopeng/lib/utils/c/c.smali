.class public Lcom/xiaopeng/lib/utils/c/c;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# direct methods
.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    .line 56
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static pn()Ljava/lang/String;
    .locals 2

    .line 30
    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static po()Z
    .locals 4

    .line 40
    nop

    .line 42
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/c;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    xor-int/2addr v0, v1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :goto_0
    const-string v1, "netChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInternationVersion :\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v0
.end method
