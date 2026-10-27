.class public Lcom/android/car/CarLog;
.super Ljava/lang/Object;
.source "CarLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarLog$NoLog;
    }
.end annotation


# static fields
.field public static volatile CAR_DEBUG_FLAG:I = 0x0

.field private static final ENABLE_CALLBACK_LOG:I = 0x4

.field private static final ENABLE_GET_LOG:I = 0x2

.field private static final ENABLE_PERF_LOG:I = 0x8

.field private static final ENABLE_SET_LOG:I = 0x1

.field private static final MAX_TAG_LEN:I = 0x17

.field private static final SYS_CAR_CALLBACK_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.callback_debug"

.field private static final SYS_CAR_PERF_LOG_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.perf_debug"

.field private static final SYS_CAR_PROP_CALLBACK_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.callback_debug_prop"

.field private static final SYS_CAR_SHARED_MEMORY_PERF_LOG_DEBUG_PROPERTY:Ljava/lang/String; = "persist.sys.car.shm_perf_debug"

.field public static final TAG_AM:Ljava/lang/String; = "CAR.AM"

.field public static final TAG_APP_FOCUS:Ljava/lang/String; = "CAR.APP_FOCUS"

.field public static final TAG_AUDIO:Ljava/lang/String; = "CAR.AUDIO"

.field public static final TAG_CABIN:Ljava/lang/String; = "CAR.CABIN"

.field public static final TAG_CAMERA:Ljava/lang/String; = "CAR.CAMERA"

.field public static final TAG_CAN_BUS:Ljava/lang/String; = "CAR.CAN_BUS"

.field public static final TAG_CLUSTER:Ljava/lang/String; = "CAR.CLUSTER"

.field public static final TAG_CONDITION:Ljava/lang/String; = "CAR.CONDITION"

.field public static final TAG_DIAGNOSTIC:Ljava/lang/String; = "CAR.DIAGNOSTIC"

.field public static final TAG_HAL:Ljava/lang/String; = "CAR.HAL"

.field public static final TAG_HVAC:Ljava/lang/String; = "CAR.HVAC"

.field public static final TAG_INFO:Ljava/lang/String; = "CAR.INFO"

.field public static final TAG_INPUT:Ljava/lang/String; = "CAR.INPUT"

.field public static final TAG_MONITORING:Ljava/lang/String; = "CAR.MONITORING"

.field public static final TAG_NAV:Ljava/lang/String; = "CAR.NAV"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "CAR.PACKAGE"

.field public static final TAG_POWER:Ljava/lang/String; = "CAR.POWER"

.field public static final TAG_PROJECTION:Ljava/lang/String; = "CAR.PROJECTION"

.field public static final TAG_PROPERTY:Ljava/lang/String; = "CAR.PROPERTY"

.field public static final TAG_SENSOR:Ljava/lang/String; = "CAR.SENSOR"

.field public static final TAG_SERVICE:Ljava/lang/String; = "CAR.SERVICE"

.field public static final TAG_STORAGE:Ljava/lang/String; = "CAR.STORAGE"

.field public static final TAG_SYS:Ljava/lang/String; = "CAR.SYS"

.field public static final TAG_TEST:Ljava/lang/String; = "CAR.TEST"

.field public static final TAG_UPDATETIME:Ljava/lang/String; = "CAR.UPDATETIME"

.field public static final TAG_VENDOR_EXT:Ljava/lang/String; = "CAR.VENDOR_EXT"

.field public static final TAG_XPDIAG:Ljava/lang/String; = "CAR.XPDIAG"

.field public static final TAG_XPVEHICLE:Ljava/lang/String; = "CAR.XPVEHICLE"

.field private static isCarCallBackDebugLogEnable:Z

.field private static isPerfDebugLogEnable:Z

.field private static isSharedMemoryPerfDebugLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    .line 70
    sput-boolean v0, Lcom/android/car/CarLog;->isCarCallBackDebugLogEnable:Z

    .line 71
    sput-boolean v0, Lcom/android/car/CarLog;->isPerfDebugLogEnable:Z

    .line 72
    sput-boolean v0, Lcom/android/car/CarLog;->isSharedMemoryPerfDebugLogEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "tagPrefix"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 117
    sget v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method public static isCallbackLogEnable(I)Z
    .locals 5
    .param p0, "prop"    # I

    .line 83
    sget v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/car/CarLog;->isCarCallBackDebugLogEnable:Z

    if-nez v0, :cond_1

    const-string v0, "sys.car.callback_debug"

    .line 84
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarLog;->isCarCallBackDebugLogEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    return v1

    .line 86
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-gtz p0, :cond_2

    .line 87
    return v0

    .line 89
    :cond_2
    const-string v2, "sys.car.callback_debug_prop"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "debugProp":Ljava/lang/String;
    invoke-static {p0}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "propName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    nop

    :cond_4
    :goto_1
    return v0
.end method

.method public static isGetLogEnable()Z
    .locals 1

    .line 79
    sget v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPerfLogEnable()Z
    .locals 2

    .line 97
    sget v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/car/CarLog;->isPerfDebugLogEnable:Z

    if-nez v0, :cond_1

    const-string v0, "sys.car.perf_debug"

    .line 98
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarLog;->isPerfDebugLogEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 97
    :goto_1
    return v1
.end method

.method public static isSetLogEnable()Z
    .locals 2

    .line 75
    sget v0, Lcom/android/car/CarLog;->CAR_DEBUG_FLAG:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSharedMemoryPerfLogEnable()Z
    .locals 2

    .line 103
    sget-boolean v0, Lcom/android/car/CarLog;->isSharedMemoryPerfDebugLogEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.car.shm_perf_debug"

    .line 104
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarLog;->isSharedMemoryPerfDebugLogEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 103
    :goto_1
    return v1
.end method
