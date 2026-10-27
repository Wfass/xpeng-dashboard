.class public Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field public static final POWER_STATUS_FAKESLEEP:I = 0x1

.field public static final POWER_STATUS_NORMAL:I = 0x0

.field public static final POWER_STATUS_SLEEP:I = 0x2

.field public static final POWER_STATUS_UNKNOWN:I = -0x1

.field private static final PROPERTY_POWER_STATUS:Ljava/lang/String; = "sys.power.xp_power_status"

.field private static final PROPERTY_PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerStatus()I
    .locals 2

    .line 21
    const-string v0, "sys.power.xp_power_status"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 2

    .line 30
    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    .line 56
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "versionFinger":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "countryCode":Ljava/lang/String;
    return-object v1

    .line 61
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static isInternationalVer()Z
    .locals 4

    .line 40
    const/4 v0, 0x1

    move v1, v0

    .line 42
    .local v1, "internation":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v2

    move v1, v0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, "netChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInternationVersion :\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v1
.end method
