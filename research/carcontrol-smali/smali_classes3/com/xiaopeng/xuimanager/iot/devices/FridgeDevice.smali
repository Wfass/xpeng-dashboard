.class public Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "FridgeDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "Fridge"

.field public static final ERROR_1:I = 0x1

.field public static final ERROR_2:I = 0x2

.field public static final ERROR_3:I = 0x4

.field public static final ERROR_4:I = 0x8

.field public static final ERROR_5:I = 0x10

.field public static final ERROR_6:I = 0x20

.field public static final ERROR_7:I = 0x40

.field public static final ERROR_NONE:I = 0x0

.field public static final PROP_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final PROP_ERROR_CODE_TIME_STAMP:Ljava/lang/String; = "error_code_timestamp"

.field public static final PROP_TARGET_TEMPERATURE:Ljava/lang/String; = "target_temp"

.field public static final PROP_TEMPERATURE:Ljava/lang/String; = "temperature"

.field private static final TAG:Ljava/lang/String; = "FridgeDevice"

.field public static final VAL_ERROR_CODE_DOOR_OPEN:Ljava/lang/String; = "door open"

.field public static final VAL_SWITCH_OFF:Ljava/lang/String; = "0"

.field public static final VAL_SWITCH_ON:Ljava/lang/String; = "1"

.field public static final VAL_TEMPERATURE_TARGET_HIGH:Ljava/lang/String; = "+06"

.field public static final VAL_TEMPERATURE_TARGET_LOW:Ljava/lang/String; = "-06"

.field public static final VAL_TEMPERATURE_TARGET_MIDDLE:Ljava/lang/String; = "+00"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->deviceName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->deviceId:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public static getErrorCodeTimeStamps(Ljava/lang/String;)[J
    .locals 4

    if-nez p0, :cond_0

    .line 135
    sget-object p0, Lcom/xiaopeng/xuimanager/iot/devices/FridgeDevice;->TAG:Ljava/lang/String;

    const-string v0, "getErrorCodeTimeStamps, data null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 140
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 142
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 143
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
