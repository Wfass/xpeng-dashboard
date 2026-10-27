.class public Lcom/xiaopeng/lib/utils/c/b;
.super Ljava/lang/Object;
.source "BuildInfoUtils.java"


# static fields
.field private static Xf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    return-void
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "persist.sys.mcu.hardwareId"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 5

    .line 32
    const-string v0, "ro.product.firmware"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pe()Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 36
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 37
    const-string v3, "_"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 38
    if-le v3, v2, :cond_0

    .line 39
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method static isDeviceApproved()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 176
    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "XiaoPeng"

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

.method public static pe()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_0
    const-string v0, "ro.xiaopeng.software"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    .line 64
    const-string v0, "unknown"

    sget-object v1, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    .line 68
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/utils/c/b;->Xf:Ljava/lang/String;

    return-object v0
.end method

.method public static pf()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "ro.xiaopeng.hardware"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/c/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pg()I
    .locals 3

    .line 83
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pf()Ljava/lang/String;

    move-result-object v0

    .line 84
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

    move-result-object v0

    .line 87
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ph()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pe()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v0, "4"

    return-object v0

    .line 117
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 119
    const-string v0, "4"

    return-object v0

    .line 122
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pi()Z
    .locals 2

    .line 129
    const-string v0, "4"

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->ph()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static pj()Z
    .locals 2

    .line 143
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static pk()Z
    .locals 2

    .line 150
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static pl()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pj()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pk()Z

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

.method public static pm()Z
    .locals 2

    .line 164
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
