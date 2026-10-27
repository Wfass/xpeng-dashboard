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
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

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

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public static getBid()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "4"

    return-object v1

    .line 117
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, "index":I
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 119
    const-string v2, "4"

    return-object v2

    .line 122
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
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

    .line 59
    sget-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_0
    const-string v0, "ro.xiaopeng.software"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    .line 64
    const-string v0, "unknown"

    sget-object v1, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->mFullSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "ro.build.display.id"

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

    .line 99
    const-string v0, "persist.sys.mcu.hardwareId"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "ro.xiaopeng.hardware"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareVersionCode()I
    .locals 3

    .line 83
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "version":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 85
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "subVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 92
    .end local v1    # "subVersion":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    return v1
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
    .param p0, "property"    # Ljava/lang/String;

    .line 168
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 5

    .line 32
    const-string v0, "ro.product.firmware"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "result":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "version":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 36
    .local v2, "index":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 37
    const-string v3, "_"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 38
    .local v3, "end":I
    if-le v3, v2, :cond_0

    .line 39
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "end":I
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
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 176
    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "deviceInfo":Ljava/lang/String;
    const-string v1, "XiaoPeng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "XPENG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isEngVersion()Z
    .locals 2

    .line 143
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLanVersion()Z
    .locals 2

    .line 129
    const-string v0, "4"

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPTSpecialVersion()Z
    .locals 2

    .line 136
    const-string v0, "5"

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "6"

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserVersion()Z
    .locals 2

    .line 164
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
