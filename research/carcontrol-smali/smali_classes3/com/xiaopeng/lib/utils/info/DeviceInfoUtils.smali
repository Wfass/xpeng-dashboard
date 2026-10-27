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

.field private static final TAG:Ljava/lang/String; = "DeviceInfoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DeviceInfoUtils"

    const-string v1, "getLanguageCode: languageCode is empty, use default value: en"

    .line 80
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "en"

    :cond_0
    return-object v0
.end method

.method public static getPowerStatus()I
    .locals 2

    const-string v0, "sys.power.xp_power_status"

    const/4 v1, -0x1

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.product.model"

    const-string v1, ""

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/16 v2, 0x9

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isInternationalVer()Z
    .locals 3

    const/4 v0, 0x1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInternationVersion :\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netChannel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
