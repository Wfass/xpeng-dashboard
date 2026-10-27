.class public Lcom/xiaopeng/xmlconfig/Support$Properties;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AUTHMODE_SENDED:Ljava/lang/String; = "AUTHMODE_SENDED"

.field public static final BINARY_TYPE:Ljava/lang/String; = "BINARY_TYPE"

.field public static final BTSNOOP_ENABLE:Ljava/lang/String; = "BTSNOOP_ENABLE"

.field public static final BTSNOOP_PATH:Ljava/lang/String; = "BTSNOOP_PATH"

.field public static final BUILD_SPECIAL:Ljava/lang/String; = "BUILD_SPECIAL"

.field public static final BUILD_TYPE:Ljava/lang/String; = "BUILD_TYPE"

.field public static final CFCINDEX:Ljava/lang/String; = "CFCINDEX"

.field public static final CONTROL_RESTART:Ljava/lang/String; = "CONTROL_RESTART"

.field public static final CONTROL_START:Ljava/lang/String; = "CONTROL_START"

.field public static final CONTROL_STOP:Ljava/lang/String; = "CONTROL_STOP"

.field public static final DEBUG_MODE:Ljava/lang/String; = "DEBUG_MODE"

.field public static final FACTORY_MODE:Ljava/lang/String; = "FACTORY_MODE"

.field public static final GRAB_LOG:Ljava/lang/String; = "GRAB_LOG"

.field public static final HARDWARE_ID:Ljava/lang/String; = "HARDWARE_ID"

.field public static final HARDWARE_VERSION:Ljava/lang/String; = "HARDWARE_VERSION"

.field public static final ICCID:Ljava/lang/String; = "ICCID"

.field public static final ICM_LOGGING:Ljava/lang/String; = "ICM_LOGGING"

.field public static final IG_ON_SET_LIMIT:Ljava/lang/String; = "IG_ON_SET_LIMIT"

.field public static final IG_ON_TIME:Ljava/lang/String; = "IG_ON_TIME"

.field public static final LOCALE_REGION:Ljava/lang/String; = "LOCALE_REGION"

.field public static final LOG_LEVEL:Ljava/lang/String; = "LOG_LEVEL"

.field public static final LTE_APN:Ljava/lang/String; = "LTE_APN"

.field public static final MCU_VERSION:Ljava/lang/String; = "MCU_VERSION"

.field public static final MODEM_LOG:Ljava/lang/String; = "MODEM_LOG"

.field public static final NAVI_LOG:Ljava/lang/String; = "NAVI_LOG"

.field public static final NCM_CLUSTER:Ljava/lang/String; = "NCM_CLUSTER"

.field public static final PARTNUMBER:Ljava/lang/String; = "PARTNUMBER"

.field public static final PRODUCT_MODEL:Ljava/lang/String; = "PRODUCT_MODEL"

.field public static final PROPERTIES_DEFAULT_STRING:Ljava/lang/String; = "Unknown"

.field public static final PROP_CODE_VERSION:Ljava/lang/String; = "PROP_CODE_VERSION"

.field public static final RAMDUMP:Ljava/lang/String; = "RAMDUMP"

.field public static final REPAIRMODE_SENDED:Ljava/lang/String; = "REPAIRMODE_SENDED"

.field public static final REPAIR_MODE:Ljava/lang/String; = "REPAIR_MODE"

.field public static final SCP_SUPPORTED:Ljava/lang/String; = "SCP_SUPPORTED"

.field public static final SHOW_DIALOG:Ljava/lang/String; = "SHOW_DIALOG"

.field public static final SOCEEPROM_CRC:Ljava/lang/String; = "SOCEEPROM_CRC"

.field public static final SOCEEPROM_MODEL:Ljava/lang/String; = "SOCEEPROM_MODEL"

.field public static final SOFTWARE_VERSION:Ljava/lang/String; = "SOFTWARE_VERSION"

.field public static final SVC_CONSOLE:Ljava/lang/String; = "SVC_CONSOLE"

.field public static final TAG:Ljava/lang/String; = "Properties"

.field public static final TBOX_VERSION:Ljava/lang/String; = "TBOX_VERSION"

.field public static final TCPDUMP_ETH:Ljava/lang/String; = "TCPDUMP_ETH"

.field public static final TCPDUMP_ICM:Ljava/lang/String; = "TCPDUMP_ICM"

.field public static final TCPDUMP_TBOX:Ljava/lang/String; = "TCPDUMP_TBOX"

.field public static final TCPDUMP_WLAN:Ljava/lang/String; = "TCPDUMP_WLAN"

.field public static final TCP_PORT:Ljava/lang/String; = "TCP_PORT"

.field public static final TMCU_VERSION:Ljava/lang/String; = "TMCU_VERSION"

.field public static final UDISK_PATH:Ljava/lang/String; = "UDISK_PATH"

.field public static final UDISK_READONLY:Ljava/lang/String; = "UDISK_READONLY"

.field public static final UPLOAD_REPAIR_MODE_SENDED:Ljava/lang/String; = "UPLOAD_REPAIR_MODE_SENDED"

.field public static final USBCONFIG:Ljava/lang/String; = "USBCONFIG"

.field public static final VID:Ljava/lang/String; = "VID"

.field public static final VIN:Ljava/lang/String; = "VIN"

.field public static final XML_MODEL:Ljava/lang/String; = "XML_MODEL"

.field public static final XPU:Ljava/lang/String; = "XPU"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;

    .line 200
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "property":Ljava/lang/String;
    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "value":Ljava/lang/String;
    const-string v2, "Support"

    const-string v3, "Properties.get"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-object v1
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 207
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "value":Ljava/lang/String;
    const-string v2, "Support"

    const-string v3, "Properties.get"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v1
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p0, "id"    # Ljava/lang/String;

    .line 221
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "property":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 223
    .local v1, "value":Z
    const-string v2, "Support"

    const-string v3, "Properties.getBoolean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return v1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 214
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .local v1, "value":I
    const-string v2, "Support"

    const-string v3, "Properties.getInt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 228
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 230
    .local v1, "value":J
    const-string v3, "Support"

    const-string v4, "Properties.getLong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "property="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-wide v1
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .line 235
    const-string v0, "Unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    const-string v1, "Support"

    const-string v2, "Properties.get"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 241
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "property":Ljava/lang/String;
    const-string v1, "Support"

    const-string v2, "Properties.set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
