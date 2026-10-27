.class public Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "ScanDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "ScanDevice"

.field public static final PROP_BLE_MANUFACTURER_DATA:Ljava/lang/String; = "ble_manufacturer_data"

.field public static final PROP_BLE_MANUFACTURER_ID:Ljava/lang/String; = "ble_manufacturer_id"

.field public static final PROP_BLUETOOTH_RSSI:Ljava/lang/String; = "bt_rssi"

.field public static final PROP_REAL_TYPE:Ljava/lang/String; = "real_type"

.field private static final TAG:Ljava/lang/String; = "ScanDevice"

.field public static final VAL_TYPE_BLUETOOTH_BLE:Ljava/lang/String; = "type_bluetooth_ble"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    const-string v0, "unknown_device_name"

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceName:Ljava/lang/String;

    const-string v0, "unknown_device_id"

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceId:Ljava/lang/String;

    const-string v0, "ScanDevice"

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public static isXPengBleDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ble_manufacturer_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object p0

    const-string v2, "ble_manufacturer_data"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5850

    if-ne v2, v1, :cond_2

    const-string v1, "XPengBle"

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
