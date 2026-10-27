.class public Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "BlueLightDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "XPeng-bluelight"

.field public static final PROP_BLUE_LIGHT_CLOSE:Ljava/lang/String; = "closeBlueLight"

.field public static final PROP_BLUE_LIGHT_CLOSE_BLE_BROADCAST:Ljava/lang/String; = "closeBleBroadcast"

.field public static final PROP_BLUE_LIGHT_COLOR_STATUS:Ljava/lang/String; = "blueLightColor"

.field public static final PROP_BLUE_LIGHT_DEVICE_VERSION:Ljava/lang/String; = "blueLightDeviceVersion"

.field public static final PROP_BLUE_LIGHT_MODE_DAY:Ljava/lang/String; = "blueLightDayMode"

.field public static final PROP_BLUE_LIGHT_MODE_NIGHT:Ljava/lang/String; = "blueLightNightMode"

.field public static final PROP_BLUE_LIGHT_OPEN:Ljava/lang/String; = "openBlueLight"

.field public static final PROP_BLUE_LIGHT_WORK_STATUS:Ljava/lang/String; = "blueLightWorkStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;->deviceName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;->deviceId:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/BlueLightDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
