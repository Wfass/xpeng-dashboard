.class public Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "FreezerDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "Freezer"

.field public static final PROP_CHILD_LOCK:Ljava/lang/String; = "child_lock"

.field public static final PROP_DOOR_CTRL:Ljava/lang/String; = "door_ctrl"

.field public static final PROP_HEAT_PRESERVATION:Ljava/lang/String; = "heat_preservation"

.field public static final PROP_HOLDING_TIME:Ljava/lang/String; = "holding_time"

.field public static final PROP_HOLDING_TIME_LEFT:Ljava/lang/String; = "holding_time_left"

.field public static final PROP_HT_MEMORY_CTRL:Ljava/lang/String; = "ht_memory_ctrl"

.field public static final PROP_LEFT_REMIND:Ljava/lang/String; = "left_remind"

.field public static final PROP_POWER_CTRL:Ljava/lang/String; = "power_ctrl"

.field public static final PROP_STERILIZE_CTRL:Ljava/lang/String; = "sterilize"

.field public static final PROP_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final PROP_TOP_DOOR_STATUS:Ljava/lang/String; = "top_door_status"

.field public static final PROP_WORK_MODE:Ljava/lang/String; = "work_mode"

.field private static final TAG:Ljava/lang/String; = "FreezerDevice"

.field public static final VAL_COLD:Ljava/lang/String; = "cold"

.field public static final VAL_DEC:Ljava/lang/String; = "dec"

.field public static final VAL_ERR:Ljava/lang/String; = "error"

.field public static final VAL_FREEZE:Ljava/lang/String; = "freeze"

.field public static final VAL_FRESH:Ljava/lang/String; = "fresh"

.field public static final VAL_HEAT:Ljava/lang/String; = "heat"

.field public static final VAL_INC:Ljava/lang/String; = "inc"

.field public static final VAL_OFF:Ljava/lang/String; = "off"

.field public static final VAL_ON:Ljava/lang/String; = "on"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->deviceName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->deviceId:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/FreezerDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
