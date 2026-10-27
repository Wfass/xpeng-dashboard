.class public Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "ChildSeatDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "Babyfirst"

.field public static final PROP_BATTERY_PWR:Ljava/lang/String; = "battery_power"

.field public static final PROP_BELTALARM_ENABLE:Ljava/lang/String; = "belt_alarm_enable"

.field public static final PROP_BELTALARM_STATUS:Ljava/lang/String; = "belt_alarm_status"

.field public static final PROP_HEAT_ENABLE:Ljava/lang/String; = "heat_enable"

.field public static final PROP_HEAT_STATUS:Ljava/lang/String; = "heat_status"

.field public static final PROP_HEAT_UPPER:Ljava/lang/String; = "heat_protect_upper"

.field public static final PROP_ISOFIXALARM_ENABLE:Ljava/lang/String; = "isofix_alarm_enable"

.field public static final PROP_ISOFIXALARM_STATUS:Ljava/lang/String; = "isofix_alarm_status"

.field public static final PROP_LOWBATTALARM_LOWER:Ljava/lang/String; = "lowbattery_alarm_lower"

.field public static final PROP_LOWBATTALARM_STATUS:Ljava/lang/String; = "lowbattery_alarm_status"

.field public static final PROP_PRESSALARM_STATUS:Ljava/lang/String; = "pressure_alarm_status"

.field public static final PROP_SEAT_TEMP:Ljava/lang/String; = "seat_temperature"

.field public static final PROP_SUPPLY_METHOD:Ljava/lang/String; = "power_supply_method"

.field public static final PROP_TEMPALARM_ENABLE:Ljava/lang/String; = "temp_alarm_enable"

.field public static final PROP_TEMPALARM_LOWER:Ljava/lang/String; = "temp_alarm_lower"

.field public static final PROP_TEMPALARM_STATUS:Ljava/lang/String; = "temp_alarm_status"

.field public static final PROP_TEMPALARM_UPPER:Ljava/lang/String; = "temp_alarm_upper"

.field public static final PROP_VENT_ENABLE:Ljava/lang/String; = "ventilation_enable"

.field public static final PROP_VENT_STATUS:Ljava/lang/String; = "ventilation_status"

.field public static final VAL_BATTERY_SUPPLY:Ljava/lang/String; = "0"

.field public static final VAL_CIGARETTE_SUPPLY:Ljava/lang/String; = "1"

.field public static final VAL_OK:Ljava/lang/String; = "0"

.field public static final VAL_WARN:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->deviceName:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->deviceId:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSeatDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
