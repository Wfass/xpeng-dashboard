.class public Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "ChildSafetySeatDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "SafetySeat-GlobalKids"

.field public static final PROP_HEAT_STATUS:Ljava/lang/String; = "heat_status"

.field public static final PROP_ISOFIX_STATUS:Ljava/lang/String; = "isofix_stat"

.field public static final PROP_VENT_STATUS:Ljava/lang/String; = "vent_status"

.field public static final VAL_HEAT_LEVEL_1:Ljava/lang/String; = "heat_level_1"

.field public static final VAL_HEAT_LEVEL_2:Ljava/lang/String; = "heat_level_2"

.field public static final VAL_HEAT_LEVEL_3:Ljava/lang/String; = "heat_level_3"

.field public static final VAL_HEAT_OFF:Ljava/lang/String; = "heat_off"

.field public static final VAL_ISO_LEFT_DOUBLE_CLICK:Ljava/lang/String; = "iso_left_double_click"

.field public static final VAL_ISO_LEFT_END:Ljava/lang/String; = "iso_left_end"

.field public static final VAL_ISO_LEFT_START:Ljava/lang/String; = "iso_left_start"

.field public static final VAL_ISO_RIGHT_DOUBLE_CLICK:Ljava/lang/String; = "iso_right_double_click"

.field public static final VAL_ISO_RIGHT_END:Ljava/lang/String; = "iso_right_end"

.field public static final VAL_ISO_RIGHT_START:Ljava/lang/String; = "iso_right_start"

.field public static final VAL_VENT_LEVEL_1:Ljava/lang/String; = "vent_level_1"

.field public static final VAL_VENT_LEVEL_2:Ljava/lang/String; = "vent_level_2"

.field public static final VAL_VENT_LEVEL_3:Ljava/lang/String; = "vent_level_3"

.field public static final VAL_VENT_OFF:Ljava/lang/String; = "vent_off"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->deviceName:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->deviceId:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/ChildSafetySeatDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
