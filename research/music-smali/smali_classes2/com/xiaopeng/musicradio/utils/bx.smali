.class public Lcom/xiaopeng/musicradio/utils/bx;
.super Ljava/lang/Object;
.source "UserUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Landroid/car/XpCarFeatures;->getMcuHardwareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.model"

    .line 15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.release"

    .line 19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Landroid/car/XpCarFeatures;->getVinCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
