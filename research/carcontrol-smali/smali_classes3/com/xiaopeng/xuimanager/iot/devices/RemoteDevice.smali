.class public Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "RemoteDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "XP_Remote"

.field public static final PROP_BATTERY_PWR:Ljava/lang/String; = "battery"

.field public static final PROP_DEV_STATUS:Ljava/lang/String; = "device_status"

.field public static final PROP_LOW_BATTERY:Ljava/lang/String; = "low_battery"

.field public static final PROP_SLEEP_TIME:Ljava/lang/String; = "sleep_time"

.field public static final PROP_VERSION:Ljava/lang/String; = "version"

.field public static final SCAN_TYPE_REMOTE:Ljava/lang/String; = "scan_type_remote"

.field public static final VAL_OK:Ljava/lang/String; = "0"

.field public static final VAL_WARN:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->deviceName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->deviceId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
