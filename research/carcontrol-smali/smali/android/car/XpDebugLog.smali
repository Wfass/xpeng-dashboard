.class public Landroid/car/XpDebugLog;
.super Ljava/lang/Object;
.source "XpDebugLog.java"


# static fields
.field public static final CAR_DEBUG:Z

.field private static final SYS_CAR_CALLBACK_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.callback_debug"

.field private static final SYS_CAR_NORMAL_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.log_debug"

.field private static final SYS_CAR_PERF_LOG_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.perf_debug"

.field private static final SYS_CAR_PROP_CALLBACK_DEBUG_PROPERTY:Ljava/lang/String; = "sys.car.callback_debug_prop"

.field private static final SYS_CAR_SHARED_MEMORY_PERF_LOG_DEBUG_PROPERTY:Ljava/lang/String; = "persist.sys.car.shm_perf_debug"

.field private static isCallBackDebugLogEnable:Z = false

.field private static isPerfDebugLogEnable:Z = false

.field private static isSharedMemoryPerfDebugLogEnable:Z = false

.field private static final sPropDescriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Landroid/car/XpDebugLog;->sPropDescriptions:Ljava/util/Map;

    const-string/jumbo v0, "sys.car.log_debug"

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPropertyDescription(I)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-static {p0}, Landroid/car/XpDebugLog;->getStringNameAndDescriptionPair(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPropertyName(I)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0}, Landroid/car/XpDebugLog;->getStringNameAndDescriptionPair(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getStringNameAndDescriptionPair(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Landroid/car/XpDebugLog;->sPropDescriptions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;->INSTANCE:Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public static isCallBackDebugLogEnable(I)Z
    .locals 4

    .line 29
    sget-boolean v0, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sys.car.callback_debug"

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-gtz p0, :cond_2

    return v0

    :cond_2
    const-string/jumbo v2, "sys.car.callback_debug_prop"

    const-string v3, ""

    .line 35
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {p0}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    return v1
.end method

.method public static isCallBackDebugLogEnable(Ljava/lang/String;)Z
    .locals 3

    .line 43
    sget-boolean v0, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sys.car.callback_debug"

    .line 44
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/car/XpDebugLog;->isCallBackDebugLogEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string/jumbo v0, "sys.car.callback_debug_prop"

    const-string v2, ""

    .line 46
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isPerfLogEnable()Z
    .locals 2

    .line 53
    sget-boolean v0, Landroid/car/XpDebugLog;->isPerfDebugLogEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sys.car.perf_debug"

    .line 54
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/car/XpDebugLog;->isPerfDebugLogEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSharedMemoryPerfLogEnable()Z
    .locals 2

    .line 59
    sget-boolean v0, Landroid/car/XpDebugLog;->isSharedMemoryPerfDebugLogEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "persist.sys.car.shm_perf_debug"

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/car/XpDebugLog;->isSharedMemoryPerfDebugLogEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$getStringNameAndDescriptionPair$0(Ljava/lang/Integer;)Landroid/util/Pair;
    .locals 3

    .line 71
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
