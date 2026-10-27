.class public Lcom/xiaopeng/xmlconfig/Support$Feature;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static final FACTORY_RUN_WHEN_SYSTEM_BOOTUP:Ljava/lang/String; = "FACTORY_RUN_WHEN_SYSTEM_BOOTUP"

.field public static final MIC_COUNT:Ljava/lang/String; = "MIC_COUNT"

.field public static final MODEL_NAME:Ljava/lang/String; = "MODEL_NAME"

.field public static final PSO_CAR_TYPE:Ljava/lang/String; = "PSO_CAR_TYPE"

.field public static final PSO_SERVER_CAR_TYPE:Ljava/lang/String; = "PSO_SERVER_CAR_TYPE"

.field public static final SCP_UPDATE_TBOX:Ljava/lang/String; = "SCP_UPDATE_TBOX"

.field public static final SEPARATE_UPLOAD_TBOX:Ljava/lang/String; = "SEPARATE_UPLOAD_TBOX"

.field public static final SUPPORT_AUDIO_DATA_DUMP:Ljava/lang/String; = "SUPPORT_AUDIO_DATA_DUMP"

.field public static final SUPPORT_AUTO_CLEAR:Ljava/lang/String; = "SUPPORT_AUTO_CLEAR"

.field public static final SUPPORT_BLE_KEY:Ljava/lang/String; = "SUPPORT_BLE_KEY"

.field public static final SUPPORT_COLOR_BLOCK:Ljava/lang/String; = "SUPPORT_COLOR_BLOCK"

.field public static final SUPPORT_ETH:Ljava/lang/String; = "SUPPORT_ETH"

.field public static final SUPPORT_EXT_AMP:Ljava/lang/String; = "SUPPORT_EXT_AMP"

.field public static final SUPPORT_GPS_IMU_SYSST:Ljava/lang/String; = "SUPPORT_GPS_IMU_SYSST"

.field public static final SUPPORT_ICM_SCREEN:Ljava/lang/String; = "SUPPORT_ICM_SCREEN"

.field public static final SUPPORT_LCD_SELF_DIAGNOSIS:Ljava/lang/String; = "SUPPORT_LCD_SELF_DIAGNOSIS"

.field public static final SUPPORT_MULTI_BLE_KEY:Ljava/lang/String; = "SUPPORT_MULTI_BLE_KEY"

.field public static final SUPPORT_NAVI_ACTIVATE_UUID:Ljava/lang/String; = "SUPPORT_NAVI_ACTIVATE_UUID"

.field public static final SUPPORT_NFC_KEY:Ljava/lang/String; = "SUPPORT_NFC_KEY"

.field public static final SUPPORT_PCB_TEMP:Ljava/lang/String; = "SUPPORT_PCB_TEMP"

.field public static final SUPPORT_PHY_MODE:Ljava/lang/String; = "SUPPORT_PHY_MODE"

.field public static final SUPPORT_SECOND_SCREEN:Ljava/lang/String; = "SUPPORT_SECOND_SCREEN"

.field public static final SUPPORT_SPEED_LIMIT:Ljava/lang/String; = "SUPPORT_SPEED_LIMIT"

.field public static final SUPPORT_TBOX_ETH_CONNECTION:Ljava/lang/String; = "SUPPORT_TBOX_ETH_CONNECTION"

.field public static final SUPPORT_TMCU:Ljava/lang/String; = "SUPPORT_TMCU"

.field public static final SUPPORT_TOUCH_KEY:Ljava/lang/String; = "SUPPORT_TOUCH_KEY"

.field public static final SUPPORT_USB_DVR:Ljava/lang/String; = "SUPPORT_USB_DVR"

.field public static final SUPPORT_USB_ICM:Ljava/lang/String; = "SUPPORT_USB_ICM"

.field public static final SUPPORT_XPU:Ljava/lang/String; = "SUPPORT_XPU"

.field public static final TAG:Ljava/lang/String; = "Feature"

.field public static final UPDATE_ICM_BY_OTA:Ljava/lang/String; = "UPDATE_ICM_BY_OTA"

.field public static final XPU_LVDS:Ljava/lang/String; = "XPU_LVDS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 57
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 61
    const-string v0, "value"

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$200(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 65
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$300(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 81
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$600(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 77
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$500(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 73
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 69
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
