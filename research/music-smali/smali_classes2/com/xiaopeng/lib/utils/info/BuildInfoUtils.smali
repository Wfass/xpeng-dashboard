.class public Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;
.super Ljava/lang/Object;
.source "BuildInfoUtils.java"


# static fields
.field public static final BID_LAN:Ljava/lang/String; = "4"

.field public static final BID_PT_SPECIAL_1:Ljava/lang/String; = "5"

.field public static final BID_PT_SPECIAL_2:Ljava/lang/String; = "6"

.field public static final BID_WAN:Ljava/lang/String; = "1"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mFullSoftwareVersion:Ljava/lang/String;


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

.method public static checkoutDeviceLegality()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDeviceApproved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 185
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public static getBid()Ljava/lang/String;
    .locals 4

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "4"

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "_"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullSystemVersion()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.xiaopeng.software"

    .line 62
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.build.display.id"

    .line 65
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    .line 68
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.mcu.hardwareId"

    .line 99
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.xiaopeng.hardware"

    .line 76
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareVersionCode()I
    .locals 3

    .line 83
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getIccid()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    .line 168
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 5

    const-string v0, "ro.product.firmware"

    .line 32
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 37
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_0

    .line 39
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isDebuggableVersion()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isUserDebugVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isDeviceApproved()Z
    .locals 2

    const-string v0, "ro.product.manufacturer"

    .line 176
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XiaoPeng"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "XPENG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEngVersion()Z
    .locals 2

    .line 143
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLanVersion()Z
    .locals 2

    .line 129
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPTSpecialVersion()Z
    .locals 2

    .line 136
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUserDebugVersion()Z
    .locals 2

    .line 150
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserVersion()Z
    .locals 2

    .line 164
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
