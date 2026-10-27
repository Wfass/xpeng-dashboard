.class public Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "MituWatchDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "Mitu-Watch"

.field public static final KEY_POS_DESCRIPTION:Ljava/lang/String; = "desc"

.field public static final KEY_POS_LATITUDE:Ljava/lang/String; = "lat"

.field public static final KEY_POS_LONGITUDE:Ljava/lang/String; = "long"

.field public static final KEY_POS_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_POWER_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_POWER_VALUE:Ljava/lang/String; = "power"

.field public static final PROP_ALL_STATUS:Ljava/lang/String; = "all_status"

.field public static final PROP_BIND_STATUS:Ljava/lang/String; = "bind_stat"

.field public static final PROP_GET_RESULT:Ljava/lang/String; = "get_result"

.field public static final PROP_HEAD_PICTURE:Ljava/lang/String; = "watch_head"

.field public static final PROP_NETWORK_STATUS:Ljava/lang/String; = "network_stat"

.field public static final PROP_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PROP_PHONE_NUMBER:Ljava/lang/String; = "phone"

.field public static final PROP_POSITION:Ljava/lang/String; = "position"

.field public static final PROP_POWER_PERCENT:Ljava/lang/String; = "power"

.field public static final VAL_BIND_STATUS_ACCOUNT_CHANGE:Ljava/lang/String; = "100"

.field public static final VAL_BIND_STATUS_ACCOUNT_LOG_OUT:Ljava/lang/String; = "-101"

.field public static final VAL_BIND_STATUS_BIND:Ljava/lang/String; = "1"

.field public static final VAL_BIND_STATUS_QUERY_FAIL:Ljava/lang/String; = "-100"

.field public static final VAL_BIND_STATUS_REBIND:Ljava/lang/String; = "2"

.field public static final VAL_BIND_STATUS_UNBIND:Ljava/lang/String; = "0"

.field public static final VAL_CMD_DO_QUERY:Ljava/lang/String; = "1"

.field public static final VAL_CMD_UPDATE_LOCATION:Ljava/lang/String; = "2"

.field public static final VAL_FAIL_BIND_STATUS_GET:Ljava/lang/String; = "-1"

.field public static final VAL_FAIL_GET_LOCATION:Ljava/lang/String; = "-4"

.field public static final VAL_FAIL_INFO_STATUS_GET:Ljava/lang/String; = "-2"

.field public static final VAL_FAIL_UPDATE_LOCATION:Ljava/lang/String; = "-3"

.field public static final VAL_STATUS_OFFLINE_OR_STANDBY:Ljava/lang/String; = "3"

.field public static final VAL_STATUS_POWER_OFF:Ljava/lang/String; = "0"

.field public static final VAL_STATUS_POWER_ON:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->deviceName:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->deviceId:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->deviceType:Ljava/lang/String;

    return-void
.end method
