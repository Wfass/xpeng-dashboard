.class public Lcom/xiaopeng/lib/utils/SystemPropertyUtil;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# static fields
.field private static final REPAIRE_MODE_ON:Ljava/lang/String; = "on"

.field private static final SYSTEM_PROPERTY_ACCOUNT_UID:Ljava/lang/String; = "persist.sys.account_uid"

.field private static final SYSTEM_PROPERTY_AIOS_WAKEUP:Ljava/lang/String; = "persist.sys.aioswakeup"

.field private static final SYSTEM_PROPERTY_APP_ID:Ljava/lang/String; = "persist.sys.app_id"

.field private static final SYSTEM_PROPERTY_APP_SECRET:Ljava/lang/String; = "persist.sys.app_secret"

.field private static final SYSTEM_PROPERTY_CALLING:Ljava/lang/String; = "sys.btphone.calling"

.field private static final SYSTEM_PROPERTY_CFC:Ljava/lang/String; = "persist.sys.xiaopeng.configCode"

.field private static final SYSTEM_PROPERTY_CLIENT_SSL:Ljava/lang/String; = "persist.sys.client.ssl"

.field private static final SYSTEM_PROPERTY_CLIENT_SSL_COUNT:Ljava/lang/String; = "persist.sys.client.ssl.c"

.field private static final SYSTEM_PROPERTY_DBC_VERSION:Ljava/lang/String; = "sys.xiaopeng.dbc_ver"

.field private static final SYSTEM_PROPERTY_DISABLE_FACEID:Ljava/lang/String; = "persist.sys.disable_faceid"

.field private static final SYSTEM_PROPERTY_ENABLE_NAVI_ENGINE_LOG:Ljava/lang/String; = "persist.sys.xiaopeng.navi_log"

.field private static final SYSTEM_PROPERTY_FACE_RECOGNITION:Ljava/lang/String; = "persist.sys.face_recognition"

.field private static final SYSTEM_PROPERTY_FACTORY_MODE:Ljava/lang/String; = "persist.xiaopeng.factorymode"

.field private static final SYSTEM_PROPERTY_HARDWARE_ID:Ljava/lang/String; = "persist.sys.hardware_id"

.field private static final SYSTEM_PROPERTY_HARDWARE_ID_NEW:Ljava/lang/String; = "persist.sys.mcu.hardwareId"

.field private static final SYSTEM_PROPERTY_HARDWARE_UUID:Ljava/lang/String; = "persist.sys.hardware.uuid"

.field private static final SYSTEM_PROPERTY_HW_VERSION:Ljava/lang/String; = "ro.xiaopeng.hardware"

.field private static final SYSTEM_PROPERTY_HW_VERSION_Q:Ljava/lang/String; = "ro.boot.hw_version"

.field private static final SYSTEM_PROPERTY_ICCID:Ljava/lang/String; = "ril.audio.iccid"

.field private static final SYSTEM_PROPERTY_ICCID_NEW:Ljava/lang/String; = "sys.xiaopeng.iccid"

.field private static final SYSTEM_PROPERTY_IMU:Ljava/lang/String; = "persist.sys.xiaopeng.IMU"

.field private static final SYSTEM_PROPERTY_IMU_GPS:Ljava/lang/String; = "persist.sys.xiaopeng.IMU_GPS"

.field private static final SYSTEM_PROPERTY_MOTOR_TYPE:Ljava/lang/String; = "sys.xiaopeng.motor_type"

.field private static final SYSTEM_PROPERTY_MQTT_COMMUNICATION_URL:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_MQTT_URL:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_PERSIST_VIN:Ljava/lang/String; = "persist.sys.xiaopeng.vin"

.field private static final SYSTEM_PROPERTY_REPAIR_MODE:Ljava/lang/String; = "persist.sys.xiaopeng.repairmode"

.field private static final SYSTEM_PROPERTY_SCU:Ljava/lang/String; = "persist.sys.xiaopeng.SCU"

.field private static final SYSTEM_PROPERTY_SOFTWARE_ID:Ljava/lang/String; = "ro.xiaopeng.software"

.field private static final SYSTEM_PROPERTY_VEHICLE_ID:Ljava/lang/String; = "persist.sys.vehicle_id"

.field private static final SYSTEM_PROPERTY_VIN:Ljava/lang/String; = "sys.xiaopeng.vin"

.field private static final SYSTEM_PROPERTY_XPU:Ljava/lang/String; = "persist.sys.xiaopeng.XPU"

.field private static final SYSTEM_REBOOT_REASON:Ljava/lang/String; = "sys.xiaopeng.reboot_reason"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.comm_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_COMMUNICATION_URL:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_URL:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.pass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mqtt.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountUid()J
    .locals 3

    .line 66
    const-string v0, "persist.sys.account_uid"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 180
    const-string v0, "persist.sys.app_id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 1

    .line 188
    const-string v0, "persist.sys.app_secret"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoPilotImu()I
    .locals 2

    .line 378
    const-string v0, "persist.sys.xiaopeng.IMU"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoPilotImuGps()I
    .locals 2

    .line 386
    const-string v0, "persist.sys.xiaopeng.IMU_GPS"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAutoPilotXpu()I
    .locals 2

    .line 394
    const-string v0, "persist.sys.xiaopeng.XPU"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getConfigCode()I
    .locals 2

    .line 402
    const-string v0, "persist.sys.xiaopeng.configCode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDBCVersion()Ljava/lang/String;
    .locals 2

    .line 317
    const-string v0, "sys.xiaopeng.dbc_ver"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisableFaceID()Z
    .locals 2

    .line 77
    const-string v0, "persist.sys.disable_faceid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFaceRecognition()Z
    .locals 2

    .line 89
    const-string v0, "persist.sys.face_recognition"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 131
    const-string v0, "persist.sys.mcu.hardwareId"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const-string v0, "persist.sys.hardware_id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareUuid()Ljava/lang/String;
    .locals 1

    .line 142
    const-string v0, "persist.sys.hardware.uuid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHwVersion()Ljava/lang/String;
    .locals 2

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 297
    const-string v0, "ro.boot.hw_version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0

    .line 299
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    const-string v0, "ro.xiaopeng.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0    # "info":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unknown"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getIccid()Ljava/lang/String;
    .locals 2

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 106
    const-string v0, "sys.xiaopeng.iccid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const-string v0, "ril.audio.iccid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsFactoryMode()Z
    .locals 2

    .line 410
    const-string v0, "persist.xiaopeng.factorymode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMQTTID()Ljava/lang/String;
    .locals 1

    .line 277
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMQTTPASS()Ljava/lang/String;
    .locals 1

    .line 259
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMQTTURL()Ljava/lang/String;
    .locals 1

    .line 223
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMQTTUSER()Ljava/lang/String;
    .locals 1

    .line 241
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMotorType()Ljava/lang/String;
    .locals 2

    .line 310
    const-string v0, "sys.xiaopeng.motor_type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMqttCommunicationUrl()Ljava/lang/String;
    .locals 1

    .line 205
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_COMMUNICATION_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRebootReason()Ljava/lang/String;
    .locals 2

    .line 351
    const-string v0, "sys.xiaopeng.reboot_reason"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRepairModeStr()Ljava/lang/String;
    .locals 1

    .line 333
    const-string v0, "persist.sys.xiaopeng.repairmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSCU()Ljava/lang/String;
    .locals 2

    .line 370
    const-string v0, "persist.sys.xiaopeng.SCU"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftwareId()Ljava/lang/String;
    .locals 1

    .line 196
    const-string v0, "ro.xiaopeng.software"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIN()Ljava/lang/String;
    .locals 3

    .line 118
    const-string v0, "persist.sys.xiaopeng.vin"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "sys.xiaopeng.vin"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0
.end method

.method public static getVehicleId()I
    .locals 2

    .line 97
    const-string v0, "persist.sys.vehicle_id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAiosWakeUpEnable()Z
    .locals 2

    .line 146
    const-string v0, "persist.sys.aioswakeup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableNaviEngineLog()Z
    .locals 2

    .line 360
    const-string v0, "persist.sys.xiaopeng.navi_log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInCall()Z
    .locals 2

    .line 159
    const-string v0, "sys.btphone.calling"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRepairMode()Z
    .locals 2

    .line 342
    const-string v0, "on"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getRepairModeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setAccountUid(J)V
    .locals 3
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 70
    const-string v0, "persist.sys.account_uid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static setAiosWakeUpEnable(Z)V
    .locals 2
    .param p0, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 150
    const-string v0, "persist.sys.aioswakeup"

    if-eqz p0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 184
    const-string v0, "persist.sys.app_id"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static setAppSecret(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSecret"
        }
    .end annotation

    .line 192
    const-string v0, "persist.sys.app_secret"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static setDisableFaceID(Z)V
    .locals 2
    .param p0, "disable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    .line 81
    const-string v0, "persist.sys.disable_faceid"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static setFaceRecognition(Z)V
    .locals 2
    .param p0, "isON"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isON"
        }
    .end annotation

    .line 93
    const-string v0, "persist.sys.face_recognition"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static setHardwareId(Ljava/lang/String;)V
    .locals 2
    .param p0, "hardwareId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hardwareId"
        }
    .end annotation

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 173
    const-string v0, "persist.sys.mcu.hardwareId"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    const-string v0, "persist.sys.hardware_id"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void
.end method

.method public static setInCall(Z)V
    .locals 2
    .param p0, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 168
    const-string v0, "sys.btphone.calling"

    if-eqz p0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static setMQTTID(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_ID:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static setMQTTPASS(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_PASS:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static setMQTTURL(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_URL:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static setMQTTUSER(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_USER:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static setMqttCommunicationUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->SYSTEM_PROPERTY_MQTT_COMMUNICATION_URL:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static setRepairMode(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 325
    const-string v0, "persist.sys.xiaopeng.repairmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setVehicleId(I)V
    .locals 3
    .param p0, "vehicleId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleId"
        }
    .end annotation

    .line 101
    const-string v0, "persist.sys.vehicle_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
