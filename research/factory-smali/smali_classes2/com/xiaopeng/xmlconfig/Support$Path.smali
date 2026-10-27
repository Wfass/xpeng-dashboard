.class public Lcom/xiaopeng/xmlconfig/Support$Path;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# static fields
.field public static final AMP_THERM:Ljava/lang/String; = "AMP_THERM"

.field public static final CAMERA_CHANNEL:Ljava/lang/String; = "CAMERA_CHANNEL"

.field public static final CPU_INTERNAL_THERM:Ljava/lang/String; = "CPU_INTERNAL_THERM"

.field public static final DDR_THERM:Ljava/lang/String; = "DDR_THERM"

.field public static final ETC_PWM:Ljava/lang/String; = "ETC_PWM"

.field public static final FAN_STATUS:Ljava/lang/String; = "FAN_STATUS"

.field public static final FM_RADIO_RSSI:Ljava/lang/String; = "FM_RADIO_RSSI"

.field public static final FPS_SELECTION_TOP_CAM:Ljava/lang/String; = "FPS_SELECTION_TOP_CAM"

.field public static final GPU_THERM:Ljava/lang/String; = "GPU_THERM"

.field public static final ICM_MCU_UPDATE:Ljava/lang/String; = "ICM_MCU_UPDATE"

.field public static final ICM_MCU_VERSION:Ljava/lang/String; = "ICM_MCU_VERSION"

.field public static final ICM_SCREEN_DATA:Ljava/lang/String; = "ICM_SCREEN_DATA"

.field public static final INAP562T_REMOTE_ATTR:Ljava/lang/String; = "INAP562T_REMOTE_ATTR"

.field public static final IVI_MCU_UPDATE:Ljava/lang/String; = "IVI_MCU_UPDATE"

.field public static final IVI_SCREEN_CALIBRATION:Ljava/lang/String; = "IVI_SCREEN_CALIBRATION"

.field public static final IVI_SCREEN_DATA:Ljava/lang/String; = "IVI_SCREEN_DATA"

.field public static final IVI_SCREEN_VERSION:Ljava/lang/String; = "IVI_SCREEN_VERSION"

.field public static final LCD_CLK:Ljava/lang/String; = "LCD_CLK"

.field public static final LED_CTRL:Ljava/lang/String; = "LED_CTRL"

.field public static final LOGICTREE_UPGRADE_FOLDER:Ljava/lang/String; = "LOGICTREE_UPGRADE_FOLDER"

.field public static final MEM_INFO:Ljava/lang/String; = "MEM_INFO"

.field public static final NAVI_MAP_CONFIG:Ljava/lang/String; = "NAVI_MAP_CONFIG"

.field public static final NAVI_MAP_VERSION:Ljava/lang/String; = "NAVI_MAP_VERSION"

.field public static final NAVI_UUID:Ljava/lang/String; = "NAVI_UUID"

.field public static final OLD_NAVI_MAP_VERSION:Ljava/lang/String; = "OLD_NAVI_MAP_VERSION"

.field public static final PASSENGER_MCU_UPDATE:Ljava/lang/String; = "PASSENGER_MCU_UPDATE"

.field public static final PASSENGER_MCU_VERSION:Ljava/lang/String; = "PASSENGER_MCU_VERSION"

.field public static final PASSENGER_SCREEN_DATA:Ljava/lang/String; = "PASSENGER_SCREEN_DATA"

.field public static final PATH_AUDIO_EXTERNAL_PA:Ljava/lang/String; = "PATH_AUDIO_EXTERNAL_PA"

.field public static final PATH_CHANGE_LCD_DIS_MODE:Ljava/lang/String; = "PATH_CHANGE_LCD_DIS_MODE"

.field public static final PATH_DIAGNOSIS_DB:Ljava/lang/String; = "PATH_DIAGNOSIS_DB"

.field public static final PATH_DSP_VOLUME:Ljava/lang/String; = "PATH_DSP_VOLUME"

.field public static final PATH_PCBA_SERIALNO:Ljava/lang/String; = "PATH_PCBA_SERIALNO"

.field public static final PATH_SCREEN_DIAGNOSIS:Ljava/lang/String; = "PATH_SCREEN_DIAGNOSIS"

.field public static final PHY_LINK:Ljava/lang/String; = "PHY_LINK"

.field public static final PHY_MODE:Ljava/lang/String; = "PHY_MODE"

.field public static final PHY_SQI:Ljava/lang/String; = "PHY_SQI"

.field public static final PMIC_2_THERM:Ljava/lang/String; = "PMIC_2_THERM"

.field public static final PMIC_THERM:Ljava/lang/String; = "PMIC_THERM"

.field public static final PSO_KEY:Ljava/lang/String; = "PSO_KEY"

.field public static final ROM_DISK_MODEL:Ljava/lang/String; = "ROM_DISK_MODEL"

.field public static final ROM_DISK_SIZE:Ljava/lang/String; = "ROM_DISK_SIZE"

.field public static final SCREEN_DATA:Ljava/lang/String; = "SCREEN_DATA"

.field public static final SOC_THERM:Ljava/lang/String; = "SOC_THERM"

.field public static final SWITCH_DEBUG_FILE:Ljava/lang/String; = "SWITCH_DEBUG_FILE"

.field public static final TAG:Ljava/lang/String; = "Path"

.field public static final UFS_THERM:Ljava/lang/String; = "UFS_THERM"

.field public static final USB_DEVICES:Ljava/lang/String; = "USB_DEVICES"

.field public static final WIFI_CLIENT_CERT:Ljava/lang/String; = "WIFI_CLIENT_CERT"

.field public static final WIFI_ROOT_BKS_CERT:Ljava/lang/String; = "WIFI_ROOT_BKS_CERT"

.field public static final WIFI_ROOT_CERT:Ljava/lang/String; = "WIFI_ROOT_CERT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 474
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 478
    const-string v0, "key"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
