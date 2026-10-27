.class public Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "AirBedDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "XPeng-airbed"

.field public static final ERROR_BAROMETER_READ:I = 0x20

.field public static final ERROR_BAROMETER_WRITE:I = 0x40

.field public static final ERROR_CURRENT_HIGH:I = 0x10

.field public static final ERROR_CURRENT_LOW:I = 0x8

.field public static final ERROR_PRESSURE_NOT_READY_WHEN_PUMP:I = 0x1

.field public static final ERROR_PRESSURE_NOT_READY_WHEN_UN_PUMP:I = 0x2

.field public static final ERROR_PRESSURE_READY_WORK_TIME_SHORT:I = 0x4

.field public static final PROP_BED_HARDNESS_DOWN:Ljava/lang/String; = "bedHardnessDown"

.field public static final PROP_BED_HARDNESS_LEVEL:Ljava/lang/String; = "hardnessLevel"

.field public static final PROP_BED_HARDNESS_RESTORE:Ljava/lang/String; = "hardnessRestore"

.field public static final PROP_BED_HARDNESS_SAVE:Ljava/lang/String; = "hardnessSave"

.field public static final PROP_BED_HARDNESS_SET:Ljava/lang/String; = "hardnessSet"

.field public static final PROP_BED_HARDNESS_UP:Ljava/lang/String; = "bedHardnessUp"

.field public static final PROP_BED_HARDWARE_STATUS:Ljava/lang/String; = "bedHardware"

.field public static final PROP_BED_LEAST_WORK_TIME:Ljava/lang/String; = "leastWorkTime"

.field public static final PROP_BED_PHYSICAL_PUMP:Ljava/lang/String; = "physicalPump"

.field public static final PROP_BED_PHYSICAL_STOP:Ljava/lang/String; = "physicalStop"

.field public static final PROP_BED_PHYSICAL_UN_PUMP:Ljava/lang/String; = "physicalUnPump"

.field public static final PROP_BED_PRESSURE:Ljava/lang/String; = "pressure"

.field public static final PROP_BED_PUMP:Ljava/lang/String; = "bedPump"

.field public static final PROP_BED_PUMP_STATUS:Ljava/lang/String; = "bedPumpStat"

.field public static final PROP_BED_UN_PUMP:Ljava/lang/String; = "bedUnPump"

.field public static final PROP_BED_WORK_CURRENT:Ljava/lang/String; = "workCurrent"

.field public static final PROP_BED_WORK_TIME:Ljava/lang/String; = "workedTime"

.field public static final VAL_BED_COMMAND_STATUS_DONE:Ljava/lang/String; = "03"

.field public static final VAL_BED_COMMAND_STATUS_FAIL:Ljava/lang/String; = "02"

.field public static final VAL_BED_COMMAND_STATUS_START:Ljava/lang/String; = "01"

.field public static final VAL_BED_PUMP_END:Ljava/lang/String; = "03"

.field public static final VAL_BED_PUMP_FULL:Ljava/lang/String; = "04"

.field public static final VAL_BED_PUMP_HARDNESS_DOWN:Ljava/lang/String; = "10"

.field public static final VAL_BED_PUMP_HARDNESS_UP:Ljava/lang/String; = "09"

.field public static final VAL_BED_PUMP_STARTED:Ljava/lang/String; = "02"

.field public static final VAL_BED_PUMP_WAIT:Ljava/lang/String; = "01"

.field public static final VAL_BED_UN_PUMP_END:Ljava/lang/String; = "07"

.field public static final VAL_BED_UN_PUMP_NONE:Ljava/lang/String; = "08"

.field public static final VAL_BED_UN_PUMP_STARTED:Ljava/lang/String; = "06"

.field public static final VAL_BED_UN_PUMP_WAIT:Ljava/lang/String; = "05"

.field public static final VAL_BED_WORK_STATUS_HARDNESS_ADJUST:Ljava/lang/String; = "3"

.field public static final VAL_BED_WORK_STATUS_IDLE:Ljava/lang/String; = "0"

.field public static final VAL_BED_WORK_STATUS_PUMPING:Ljava/lang/String; = "1"

.field public static final VAL_BED_WORK_STATUS_UN_PUMPING:Ljava/lang/String; = "2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;->deviceName:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;->deviceId:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
