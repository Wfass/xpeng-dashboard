.class public Lcom/xiaopeng/xuimanager/iot/devices/HeadgearDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "HeadgearDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "XP_Headgear"

.field public static final PROP_BATTERY_RO:Ljava/lang/String; = "propBattery"

.field public static final PROP_CAPTURE_RW:Ljava/lang/String; = "propCapture"

.field public static final PROP_CONNECT_RW:Ljava/lang/String; = "propConnect"

.field public static final PROP_CONTACT_RO:Ljava/lang/String; = "propContact"

.field public static final PROP_DATA_RO:Ljava/lang/String; = "propData"

.field public static final PROP_ORIENTATION_RO:Ljava/lang/String; = "propOrientation"

.field public static final PROP_PAIR_RO:Ljava/lang/String; = "propPair"

.field public static final SCAN_TYPE_HEADGEAR:Ljava/lang/String; = "scan_type_headgear"

.field public static final SET_CAPTURE_START:Ljava/lang/String; = "1"

.field public static final SET_CAPTURE_STOP:Ljava/lang/String; = "0"

.field public static final SET_CONNECT:Ljava/lang/String; = "1"

.field public static final SET_DISCONNECT:Ljava/lang/String; = "0"

.field public static final VAL_CAPTURE_STARTED:Ljava/lang/String; = "1"

.field public static final VAL_CAPTURE_STOPPED:Ljava/lang/String; = "0"

.field public static final VAL_CONNECTED:Ljava/lang/String; = "1"

.field public static final VAL_CONNECTING:Ljava/lang/String; = "2"

.field public static final VAL_CONTACTED:Ljava/lang/String; = "1"

.field public static final VAL_DISCONNECTED:Ljava/lang/String; = "0"

.field public static final VAL_DISCONNECTING:Ljava/lang/String; = "3"

.field public static final VAL_ERROR:Ljava/lang/String; = "-1"

.field public static final VAL_NOT_CONTACTED:Ljava/lang/String; = "0"

.field public static final VAL_ORIENTATION_DOWNWARD:Ljava/lang/String; = "0"

.field public static final VAL_ORIENTATION_UPWARD:Ljava/lang/String; = "1"

.field public static final VAL_PAIRED:Ljava/lang/String; = "1"

.field public static final VAL_UNPAIRED:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/HeadgearDevice;->deviceName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/HeadgearDevice;->deviceId:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/HeadgearDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
