.class public Lcom/xiaopeng/factory/utils/SystemPropertyUtil;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# static fields
.field private static final FACTORY_BINARY_VALUE:I = 0x6

.field private static final LOCALE_VALUE_ZH_CN:Ljava/lang/String; = "zh-CN"

.field private static final SYSTEM_PROPERTY_BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field private static final SYSTEM_PROPERTY_DEBUG_MODE:Ljava/lang/String; = "persist.sys.xiaopeng.debugon"

.field private static final SYSTEM_PROPERTY_FACTORY_MODE:Ljava/lang/String; = "persist.xiaopeng.factorymode"

.field private static final SYSTEM_PROPERTY_HARDWARE_ID:Ljava/lang/String; = "persist.sys.mcu.hardwareId"

.field private static final SYSTEM_PROPERTY_HARDWARE_VERSION:Ljava/lang/String; = "ro.xiaopeng.hardware"

.field private static final SYSTEM_PROPERTY_ICCID:Ljava/lang/String; = "sys.xiaopeng.iccid"

.field private static final SYSTEM_PROPERTY_LOCALE:Ljava/lang/String; = "ro.product.locale"

.field private static final SYSTEM_PROPERTY_MCU_VERSION:Ljava/lang/String; = "sys.mcu.version"

.field private static final SYSTEM_PROPERTY_PARTNUMBER:Ljava/lang/String; = "sys.xiaopeng.partNumber"

.field private static final SYSTEM_PROPERTY_PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"

.field private static final SYSTEM_PROPERTY_SOFTWARE_VERSION:Ljava/lang/String; = "ro.xiaopeng.software"

.field private static final SYSTEM_PROPERTY_SPECIAL:Ljava/lang/String; = "ro.xiaopeng.special"

.field private static final SYSTEM_PROPERTY_UDISK_PATH:Ljava/lang/String; = "sys.usb.label"

.field private static final SYSTEM_PROPERTY_VID:Ljava/lang/String; = "persist.sys.vehicle_id"

.field private static final SYSTEM_PROPERTY_VIN:Ljava/lang/String; = "sys.xiaopeng.vin"

.field private static final TAG:Ljava/lang/String; = "SystemPropertyUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugModeStatus()Z
    .locals 4

    .line 90
    const-string v0, "persist.sys.xiaopeng.debugon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, "status":Z
    const-string v1, "SystemPropertyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDebugModeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    return v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 2

    .line 56
    const-string v0, "persist.sys.mcu.hardwareId"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHwVersion()Ljava/lang/String;
    .locals 2

    .line 72
    const-string v0, "ro.xiaopeng.hardware"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccid()Ljava/lang/String;
    .locals 2

    .line 68
    const-string v0, "sys.xiaopeng.iccid"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMcuVersion()Ljava/lang/String;
    .locals 2

    .line 76
    const-string v0, "sys.mcu.version"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPartNumber()Ljava/lang/String;
    .locals 2

    .line 80
    const-string v0, "sys.xiaopeng.partNumber"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 2

    .line 48
    const-string v0, "ro.product.model"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSwVersion()Ljava/lang/String;
    .locals 2

    .line 60
    const-string v0, "ro.xiaopeng.software"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyBuildType()Ljava/lang/String;
    .locals 4

    .line 32
    const-string v0, "ro.build.type"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "status":Ljava/lang/String;
    const-string v1, "SystemPropertyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemPropertyBuildType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public static getUdiskPath()Ljava/lang/String;
    .locals 2

    .line 52
    const-string v0, "sys.usb.label"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIN()Ljava/lang/String;
    .locals 2

    .line 38
    const-string v0, "sys.xiaopeng.vin"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVehicleId()I
    .locals 2

    .line 64
    const-string v0, "persist.sys.vehicle_id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isChnRegion()Z
    .locals 4

    .line 42
    const-string v0, "ro.product.locale"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "SystemPropertyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChnRegion locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v1, "zh-CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isFactoryBinary()Z
    .locals 5

    .line 84
    const-string v0, "ro.xiaopeng.special"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "special":I
    const-string v2, "SystemPropertyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFactoryBinary special = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFactoryMode()Z
    .locals 2

    .line 104
    const-string v0, "persist.xiaopeng.factorymode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDebugMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 96
    const-string v0, "persist.sys.xiaopeng.debugon"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static setFactoryMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 100
    const-string v0, "persist.xiaopeng.factorymode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
