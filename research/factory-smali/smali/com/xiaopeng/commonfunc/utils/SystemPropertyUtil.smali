.class public Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdbTcpPort()I
    .locals 2

    .line 22
    const-string v0, "TCP_PORT"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAuthModeSended()Z
    .locals 1

    .line 274
    const-string v0, "AUTHMODE_SENDED"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCfcIndex()I
    .locals 2

    .line 212
    const-string v0, "CFCINDEX"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDebugModeStatus()Z
    .locals 1

    .line 30
    const-string v0, "DEBUG_MODE"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getDevCodeVer()I
    .locals 2

    .line 298
    const-string v0, "PROP_CODE_VERSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGrabLogOnOff()Z
    .locals 2

    .line 178
    const-string v0, "PROPERTY_VALUE_ON"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRAB_LOG"

    .line 179
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 178
    return v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 2

    .line 124
    const-string v0, "HARDWARE_ID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHwVersion()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "HARDWARE_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccid()Ljava/lang/String;
    .locals 2

    .line 132
    const-string v0, "ICCID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 2

    .line 14
    const-string v0, "LOG_LEVEL"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMcuVersion()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "MCU_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModemLogStatus()Z
    .locals 1

    .line 84
    const-string v0, "MODEM_LOG"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPartNumber()Ljava/lang/String;
    .locals 1

    .line 233
    const-string v0, "PARTNUMBER"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "PRODUCT_MODEL"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRamdumpOnOff()Z
    .locals 2

    .line 202
    const-string v0, "PROPERTY_VALUE_RAMDUMP_ON"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAMDUMP"

    .line 203
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 202
    return v0
.end method

.method public static getRepairModeSended()Z
    .locals 1

    .line 282
    const-string v0, "REPAIRMODE_SENDED"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getShowDialog()Z
    .locals 1

    .line 189
    const-string v0, "SHOW_DIALOG"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSocEepromVersion()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOCEEPROM_MODEL"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SOCEEPROM_CRC"

    .line 257
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method public static getSwVersion()Ljava/lang/String;
    .locals 1

    .line 140
    const-string v0, "SOFTWARE_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyBuildType()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "BUILD_TYPE"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyLteApn()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "LTE_APN"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyRepairMode()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "REPAIR_MODE"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTboxVersion()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "TBOX_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTmcuVersion()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "TMCU_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUdiskPath()Ljava/lang/String;
    .locals 2

    .line 120
    const-string v0, "UDISK_PATH"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadRepairModeSended()Z
    .locals 1

    .line 290
    const-string v0, "UPLOAD_REPAIR_MODE_SENDED"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getUsbConfig()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "USBCONFIG"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIN()Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, "VIN"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVehicleId()I
    .locals 2

    .line 128
    const-string v0, "VID"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasXPU()Z
    .locals 1

    .line 261
    const-string v0, "XPU"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBtHciDebugMode()Z
    .locals 3

    .line 50
    const-string v0, "PROPERTY_VALUE_HCILOG_OFF"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTSNOOP_ENABLE"

    const-string v2, "PROPERTY_VALUE_HCILOG_OFF"

    .line 52
    invoke-static {v2}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isChnRegion()Z
    .locals 2

    .line 9
    const-string v0, "PROPERTY_VALUE_CHN_REGION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCALE_REGION"

    .line 10
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 9
    return v0
.end method

.method public static isConsoleRunning()Z
    .locals 2

    .line 207
    const-string v0, "PROPERTY_VALUE_RUNNING"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SVC_CONSOLE"

    .line 208
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 207
    return v0
.end method

.method public static isDebugBin()Z
    .locals 2

    .line 197
    const-string v0, "PROPERTY_VALUE_USER"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUILD_TYPE"

    .line 198
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 197
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDebugStageIdentification()Z
    .locals 5

    .line 237
    const-string v0, "UNKNOWN"

    .line 239
    .local v0, "stage":Ljava/lang/String;
    const-string v1, "SOFTWARE_VERSION"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "vers":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 242
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 244
    :cond_0
    const-string v2, "DEV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "FC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    return v3
.end method

.method public static isFactoryBinary()Z
    .locals 3

    .line 228
    const-string v0, "BUILD_SPECIAL_FACTORY"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "BUILD_SPECIAL"

    .line 229
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    nop

    .line 228
    :cond_0
    return v2
.end method

.method public static isFactoryMode()Z
    .locals 1

    .line 248
    const-string v0, "FACTORY_MODE"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIcmLoggingSupported()Z
    .locals 1

    .line 108
    const-string v0, "ICM_LOGGING"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNaviLogOn()Z
    .locals 1

    .line 220
    const-string v0, "NAVI_LOG"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNcmCluster()Z
    .locals 1

    .line 112
    const-string v0, "NCM_CLUSTER"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScpSupported()Z
    .locals 1

    .line 104
    const-string v0, "SCP_SUPPORTED"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTcpDump()Z
    .locals 2

    .line 265
    const-string v0, "TCPDUMP_TBOX"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCPDUMP_WLAN"

    const-string v1, ""

    .line 266
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCPDUMP_ETH"

    const-string v1, ""

    .line 267
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isUdiskReadOnly()Z
    .locals 1

    .line 42
    const-string v0, "UDISK_READONLY"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restartService(Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .line 170
    const-string v0, "CONTROL_RESTART"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static setAdbMtpOn(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 66
    const-string v0, "USBCONFIG"

    .line 67
    if-eqz p0, :cond_0

    const-string v1, "PROPERTY_VALUE_MTP_ADB"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_0
    const-string v1, "PROPERTY_VALUE_NONE"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static setAdbTcpPort(I)V
    .locals 2
    .param p0, "port"    # I

    .line 26
    const-string v0, "TCP_PORT"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static setAuthModeSended(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 278
    const-string v0, "AUTHMODE_SENDED"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public static setBtHciDebugMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 56
    const-string v0, "BTSNOOP_ENABLE"

    .line 57
    if-eqz p0, :cond_0

    const-string v1, "PROPERTY_VALUE_HCILOG_ON"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "PROPERTY_VALUE_HCILOG_OFF"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static setBtHciPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 62
    const-string v0, "BTSNOOP_PATH"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static setCfcIndex(I)V
    .locals 2
    .param p0, "value"    # I

    .line 216
    const-string v0, "CFCINDEX"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 34
    const-string v0, "DEBUG_MODE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static setFactoryMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 252
    const-string v0, "FACTORY_MODE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public static setGrabLogOnOff(Z)V
    .locals 2
    .param p0, "onOff"    # Z

    .line 183
    const-string v0, "GRAB_LOG"

    .line 184
    if-eqz p0, :cond_0

    const-string v1, "PROPERTY_VALUE_ON"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_0
    const-string v1, "PROPERTY_VALUE_OFF"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .param p0, "level"    # I

    .line 18
    const-string v0, "LOG_LEVEL"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static setModemLog(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 88
    const-string v0, "MODEM_LOG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static setNaviLogOnoff(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 224
    const-string v0, "NAVI_LOG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static setRepairModeSended(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 286
    const-string v0, "REPAIRMODE_SENDED"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static setShowDialog(Z)V
    .locals 2
    .param p0, "show"    # Z

    .line 193
    const-string v0, "SHOW_DIALOG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static setSystemPropertyLteApn(Ljava/lang/String;)V
    .locals 1
    .param p0, "onoff"    # Ljava/lang/String;

    .line 80
    const-string v0, "LTE_APN"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static setSystemPropertyRepairMode(Ljava/lang/String;)V
    .locals 1
    .param p0, "onoff"    # Ljava/lang/String;

    .line 100
    const-string v0, "REPAIR_MODE"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static setUdiskReadOnly(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 46
    const-string v0, "UDISK_READONLY"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static setUploadRepairModeSended(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 294
    const-string v0, "UPLOAD_REPAIR_MODE_SENDED"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public static startConsole()V
    .locals 2

    .line 156
    const-string v0, "CONTROL_START"

    const-string v1, "PROPERTY_PROCESS_CONSOLE"

    .line 157
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static startService(Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .line 166
    const-string v0, "CONTROL_START"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static stopConsole()V
    .locals 2

    .line 161
    const-string v0, "CONTROL_STOP"

    const-string v1, "PROPERTY_PROCESS_CONSOLE"

    .line 162
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Spec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static stopService(Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .line 174
    const-string v0, "CONTROL_STOP"

    invoke-static {v0, p0}, Lcom/xiaopeng/xmlconfig/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
